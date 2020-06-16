declare_plugin("An-30M",
{
displayName     = _("An-30M"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\An-30M.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("An-30M"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("An-30M https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["an-30m"] = current_mod_path .. '/Input/An-30M',
},


Skins	=
	{
		{
			name	= _("An-30M"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("An-30M"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("An-30M"),
			type		= "An-30M",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('An-30M', ViewSettings, SnapViews)
make_flyable('An-30M', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
