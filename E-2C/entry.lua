declare_plugin("E-2C",
{
displayName     = _("E-2C"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\E-2C.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("E-2C"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("E-2C https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["e-2c hawkeye"] = current_mod_path .. '/Input/E-2C',
},


Skins	=
	{
		{
			name	= _("E-2C"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("E-2C"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("E-2C"),
			type		= "E-2C",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('E-2C', ViewSettings, SnapViews)
make_flyable('E-2C', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 6}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
