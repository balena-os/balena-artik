include resin-image.inc

# eMMC boot needs different BL1 and LOADER binaries
BL1 = "${BL1_EMMC}"
LOADER = "${LOADER_EMMC}"

# deploy the boot binaries in resin-boot (will be needed by hostapps for updating the bootloader)
RESIN_BOOT_PARTITION_FILES_append_artik53x = " \
    ${BL1_EMMC}: \
    ${LOADER_EMMC}: \
    ${BL_MON}: \
    bootloader.img: \
"

RESIN_BOOT_PARTITION_FILES_append_artik533s = " \
    ${SECUREOS}: \
"
