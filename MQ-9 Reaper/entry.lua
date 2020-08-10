declare_plugin("MQ-9 Reaper",
{
displayName     = _("MQ-9 Reaper"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\MQ-9 Reaper.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("MQ-9 Reaper"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("MQ-9 Reaper https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["MQ-9 Reaper"] = current_mod_path .. '/Input/MQ-9 Reaper',
},


Skins	=
	{
		{
			name	= _("MQ-9 Reaper"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("MQ-9 Reaper"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("MQ-9 Reaper"),
			type		= "MQ-9 Reaper",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
--mount_vfs_model_path    (current_mod_path ..  "/Shapes") --disabled
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('MQ-9 Reaper', ViewSettings, SnapViews)
make_flyable('MQ-9 Reaper', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
