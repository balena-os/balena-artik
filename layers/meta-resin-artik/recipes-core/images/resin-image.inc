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
# Samsung Artik 5
#

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_append_artik5 = " \
    zImage-${KERNEL_DEVICETREE}:/exynos3250-artik5.dtb \
"

#
# Samsung Artik 10
#

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_append_artik10 = " \
    zImage-${KERNEL_DEVICETREE}:/exynos5422-artik10.dtb \
"
