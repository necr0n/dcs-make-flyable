declare_plugin("F-15E",
{
displayName     = _("F-15E"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\F-15E.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("F-15E"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("F-15E https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["f-15e"] = current_mod_path .. '/Input/F-15E',
},


Skins	=
	{
		{
			name	= _("F-15E"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("F-15E"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("F-15E"),
			type		= "F-15E",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('F-15E', ViewSettings, SnapViews)
make_flyable('F-15E', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
