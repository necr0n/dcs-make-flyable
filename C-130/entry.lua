declare_plugin("C-130",
{
displayName     = _("C-130"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\C-130.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("C-130"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("C-130 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["c-130j"] = current_mod_path .. '/Input/C-130',
},


Skins	=
	{
		{
			name	= _("C-130"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("C-130"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("C-130"),
			type		= "C-130",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('C-130', ViewSettings, SnapViews)
make_flyable('C-130', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 17}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
