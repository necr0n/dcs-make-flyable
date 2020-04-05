declare_plugin("MiG-23MLD",
{
displayName     = _("MiG-23MLD"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\MiG-23MLD.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("MiG-23MLD"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("MiG-23MLD https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["mig-23ml"] = current_mod_path .. '/Input/MiG-23MLD',
},


Skins	=
	{
		{
			name	= _("MiG-23MLD"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("MiG-23MLD"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("MiG-23MLD"),
			type		= "MiG-23MLD",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('MiG-23MLD', ViewSettings, SnapViews)
make_flyable('MiG-23MLD', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 2}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
