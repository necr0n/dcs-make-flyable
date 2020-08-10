declare_plugin("KC135MPRS",
{
displayName     = _("KC135MPRS"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\KC135MPRS.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("KC135MPRS"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("KC135MPRS https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["KC135MPRS"] = current_mod_path .. '/Input/KC135MPRS',
},


Skins	=
	{
		{
			name	= _("KC135MPRS"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("KC135MPRS"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("KC135MPRS"),
			type		= "KC135MPRS",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('KC135MPRS', ViewSettings, SnapViews)
make_flyable('KC135MPRS', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 17}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
