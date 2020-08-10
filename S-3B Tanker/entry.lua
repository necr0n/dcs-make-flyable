declare_plugin("S-3B Tanker",
{
displayName     = _("S-3B Tanker"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\S-3B Tanker.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("S-3B Tanker"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("S-3B Tanker https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["s-3B Tanker"] = current_mod_path .. '/Input/S-3B Tanker',
},


Skins	=
	{
		{
			name	= _("S-3B Tanker"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("S-3B Tanker"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("S-3B Tanker"),
			type		= "S-3B Tanker",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('S-3B Tanker', ViewSettings, SnapViews)
make_flyable('S-3B Tanker', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
