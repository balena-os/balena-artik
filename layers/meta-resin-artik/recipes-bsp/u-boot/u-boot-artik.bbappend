UBOOT_KCONFIG_SUPPORT = "0"
inherit resin-u-boot

FILESEXTRAPATHS_append := ":${THISDIR}/patches"
SRC_URI_append = " file://artik-integrate-with-resin-configuration.patch"

# generate custom u-boot env binary data for our SD and eMMC images, for both Artik 5 and Artik 10
do_compile_append() {
    cp `find . -name "env_common.o"` copy_env_common.o
    ${OBJCOPY} -O binary --only-section=.rodata `find . -name "copy_env_common.o"`
    tr '\0' '\n' < copy_env_common.o | grep '=' | tee default_envs_emmc.txt default_envs_sd.txt > /dev/null

    # our root partition is number 2 (exit with code 1 when no replacement done so we error out when upstream modifies the u-boot env)
    sed -i '/rootpart=[0-9]\{1\}/{s//rootpart=2/;h};${x;/./{x;q0};x;q1}' default_envs_emmc.txt
    sed -i '/rootpart=[0-9]\{1\}/{s//rootpart=2/;h};${x;/./{x;q0};x;q1}' default_envs_sd.txt

    # eMMC boots will default to "run mmcboot"
    sed -i "s/bootcmd=.*/bootcmd=run mmcboot/g" default_envs_emmc.txt

    # root device should be (mmcblk)1 when booting the SD card flasher image (exit with code 1 when no replacement done so we error out when upstream modifies the u-boot env)
    sed -i '/rootdev=[0-9]\{1\}/{s//rootdev=1/;h};${x;/./{x;q0};x;q1}' default_envs_sd.txt

    #add rootdelay for SD card boot (exit code 1 when no change so we error out when upstream modifies the u-boot env)
    sed -i '/loglevel=[0-9]\{1\}/{s//& rootdelay=3/;h};${x;/./{x;q0};x;q1}' default_envs_sd.txt

    # flasher image needs u-boot env file instructions for u-boot to flash the bootloader components for future eMMC boot
    sed -i "s/bootcmd=.*/bootcmd=sdfuse format;sdfuse flash 1 fwbl1 bl1.bin;sdfuse flash 1 bl2 bl2.bin;sdfuse flash 1 bootloader u-boot.bin;sdfuse flash 1 tzsw tzsw.bin;run mmcboot/g" default_envs_sd.txt

    tools/mkenvimage -s 16384 -o params_emmc.bin default_envs_emmc.txt
    tools/mkenvimage -s 16384 -o params_sd.bin default_envs_sd.txt
}

do_deploy_append () {
    install ${S}/params_emmc.bin ${DEPLOYDIR}
    install ${S}/params_sd.bin ${DEPLOYDIR}
}
