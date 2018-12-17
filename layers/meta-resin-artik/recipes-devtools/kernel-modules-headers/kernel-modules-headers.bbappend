do_install_append () {
    # Remove precompiled AARCH64 binaries inherited from the kernel git tree.
    # These are still part of the tarball. But removed from the package
    # as we use the package infrastructure for QA checks
    rm -f "${D}/usr/src/kernel-hdrs/drivers/input/touchscreen/gsl_point_id_64"
}
