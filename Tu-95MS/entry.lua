declare_plugin("Tu-95MS",
{
displayName     = _("Tu-95MS"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Tu-95MS.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Tu-95MS"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Tu-95MS https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["tu-95mc"] = current_mod_path .. '/Input/Tu-95MS',
},


Skins	=
	{
		{
			name	= _("Tu-95MS"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Tu-95MS"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Tu-95MS"),
			type		= "Tu-95MS",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Tu-95MS', ViewSettings, SnapViews)
make_flyable('Tu-95MS', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
