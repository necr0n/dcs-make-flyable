declare_plugin("B-52H",
{
displayName     = _("B-52H"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\B-52H.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("B-52H"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("B-52H https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["b-52h"] = current_mod_path .. '/Input/B-52H',
},


Skins	=
	{
		{
			name	= _("B-52H"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("B-52H"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("B-52H"),
			type		= "B-52H",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('B-52H', ViewSettings, SnapViews)
make_flyable('B-52H', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 17}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
