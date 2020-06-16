local kneeboard_id = 100 
if    devices then
  	  kneeboard_id = devices.KNEEBOARD or 100
end
creators	[kneeboard_id] 		= {"avKneeboard",LockOn_Options.common_script_path.."KNEEBOARD/device/init.lua"}
