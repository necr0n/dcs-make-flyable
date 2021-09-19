declare_plugin("Tu-160",
{
displayName     = _("Tu-160"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Tu-160.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Tu-160"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Tu-160 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["tu-160"] = current_mod_path .. '/Input/Tu-160',
},


Skins	=
	{
		{
			name	= _("Tu-160"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Tu-160"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Tu-160"),
			type		= "Tu-160",
		},
	},	
})

net_animation ={7,} --wing sweep sync

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Tu-160', ViewSettings, SnapViews)
make_flyable('Tu-160', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
