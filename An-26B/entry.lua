declare_plugin("An-26B",
{
displayName     = _("An-26B"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\An-26B.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("An-26B"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("An-26B https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["an-26b"] = current_mod_path .. '/Input/An-26B',
},


Skins	=
	{
		{
			name	= _("An-26B"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("An-26B"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("An-26B"),
			type		= "An-26B",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('An-26B', ViewSettings, SnapViews)
make_flyable('An-26B', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
