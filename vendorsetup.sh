export TARGET_ARCH="arm64-v8a"

# Some about us
export FOX_VERSION="R12.1"
export OF_MAINTAINER=TropsPk

# Build environment stuffs
export FOX_BUILD_DEVICE="OnePlus8"
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export LC_ALL="C"
export TARGET_DEVICE_ALT="instantnoodle, instantnoodlep, kebab, Kebab, lemonades, lemonkebab, OnePlus8, OnePlus 8, OnePlus8T, OnePlus 8T, OnePlus8Pro, OnePlus9R"
export FOX_TARGET_DEVICES="instantnoodle, instantnoodlep, kebab, Kebab, lemonades, lemonkebab, OnePlus8, OnePlus 8, OnePlus8T, OnePlus 8T, OnePlus8Pro, OnePlus9R"

# Use magisk boot for patching
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1

# We have a/b partitions
export FOX_AB_DEVICE=1
export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1

# Screen specifications
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=0

# --- Stock-decryption safety ---
# This tree only targets stock OOS/ColorOS. Keep OrangeFox from offering to
# weaken or bypass what stock expects: don't offer to strip forced FBE, don't
# auto-patch an already-encrypted device, and don't offer to disable dm-verity.
export OF_KEEP_FORCED_ENCRYPTION=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_KEEP_DM_VERITY=1
export OF_FBE_METADATA_MOUNT_IGNORE=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1

# Run a process after formatting data to work-around MTP issues
export OF_RUN_POST_FORMAT_PROCESS=1

# OTA for custom ROMs
export OF_SUPPORT_ALL_PAYLOAD_OTA_UPDATES=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=0
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1

# Quick Backup list
export OF_QUICK_BACKUP_LIST="/boot;/data;/super;"

# ensure /sdcard is bind-unmounted before f2fs data repair/format (required for FBE v1)
export OF_UNBIND_SDCARD_F2FS=1

# Set default Keymaster Version
export OF_DEFAULT_KEYMASTER_VERSION=4.1

# Add some extras
export FOX_USE_ZIP_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_ASH_IS_BASH=1
export FOX_REPLACE_BUSYBOX_PS=1
export FOX_USE_BASH_SHELL=1
export OF_USE_LZMA_COMPRESSION=1
export FOX_USE_NANO_EDITOR=1
export OF_DONT_KEEP_LOG_HISTORY=1
export OF_NO_SPLASH_CHANGE=1
export FOX_INSTALLER_DISABLE_AUTOREBOOT=1
