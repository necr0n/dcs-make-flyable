declare_plugin("Su-34",
{
displayName     = _("Su-34"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Su-34.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Su-34"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Su-34 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["Su-34"] = current_mod_path .. '/Input/Su-34',
},


Skins	=
	{
		{
			name	= _("Su-34"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Su-34"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Su-34"),
			type		= "Su-34",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Su-34', ViewSettings, SnapViews)
make_flyable('Su-34', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
