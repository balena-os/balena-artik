UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_append := ":${THISDIR}/patches"
SRC_URI_append_artik530 = " file://0001-artik530-machine-specific-integration-of-resin-environment.patch"
SRC_URI_append_artik533s = " file://0001-artik533s-machine-specific-integration-of-resin-environment.patch"
