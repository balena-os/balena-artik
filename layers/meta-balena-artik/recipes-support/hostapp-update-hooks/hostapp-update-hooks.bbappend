FILESEXTRAPATHS_append := ":${THISDIR}/files"

HOSTAPP_HOOKS += "99-resin-uboot"

HOSTAPP_HOOKS_append_artik530 = " 99-flash-bootloader-artik530"

HOSTAPP_HOOKS_append_artik533s = " 99-flash-bootloader-artik533s"
