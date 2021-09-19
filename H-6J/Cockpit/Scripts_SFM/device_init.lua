mount_vfs_texture_archives("Bazar/Textures/AvionicsCommon")
dofile(LockOn_Options.script_path.."devices.lua")

attributes = {
	"support_for_cws",
}

creators = {}

creators[devices.KNEEBOARD] = {"avKneeboard",LockOn_Options.common_script_path.."KNEEBOARD/device/init.lua"}
creators[devices.BOMB_DOORS]	= {"avLuaDevice",LockOn_Options.script_path.."Extras/bomb_doors.lua"}