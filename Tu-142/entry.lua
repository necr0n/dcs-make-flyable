declare_plugin("Tu-142",
{
displayName     = _("Tu-142"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Tu-142.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Tu-142"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Tu-142 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["tu-142"] = current_mod_path .. '/Input/Tu-142',
},


Skins	=
	{
		{
			name	= _("Tu-142"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Tu-142"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Tu-142"),
			type		= "Tu-142",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Tu-142', ViewSettings, SnapViews)
make_flyable('Tu-142', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
