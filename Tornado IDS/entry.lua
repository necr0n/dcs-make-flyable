declare_plugin("Tornado IDS",
{
displayName     = _("Tornado IDS"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Tornado IDS.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Tornado IDS"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Tornado IDS https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["Tornado IDS"] = current_mod_path .. '/Input/Tornado IDS',
},


Skins	=
	{
		{
			name	= _("Tornado IDS"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Tornado IDS"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Tornado IDS"),
			type		= "Tornado IDS",
		},
	},	
})

net_animation ={7,} --wing sweep sync

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Tornado IDS', ViewSettings, SnapViews)
make_flyable('Tornado IDS', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 17}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
