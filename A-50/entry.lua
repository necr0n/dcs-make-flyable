declare_plugin("A-50",
{
displayName     = _("A-50"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\A-50.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("A-50"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("A-50 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["a-50"] = current_mod_path .. '/Input/A-50',
},


Skins	=
	{
		{
			name	= _("A-50"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("A-50"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("A-50"),
			type		= "A-50",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('A-50', ViewSettings, SnapViews)
make_flyable('A-50', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
