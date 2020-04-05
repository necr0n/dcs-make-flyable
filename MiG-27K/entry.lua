declare_plugin("MiG-27K",
{
displayName     = _("MiG-27K"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\MiG-27K.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("MiG-27K"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("MiG-27K https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["mig-27"] = current_mod_path .. '/Input/MiG-27K',
},


Skins	=
	{
		{
			name	= _("MiG-27K"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("MiG-27K"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("MiG-27K"),
			type		= "MiG-27K",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('MiG-27K', ViewSettings, SnapViews)
make_flyable('MiG-27K', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 2}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
