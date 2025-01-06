fx_version 'cerulean'
game 'gta5'

name "dynyx-gym"
description "Gym Workout Script made for DynyxRP"
author "Green"
version "1.0."

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'client/*.lua',
  
}
shared_scripts {
    'config.lua'
}
server_scripts {
	'server/*.lua',
}

dependencies {
	'qb-target',
	'mz-skills'
}
