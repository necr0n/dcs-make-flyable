declare_plugin("Tornado GR4",
{
displayName     = _("Tornado GR4"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Tornado GR4.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Tornado GR4"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Tornado GR4 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["Tornado GR4"] = current_mod_path .. '/Input/Tornado GR4',
},


Skins	=
	{
		{
			name	= _("Tornado GR4"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Tornado GR4"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Tornado GR4"),
			type		= "Tornado GR4",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Tornado GR4', ViewSettings, SnapViews)
make_flyable('Tornado GR4', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 17}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
