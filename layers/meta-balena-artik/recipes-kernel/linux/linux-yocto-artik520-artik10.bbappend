FILESEXTRAPATHS_append := ":${THISDIR}/files"

SRC_URI_append = " \
    file://0001-Revert-get-rid-of-s_files-and-files_lock.patch \
    file://aufs-builtin.patch \
    file://adapt_aufs_changes.patch \
    file://0002-aufs-support-smack_d_instantiate-which-calls-i_op-ne.patch \
    "

inherit kernel-resin
