USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/raidzero/p7510/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_BOOTLOADER_BOARD_NAME := p7510

ARCH_ARM_HAVE_TLS_REGISTER := true
NEEDS_ARM_ERRATA_754319_754320 := true
TARGET_GLOBAL_CFLAGS += -DNEEDS_ARM_ERRATA_754319_754320

BOARD_KERNEL_CMDLINE := mem=511M@0M secmem=1M@511M mem=512M@512M vmalloc=256M fota_boot=false video=tegrafb console=ttyS0,115200n8 quiet lpj=9994240 usbcore.old_scheme_first=1 lp0_vec=8192@0x1840E000 androidboot.serialno=C3290303254653E androidboot.bootloader=P7100BUKB7 androidboot.baseband=%s charging_mode=0 emmc_checksum_done=false emmc_checksum_pass=false tegraboot=sdmmc gpt androidboot.hardware=p7100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/raidzero/p7510/kernel

BOARD_HAS_INVERTED_VOLUME := true
BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
