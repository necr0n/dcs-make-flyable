declare_plugin("KC130",
{
displayName     = _("KC130"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\KC130.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("KC130"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("KC130 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["KC130"] = current_mod_path .. '/Input/KC130',
},


Skins	=
	{
		{
			name	= _("KC130"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("KC130"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("KC130"),
			type		= "KC130",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('KC130', ViewSettings, SnapViews)
make_flyable('KC130', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 17}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
