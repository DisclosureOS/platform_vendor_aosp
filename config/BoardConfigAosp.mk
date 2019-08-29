include vendor/dos/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/dos/config/BoardConfigQcom.mk
endif

include vendor/dos/config/BoardConfigSoong.mk
