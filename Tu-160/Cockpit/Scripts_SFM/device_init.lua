mount_vfs_texture_archives("Bazar/Textures/AvionicsCommon")
dofile(LockOn_Options.script_path.."devices.lua")

attributes = {
	"support_for_cws",
}

creators = {}

creators[devices.KNEEBOARD] = {"avKneeboard",LockOn_Options.common_script_path.."KNEEBOARD/device/init.lua"}
creators[devices.WING_SWEEP]	= {"avLuaDevice",LockOn_Options.script_path.."Extras/wing_sweep.lua"}

indicators = {}

indicators[#indicators + 1]	= {"ccKneeboard",LockOn_Options.common_script_path.."KNEEBOARD/indicator/init.lua",devices.KNEEBOARD,{{},{sx_l = -0.65,sz_l =  0.15,sy_l = -0.5,ry_l =  10, rz_l = 85 ,sw = 0.142 * 0.5 - 0.1,sh = 0.214 * 0.5 - 0.1},nil}}
---------------------------------------------
---------------------------------------------
--dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua")
---------------------------------------------
