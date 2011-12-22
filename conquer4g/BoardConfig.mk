USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/raidzero/conquer4g/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := conquer4g

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=SPH-D600
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/raidzero/conquer4g/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true#BOARD_HAS_INVERTED_VOLUME := true
