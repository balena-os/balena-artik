UBOOT_KCONFIG_SUPPORT = "0"
inherit resin-u-boot

FILESEXTRAPATHS_append := ":${THISDIR}/patches"
SRC_URI_append = " file://artik-integrate-with-resin-configuration.patch"

