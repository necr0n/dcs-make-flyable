declare_plugin("MQ-1A Predator",
{
displayName     = _("MQ-1A Predator"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\MQ-1A Predator.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("MQ-1A Predator"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("MQ-1A Predator https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["MQ-1A Predator"] = current_mod_path .. '/Input/MQ-1A Predator',
},


Skins	=
	{
		{
			name	= _("MQ-1A Predator"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("MQ-1A Predator"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("MQ-1A Predator"),
			type		= "MQ-1A Predator",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
--mount_vfs_model_path    (current_mod_path ..  "/Shapes") --disabled
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('RQ-1A Predator', ViewSettings, SnapViews)
make_flyable('RQ-1A Predator', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
