do_install_append() {
    # don't enable random mac address generation when scanning for WiFi (on both the artik5 and artik10)
    cat >> ${D}${sysconfdir}/NetworkManager/NetworkManager.conf <<EOF

[device]
wifi.scan-rand-mac-address=no

[keyfile]
unmanaged-devices=interface-name:p2p*
EOF
}
