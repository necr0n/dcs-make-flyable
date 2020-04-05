declare_plugin("Su-25TM",
{
displayName     = _("Su-25TM"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\Su-25TM.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("Su-25TM"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("Su-25TM https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["su-39"] = current_mod_path .. '/Input/su-25TM',
},


Skins	=
	{
		{
			name	= _("Su-25TM"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Su-25TM"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("Su-25TM"),
			type		= "Su-25TM",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
-- dofile(current_mod_path.."/Views.lua") useless, gets overridden by \DCSWorld\Config\View\Server.lua
-- make_view_settings('Su-25TM', ViewSettings, SnapViews) snapviews overridden in \DCSWorld\Config\View\SnapViewsDefault.lua
make_flyable('Su-25TM', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 3}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
