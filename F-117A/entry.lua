declare_plugin("F-117A",
{
displayName     = _("F-117A"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\F-117A.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("F-117A"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("F-117A https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["F-117A"] = current_mod_path .. '/Input/F-117A',
},


Skins	=
	{
		{
			name	= _("F-117A"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("F-117A"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("F-117A"),
			type		= "F-117A",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('F-117A', ViewSettings, SnapViews)
make_flyable('F-117A', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
