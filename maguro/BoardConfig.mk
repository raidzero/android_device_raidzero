USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/raidzero/maguro/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := maguro

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/raidzero/maguro/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_HAS_INVERTED_VOLUME := true
#BOARD_HAS_JANKY_BACKBUFFER := true

BOARD_CUSTOM_GRAPHICS           := ../../../device/raidzero/toro/recovery/graphics.c
