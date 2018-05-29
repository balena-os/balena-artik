#
# Common settings for both Artik 5 and Artik 10
#

IMAGE_FSTYPES_append = " resinos-img"

# Customize resinos-img
RESIN_IMAGE_BOOTLOADER = "virtual/u-boot-artik"
RESIN_BOOT_PARTITION_FILES_append = " \
    zImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/zImage \
"

#
# Samsung Artik 520
#

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_append_artik520 = " \
    zImage-${KERNEL_DEVICETREE}:/exynos3250-artik5.dtb \
"

#
# Samsung Artik 10
#

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_append_artik10 = " \
    zImage-${KERNEL_DEVICETREE}:/exynos5422-artik10.dtb \
"

#
# common for Artik 53x boards
#

IMAGE_CMD_resinos-img_append_artik53x () {
    dd conv=notrunc if=${DEPLOY_DIR_IMAGE}/${BL1} of=${RESIN_RAW_IMG} bs=512 seek=${BL1_OFFSET}
    dd conv=notrunc if=${DEPLOY_DIR_IMAGE}/${BL_MON} of=${RESIN_RAW_IMG} bs=512 seek=${BL_MON_OFFSET}
    dd conv=notrunc if=${DEPLOY_DIR_IMAGE}/${LOADER} of=${RESIN_RAW_IMG} bs=512 seek=${LOADER_OFFSET}
    dd conv=notrunc if=${DEPLOY_DIR_IMAGE}/bootloader.img of=${RESIN_RAW_IMG} bs=512 seek=${UBOOT_OFFSET}
}

#
# Samsung Artik 530
#

RESIN_BOOT_PARTITION_FILES_append_artik530 = " \
    zImage-s5p4418-artik530-explorer.dtb:/s5p4418-artik530-explorer.dtb \
    zImage-s5p4418-artik530-raptor-rev00.dtb:/s5p4418-artik530-raptor-rev00.dtb \
    zImage-s5p4418-artik530-raptor-rev03.dtb:/s5p4418-artik530-raptor-rev03.dtb \
"

#
# Samsung Artik 533s
#

RESIN_BOOT_PARTITION_FILES_append_artik533s = " \
    zImage-s5p4418-artik533-compy.dtb:/s5p4418-artik533-compy.dtb \
    zImage-s5p4418-artik533-raptor-rev00.dtb:/s5p4418-artik533-raptor-rev00.dtb \
"

IMAGE_CMD_resinos-img_append_artik533s () {
    dd conv=notrunc if=${DEPLOY_DIR_IMAGE}/${SECUREOS} of=${RESIN_RAW_IMG} bs=512 seek=${SECUREOS_OFFSET}
}
