declare_plugin("H-6J",
{
displayName     = _("H-6J"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\CoreMods\aircraft\ChinaAssetPack original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("H-6J"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("H-6J https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["H-6J"] = current_mod_path .. '/Input/H-6J',
},


Skins	=
	{
		{
			name	= _("H-6J"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("H-6J"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("H-6J"),
			type		= "H-6J",
		},
	},	
})

net_animation ={26,}

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('H-6J', ViewSettings, SnapViews)
make_flyable('H-6J', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
