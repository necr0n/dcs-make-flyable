declare_plugin("MiG-25PD",
{
displayName     = _("MiG-25PD"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\MiG-25PD.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("MiG-25PD"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("MiG-25PD https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["mig-25p"] = current_mod_path .. '/Input/MiG-25PD',
},


Skins	=
	{
		{
			name	= _("MiG-25PD"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("MiG-25PD"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("MiG-25PD"),
			type		= "MiG-25PD",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('MiG-25PD', ViewSettings, SnapViews)
make_flyable('MiG-25PD', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 2}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
