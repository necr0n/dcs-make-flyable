declare_plugin("B-1B",
{
displayName     = _("B-1B"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\B-1B.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("B-1B"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("B-1B https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["b-1b"] = current_mod_path .. '/Input/B-1B',
},


Skins	=
	{
		{
			name	= _("B-1B"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("B-1B"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("B-1B"),
			type		= "B-1B",
		},
	},	
})

net_animation ={7,} --wing sweep sync

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('B-1B', ViewSettings, SnapViews)
make_flyable('B-1B', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 17}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
