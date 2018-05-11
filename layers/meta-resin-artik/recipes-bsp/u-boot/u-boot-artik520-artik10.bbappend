UBOOT_KCONFIG_SUPPORT = "0"
inherit resin-u-boot

FILESEXTRAPATHS_append := ":${THISDIR}/patches"
SRC_URI_append = " file://0001-artik_common.h-Rework-the-machine-specific-integrati.patch"
