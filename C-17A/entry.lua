declare_plugin("C-17A",
{
displayName     = _("C-17A"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\C-17A.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("C-17A"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("C-17A https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["c-17"] = current_mod_path .. '/Input/C-17A',
},


Skins	=
	{
		{
			name	= _("C-17A"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("C-17A"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("C-17A"),
			type		= "C-17A",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('C-17A', ViewSettings, SnapViews)
make_flyable('C-17A', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 17}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
