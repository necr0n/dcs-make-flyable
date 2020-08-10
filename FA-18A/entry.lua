declare_plugin("F/A-18A",
{
displayName     = _("F/A-18A"),
developerName   =   "Eagle Dynamics",
-- ..\DCSWorld\Scripts\Database\planes\F/A-18A.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("F/A-18A"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("F/A-18A https://github.com/necr0n/dcs-make-flyable"),

InputProfiles =
{
    ["F/A-18A"] = current_mod_path .. '/Input/FA-18A',
},


Skins	=
	{
		{
			name	= _("F/A-18A"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("F/A-18A"),
			dir			    = "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("F/A-18A"),
			type		= "F/A-18A",
		},
	},	
})

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile(current_mod_path.."/Views.lua")
make_view_settings('F/A-18A', ViewSettings, SnapViews)
make_flyable('F/A-18A', current_mod_path..'/Cockpit/Scripts_SFM/', {nil,old = 54}, current_mod_path..'/comm.lua') --working SFM, working HUD
plugin_done()
