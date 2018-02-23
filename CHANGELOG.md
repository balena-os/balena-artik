Change log
-----------

* Update submodules to pyro branches [Florin]
* Update meta-openembedded to latest morty branch [Will]
* Update poky to latest morty branch [Will]

# v2.7.2+rev1
## (2017-10-12)

* Update the meta-resin submodule to version v2.7.2 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Include meta-rust layer [Will]
* Add meta-rust layer [Will]

# v2.3.0+rev1
## (2017-08-17)

* Update the meta-resin submodule to version v2.3.0 [Florin]

# v2.2.0+rev1
## (2017-07-30)

* Update the meta-resin submodule to version v2.2.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.0.8+rev2
## (2017-07-07)

* Update the meta-artik submodule to HEAD of morty branch [Florin]

# v2.0.8+rev1
## (2017-07-04)

* Update the meta-resin submodule to version v2.0.8 [Florin]
* Update the meta-artik submodule to HEAD of morty branch [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Update to Yocto Morty [Florin]
* Add kitra520 icon file [Florin]
* Modify kitra520.coffee instructions for booting off the provisioned eMMC [Carlo]

# v2.0.4+rev3
## (2017-05-26)

* Add kitra520.coffee file [Florin]
* Update meta-artik submodule to HEAD of jethro branch, needed for kitra520 support [Florin]

# v2.0.4+rev2
## (2017-05-23)

* Fix old references in the bcm4354-bt recipe to conf partition which now is called state partition [Florin]
* Update the resin-yocto-scripts submodule [Florin]
* Update resin-yocto-scripts to master [Will]

# v2.0.4+rev1
## (2017-05-17)

* Update the meta-resin submodule to version v2.0.4 [Florin]
* Update resin-yocto-scripts [Will]

# v2.0.0+rev1
## (2017-04-03)

* Fix OS version to be semver compliant [Andrei]

# v2.0.0.rev1
## (2017-03-31)

* Update the meta-resin submodule to version v2.0.0 [Andrei]

# v2.0.0-rc6.rev1
## (2017-03-31)

* Update the meta-resin submodule to version v2.0.0-rc6 [Andrei]

# v2.0.0-rc5.rev1
## (2017-03-26)

* Update the meta-resin submodule to version v2.0.0-rc5 [Andrei]

# v2.0.0-rc4.rev1
## (2017-03-17)

* Update the meta-resin submodule to version v2.0.0-rc4 [Florin]
* Use the kernel with the bundled initramfs [Florin]
* Update meta-resin submodule to version v2.0.0-rc3 [Florin]
* Implement resin-uboot specification 2.0 for artik5 and artik10 [Florin]

# v2.0.0-beta12.rev1
## (2017-02-27)

* Bump resin-yocto-scripts to current HEAD [Andrei]
* meta-resin: Bump to 2.0.0-beta12 [Andrei]

# v2.0.0-beta11.rev2
## (2017-02-20)

* Add entry for the disabling of random MAC address generation when scanning for a WiFi connection [Florin]
* Add backported patch for making aufs work on the smack enabled kernel of artik5 and artik10 [Florin]

# v2.0.0-beta11.rev1
## (2017-02-15)

* Update meta-resin to v2.0.0-beta.11 [Andrei]

# v2.0.0-beta10.rev1
## (2017-02-13)

* Update meta-resin to v2.0.0-beta.10 [Andrei]

# v2.0.0-beta.9
## (2017-02-08)

* Update meta-resin to v2.0-beta.9 [Andrei]

# v2.0.0-beta.8
## (2017-01-27)

* Update meta-resin to v2.0-beta.8 [Andrei]
* Add resinhup machine specific support in uboot [Andrei]
* Update resin-yocto-scripts to HEAD of the master branch [Florin]

# v2.0.0-beta.7
## (2016-12-05)

* Update meta-resin to v2.0-beta.7 [Florin]

# v2.0.0-beta.6
## (2016-12-05)

* Update meta-resin to v2.0-beta.6 [Andrei]

# v2.0.0-beta.5
## (2016-11-30)

* Update meta-resin to v2.0-beta.5 [Andrei]

# v2.0.0-beta.4
## (2016-11-24)

* Update meta-resin to v2.0-beta.4 [Florin]

# v2.0.0-beta.3
## (2016-11-07)

* Update meta-resin to v2.0-beta.3 [Andrei]
* Cleanup docker-resin-supervisor-disk of unneeded variables [Andrei]
* Update resin-yocto-scripts to fix logging in container builds

# v2.0.0-beta.1
## (2016-10-11)

* Update meta-resin to v2.0-beta.1 [Andrei]
* Add meta-filesystem as we need aufs-utils [Andrei]
* Add build support for resinos [Andrei]
* Update resin-yocto-script to include changes in our image types [Theodor]
* Replace the concept of a debug image with a development image [Theodor]
* Update meta-resin to include avahi [Florin]
* Update resin-yocto-scripts to include kernel headers handling as gzip [Florin]
* Add modified aufs patches here because of modified kernel tree which does not accept pristine aufs patches [Florin]

# v1.16.1
## (2016-10-01)

* Update meta-resin to include supervisor v2.5.0 [Pablo]

# v1.16.0
## (2016-09-27)

* Update meta-resin to v1.16 [Florin]

# v1.15.0
## (2016-09-24)

* Update meta-resin to v1.15 [Florin]

# v1.14.0
## (2016-09-23)

* Update meta-resin to v1.14 [Florin]

# v1.13.0
## (2016-09-23)

* Update meta-resin to v1.13 [Florin]

# v1.12.0
## (2016-09-21)

* Update meta-resin to v1.12 [Florin]
* Update resin-yocto-scripts to include resinhup upload to dockerhub [Florin]
* Update meta-resin [Florin]
* Change .coffee to announce partition 1 now holds config.json and also introduce versioning (v1) [Florin]

# v1.11.0
## (2016-08-31)

* Update meta-resin to v1.11 [Florin]

# v1.10.0
## (2016-08-24)

* Update meta-resin to v1.10 [Florin]

# v1.9.0
## (2016-08-24)

* Update meta-resin to v1.9 [Florin]
* Update resin-yocto-scripts for including kernel modules headers deploy [Florin]
* Update yocto-resin-scripts for host nodejs detection improvements [Florin]

# v1.8.0
## (2016-08-02)

* Bump meta-resin to v1.8 [Andrei]
* Update meta-artik to include defconfig changes and remove obsolete kernel-modules-headers patch [Florin]
* Bump resin-device-types to include partial manifest support [Andrei]
* No more debug images in staging

# v1.7.0
## (2016-07-14)

* Update meta-resin to v1.7

# v1.6.0
## (2016-07-06)

* Update meta-resin to v1.6 [Florin]

# v1.5.0
## (2016-07-04)

* Update meta-resin to v1.5 [Florin]

# v1.5.0rc5
## (2016-07-01)

* Update meta-artik submodule for asix autoload fix [Florin]

# v1.5.0rc4
## (2016-06-29)

* Update meta-resin to include supervisor update to v1.11.6 [Florin]

# v1.5.0rc3
## (2016-06-29)

* Update meta-resin to include openvpn-resin.service refactoring [Florin]

# v1.5.0rc2
## (2016-06-28)

* Update meta-resin to include docker key.json fix [Florin]
* Update meta-resin to include flasher fixes [Florin]

# v1.4.0
## (2016-06-27)

* Update meta-resin to v1.4 [Florin]
* Update meta-resin to allow let error out [Florin]
* Update meta-resin to allow patching of kernel-modules-headers [Florin]
* Bump meta-resin to fix various issues [Andrei]
* Fix a small syntax error in meta-resin [Andrei]
* Fix automation fix for debug image [Andrei]
* Replace RESIN_STAGING_BUILD by DEBUG_IMAGE [Andrei]

# v1.3.0
## (2016-06-24)

* Update meta-resin to v1.3 [Florin]
* Update meta-resin to include kernel modules compress support [Andrei]
* Replace SUPERVISOR_TAG by TARGET_TAG [Andrei]
* Custom docker images in connectable builds [Andrei]
* Bump meta-resin to include connectable builds [Andrei]
* Add support for optional supervisor image [Andrei]
* Update meta-resin to v1.2 [Andrei]
* Bump meta-resin to HEAD [Andrei]
* Bump yocto-resin-scripts to bring in improvements for in-docker builds [Andrei]
* Update resin-yocto-scripts to current HEAD to use in docker yocto builds for jenkins [Andrei]
* Configure builds with RM_OLD_IMAGE [Theodor]
* Bump meta-artik to include latest u-boot and kernel (kernel version 3.10.93) from Samsung [Florin]
* Bump meta-resin to include switch from rce to docker [Andrei]
* Update meta-artik submodule for having bluetooth support and adapt it for the Resin platform [Florin]

# v1.1.4
## (2016-04-16)

# v1.1.3
## (2016-04-14)

* Add oe-meta-go to submodules and BBLAYERS [Andrei]
* Switch usb3 to host mode on system boot [Florin]
