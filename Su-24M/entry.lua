declare_plugin("Su-24M",
{
displayName     = _("Su-24M"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Su-24M.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Su-24M"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Su-24M https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["su-24m"] = current_mod_path .. '/Input/Su-24M',
},


Skins	=
	{
		{
			name	= _("Su-24M"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Su-24M"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Su-24M"),
			type		= "Su-24M",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('Su-24M', ViewSettings, SnapViews)
make_flyable('Su-24M', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
