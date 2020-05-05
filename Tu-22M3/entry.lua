declare_plugin("Tu-22M3",
{
displayName     = _("Tu-22M3"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Tu-22M3.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Tu-22M3"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Tu-22M3 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["tu-22m3"] = current_mod_path .. '/Input/Tu-22M3',
},


Skins	=
	{
		{
			name	= _("Tu-22M3"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Tu-22M3"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Tu-22M3"),
			type		= "Tu-22M3",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Tu-22M3', ViewSettings, SnapViews)
make_flyable('Tu-22M3', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
