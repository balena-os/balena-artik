deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

BOARD_SHUTDOWN_ARTIK = 'The device has performed a shutdown. Press the power switch PWR SW to the off position.'
SET_JUMPER_SD = 'Set SW2 dip switch to position 1:on, 2:on.  Also, make sure jumpers J20 and J33 are set towards the edge of the board.'
SET_JUMPER_EMMC = 'Remove the Artik520 module from the evaluation carrier and plug it on the Kitra520 carrier.'
BOARD_POWERON_ARTIK = 'Press and hold the power button PB1 - PB2 until you hear a double buzz sound.'

postProvisioningInstructions = [
	BOARD_SHUTDOWN_ARTIK
	instructions.REMOVE_INSTALL_MEDIA
	SET_JUMPER_EMMC
	BOARD_POWERON_ARTIK
]

module.exports =
	version: 1
	slug: 'kitra520'
	aliases: [ 'kitra520' ]
	name: 'RushUp Kitra 520'
	arch: 'armv7hf'
	state: 'experimental'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
		SET_JUMPER_SD
		BOARD_POWERON_ARTIK
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-RushUp-Kitra520.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-RushUp-Kitra520.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-RushUp-Kitra520.md#on-mac-and-linux'

	supportsBlink: false

	yocto:
		machine: 'kitra520'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-jethro'
		deployArtifact: 'resin-image-flasher-kitra520.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
