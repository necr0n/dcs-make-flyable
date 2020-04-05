declare_plugin("Su-24MR",
{
displayName     = _("Su-24MR"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Su-24MR.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Su-24MR"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Su-24MR https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["su-24mr"] = current_mod_path .. '/Input/Su-24MR',
},


Skins	=
	{
		{
			name	= _("Su-24MR"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Su-24MR"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Su-24MR"),
			type		= "Su-24MR",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Su-24MR', ViewSettings, SnapViews)
make_flyable('Su-24MR', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
