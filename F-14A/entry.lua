declare_plugin("F-14A",
{
displayName     = _("F-14A"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\F-14A.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("F-14A"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("F-14A https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["f-14a"] = current_mod_path .. '/Input/F-14A',
},


Skins	=
	{
		{
			name	= _("F-14A"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("F-14A"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("F-14A"),
			type		= "F-14A",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('F-14A', ViewSettings, SnapViews)
make_flyable('F-14A', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 4}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
