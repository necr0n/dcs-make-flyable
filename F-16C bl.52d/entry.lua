declare_plugin("F-16C bl.52d",
{
displayName     = _("F-16C bl.52d"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\F-16C bl.52d.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("F-16C bl.52d"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("F-16C bl.52d https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["F-16C bl.52d"] = current_mod_path .. '/Input/F-16C bl.52d',
},


Skins	=
	{
		{
			name	= _("F-16C bl.52d"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("F-16C bl.52d"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("F-16C bl.52d"),
			type		= "F-16C bl.52d",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('F-16C bl.52d', ViewSettings, SnapViews)
make_flyable('F-16C bl.52d', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
