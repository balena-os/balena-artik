deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

BOARD_SHUTDOWN_ARTIK = 'The device is performing a shutdown. Wait 30 seconds or until the red LED 402 is off and switch SW700 to the off position.'
SET_JUMPER_SD = 'Set SW402 dip switch to position 1:off, 2:off, 3:off, 4:on.'
SET_JUMPER_EMMC = 'Set SW402 dip switch to position 1:off, 2:off, 3:off, 4:off.'
BOARD_POWERON_ARTIK = 'Switch SW700 to the on position. Press and hold for 1 second the SW400 POWER push button.'

postProvisioningInstructions = [
	BOARD_SHUTDOWN_ARTIK
	instructions.REMOVE_INSTALL_MEDIA
	SET_JUMPER_EMMC
	BOARD_POWERON_ARTIK
]

module.exports =
	version: 1
	slug: 'artik533s'
	aliases: [ 'artik533s' ]
	name: 'Samsung Artik 530s 1G'
	arch: 'armv7hf'
	state: 'released'

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
		windows: 'https://docs.resin.io/artik533s/nodejs/getting-started/#adding-your-first-device'
		osx: 'https://docs.resin.io/artik533s/nodejs/getting-started/#adding-your-first-device'
		linux: 'https://docs.resin.io/artik533s/nodejs/getting-started/#adding-your-first-device'

	supportsBlink: false

	yocto:
		machine: 'artik533s'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-pyro'
		deployArtifact: 'resin-image-flasher-artik533s.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
