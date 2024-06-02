/*
 * Copyright (c) 2018 Nordic Semiconductor ASA
 *
 * SPDX-License-Identifier: LicenseRef-Nordic-5-Clause
 */

#include "hw_codec.h"

#include <zephyr/kernel.h>
#include <stdlib.h>
#include <stdint.h>
#include <ctype.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/device.h>
#include <zephyr/shell/shell.h>

#include "macros_common.h"
#include "cs47l63.h"
#include "cs47l63_spec.h"
#include "cs47l63_reg_conf.h"
#include "cs47l63_comm.h"

#include <zephyr/logging/log.h>
LOG_MODULE_REGISTER(hw_codec, CONFIG_MODULE_HW_CODEC_LOG_LEVEL);

#define VOLUME_ADJUST_STEP_DB 3
#define HW_CODEC_SELECT_DELAY_MS 2
#define BASE_10 10

static cs47l63_t cs47l63_driver;
static const struct gpio_dt_spec hw_codec_sel =
	GPIO_DT_SPEC_GET(DT_NODELABEL(hw_codec_sel_out), gpios);

/**@brief Write to multiple registers in CS47L63
 */
static int cs47l63_comm_reg_conf_write(const uint32_t config[][2], uint32_t num_of_regs)
{
	return 0;
}

/**@brief Select the on-board HW codec
 */
static int hw_codec_on_board_set(void)
{
	int ret;

	if (!device_is_ready(hw_codec_sel.port)) {
		return -ENXIO;
	}

	ret = gpio_pin_configure_dt(&hw_codec_sel, GPIO_OUTPUT_LOW);
	if (ret) {
		return ret;
	}

	/* Allow for switches to flip when selecting on board hw_codec */
	k_msleep(HW_CODEC_SELECT_DELAY_MS);

	return 0;
}

/**@brief Select the external HW codec
 */
static int hw_codec_external_set(void)
{
	int ret;

	if (!device_is_ready(hw_codec_sel.port)) {
		return -ENXIO;
	}

	ret = gpio_pin_configure_dt(&hw_codec_sel, GPIO_OUTPUT_HIGH);
	if (ret) {
		return ret;
	}

	/* Allow for switches to flip when selecting on board hw_codec */
	k_msleep(HW_CODEC_SELECT_DELAY_MS);

	return 0;
}

int hw_codec_volume_set(uint8_t set_val)
{
	return 0;
}

int hw_codec_volume_adjust(int8_t adjustment_db)
{
	return 0;
}

int hw_codec_volume_decrease(void)
{
	return 0;
}

int hw_codec_volume_increase(void)
{
	return 0;
}

int hw_codec_volume_mute(void)
{
	return 0;
}

int hw_codec_volume_unmute(void)
{
	return 0;
}

int hw_codec_default_conf_enable(void)
{
	return 0;
}

int hw_codec_soft_reset(void)
{
	return 0;
}

int hw_codec_init(void)
{
	int ret;

	/* Set to external codec */
	ret = hw_codec_external_set();
	if (ret) {
		return ret;
	}
/*
	ret = cs47l63_comm_init(&cs47l63_driver);
	if (ret) {
		return ret;
	}
*/
	/* Run a soft reset on start to make sure all registers are default values */
/*	ret = cs47l63_comm_reg_conf_write(soft_reset, ARRAY_SIZE(soft_reset));
	if (ret) {
		return ret;
	}
	cs47l63_driver.state = CS47L63_STATE_STANDBY;
*/
	return 0;
}

static int cmd_input(const struct shell *shell, size_t argc, char **argv)
{
	int ret;
	uint8_t idx;

	enum hw_codec_input {
		LINE_IN,
		PDM_MIC,
		NUM_INPUTS,
	};

	if (argc != 2) {
		shell_error(shell, "Only one argument required, provided: %d", argc);
		return -EINVAL;
	}

	if ((CONFIG_AUDIO_DEV == GATEWAY) && IS_ENABLED(CONFIG_AUDIO_SOURCE_USB)) {
		shell_error(shell, "Can't select PDM mic if audio source is USB");
		return -EINVAL;
	}

	if ((CONFIG_AUDIO_DEV == HEADSET) && !IS_ENABLED(CONFIG_STREAM_BIDIRECTIONAL)) {
		shell_error(shell, "Can't select input if headset is not in bidirectional stream");
		return -EINVAL;
	}

	if (!isdigit((int)argv[1][0])) {
		shell_error(shell, "Supplied argument is not numeric");
		return -EINVAL;
	}

	idx = strtoul(argv[1], NULL, BASE_10);

	switch (idx) {
	case LINE_IN: {
		if (CONFIG_AUDIO_DEV == HEADSET) {
			ret = cs47l63_comm_reg_conf_write(line_in_enable,
							  ARRAY_SIZE(line_in_enable));
			if (ret) {
				shell_error(shell, "Failed to enable LINE-IN");
				return ret;
			}
		}

		ret = cs47l63_write_reg(&cs47l63_driver, CS47L63_ASP1TX1_INPUT1, 0x800012);
		if (ret) {
			shell_error(shell, "Failed to route LINE-IN to I2S");
			return ret;
		}

		ret = cs47l63_write_reg(&cs47l63_driver, CS47L63_ASP1TX2_INPUT1, 0x800013);
		if (ret) {
			shell_error(shell, "Failed to route LINE-IN to I2S");
			return ret;
		}

		shell_print(shell, "Selected LINE-IN as input");
		break;
	}
	case PDM_MIC: {
		if (CONFIG_AUDIO_DEV == GATEWAY) {
			ret = cs47l63_comm_reg_conf_write(pdm_mic_enable_configure,
							  ARRAY_SIZE(pdm_mic_enable_configure));
			if (ret) {
				shell_error(shell, "Failed to enable PDM mic");
				return ret;
			}
		}

		ret = cs47l63_write_reg(&cs47l63_driver, CS47L63_ASP1TX1_INPUT1, 0x800010);
		if (ret) {
			shell_error(shell, "Failed to route PDM mic to I2S");
			return ret;
		}

		ret = cs47l63_write_reg(&cs47l63_driver, CS47L63_ASP1TX2_INPUT1, 0x800011);
		if (ret) {
			shell_error(shell, "Failed to route PDM mic to I2S");
			return ret;
		}

		shell_print(shell, "Selected PDM mic as input");
		break;
	}
	default:
		shell_error(shell, "Invalid input");
		return -EINVAL;
	}

	return 0;
}

SHELL_STATIC_SUBCMD_SET_CREATE(hw_codec_cmd,
			       SHELL_COND_CMD(CONFIG_SHELL, input, NULL,
					      " Select input\n\t0: LINE_IN\n\t\t1: PDM_MIC",
					      cmd_input),
			       SHELL_SUBCMD_SET_END);

SHELL_CMD_REGISTER(hw_codec, &hw_codec_cmd, "Change settings on HW codec", NULL);
