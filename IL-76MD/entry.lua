declare_plugin("IL-76MD",
{
displayName     = _("IL-76MD"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\IL-76MD.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("IL-76MD"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("IL-76MD https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["il-76md"] = current_mod_path .. '/Input/IL-76MD',
},


Skins	=
	{
		{
			name	= _("IL-76MD"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("IL-76MD"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("IL-76MD"),
			type		= "IL-76MD",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('IL-76MD', ViewSettings, SnapViews)
make_flyable('IL-76MD', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
