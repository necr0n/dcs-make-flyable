local kneeboard_id = 100 
if    devices then
  	  kneeboard_id = devices.KNEEBOARD or 100
end
creators	[kneeboard_id] 		= {"avKneeboard",LockOn_Options.common_script_path.."KNEEBOARD/device/init.lua"}
indicators	[#indicators + 1]   = {"ccKneeboard",LockOn_Options.common_script_path.."KNEEBOARD/indicator/init.lua",kneeboard_id,
	{{},
	--[[
	all corrections are incremental to default values or calculated on connector base
	default for example : sw incremental to half width where default width is 0.1
	--]]
	{sx_l = -0.65,sz_l =  0.15,sy_l = -0.5,ry_l =  10, rz_l = 85 ,sw = 0.142 * 0.5 - 0.1,sh = 0.214 * 0.5 - 0.1},4}
}