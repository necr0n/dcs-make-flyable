declare_plugin("Yak-40",
{
displayName     = _("Yak-40"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Yak-40.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Yak-40"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Yak-40 https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["yak-40"] = current_mod_path .. '/Input/Yak-40',
},


Skins	=
	{
		{
			name	= _("Yak-40"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Yak-40"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Yak-40"),
			type		= "Yak-40",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Yak-40', ViewSettings, SnapViews)
make_flyable('Yak-40', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
