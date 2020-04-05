declare_plugin("MiG-25RBT",
{
displayName     = _("MiG-25RBT"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\MiG-25RBT.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("MiG-25RBT"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("MiG-25RBT https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["mig-25rbv"] = current_mod_path .. '/Input/MiG-25RBT',
},


Skins	=
	{
		{
			name	= _("MiG-25RBT"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("MiG-25RBT"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("MiG-25RBT"),
			type		= "MiG-25RBT",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('MiG-25RBT', ViewSettings, SnapViews)
make_flyable('MiG-25RBT', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 2}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
