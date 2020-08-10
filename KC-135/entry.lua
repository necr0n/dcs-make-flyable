declare_plugin("KC-135",
{
displayName     = _("KC-135"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\KC-135.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("KC-135"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("KC-135 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["KC-135"] = current_mod_path .. '/Input/KC-135',
},


Skins	=
	{
		{
			name	= _("KC-135"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("KC-135"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("KC-135"),
			type		= "KC-135",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('KC-135', ViewSettings, SnapViews)
make_flyable('KC-135', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
