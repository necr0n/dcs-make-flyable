declare_plugin("IL-78M",
{
displayName     = _("IL-78M"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\IL-78M.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("IL-78M"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("IL-78M https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["il-78m"] = current_mod_path .. '/Input/IL-78M',
},


Skins	=
	{
		{
			name	= _("IL-78M"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("IL-78M"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("IL-78M"),
			type		= "IL-78M",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('IL-78M', ViewSettings, SnapViews)
make_flyable('IL-78M', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
