declare_plugin("MiG-31",
{
displayName     = _("MiG-31"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\MiG-31.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("MiG-31"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("MiG-31 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["mig-31"] = current_mod_path .. '/Input/MiG-31',
},


Skins	=
	{
		{
			name	= _("MiG-31"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("MiG-31"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("MiG-31"),
			type		= "MiG-31",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('MiG-31', ViewSettings, SnapViews)
make_flyable('MiG-31', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 2}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
