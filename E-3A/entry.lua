declare_plugin("E-3A",
{
displayName     = _("E-3A"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\E-3A.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("E-3A"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("E-3A https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["e-3a"] = current_mod_path .. '/Input/E-3A',
},


Skins	=
	{
		{
			name	= _("E-3A"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("E-3A"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("E-3A"),
			type		= "E-3A",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('E-3A', ViewSettings, SnapViews)
make_flyable('E-3A', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 6}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
