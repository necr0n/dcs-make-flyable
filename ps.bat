<# :: Main function
@echo off
setlocal
echo Starting installation of DCS flyable mods
echo https://github.com/necr0n/dcs-make-flyable
echo;
CHOICE /C YC /M "Press Y to Start, C to cancel installation."
if %ERRORLEVEL% EQU 2 goto :END
set "_DCS=not found"
set "_errormsg=Couldn't copy files from DCSWorld dir. Ensure FC3 is installed, restart the installer and choose DCSWorld directory manually."
::Getting DCS installation path from the registry
for /f "usebackq delims=" %%I in (`powershell -command Get-ItemPropertyValue 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 223750' InstallLocation`) do set "_DCS=%%I"
echo DCS location looks like %_DCS%
CHOICE /C YN /M "Is this correct? Press Y for Yes, N for No"
:: If registry value is wrong, call f0 to select directory manually
if %ERRORLEVEL% EQU 2 for /f "delims=" %%I in ('powershell -noprofile "iex (${%~f0} | out-string)"') do set "_DCS=%%I"
:: Starting planes configuration
echo;
:: A-50
echo;
echo Starting A-50 configuration
echo;
echo High fidelity model, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  A-50\Input\A-50\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  A-50\Input\A-50\keyboard || echo %_errormsg%
echo;
echo;
:: An-26B
echo;
echo Starting An-26B configuration
echo;
echo High fidelity model, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  An-26B\Input\An-26B\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  An-26B\Input\An-26B\keyboard || echo %_errormsg%
echo;
echo;
:: An-30M
echo;
echo Starting An-30M configuration
echo;
echo High fidelity model, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  An-30M\Input\An-30M\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  An-30M\Input\An-30M\keyboard || echo %_errormsg%
echo;
echo;
:: Yak-40
echo;
echo Starting Yak-40 configuration
echo;
echo High fidelity model, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Yak-40\Input\Yak-40\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Yak-40\Input\Yak-40\keyboard || echo %_errormsg%
echo;
echo;
:: Su-17M4
echo;
echo Starting Su-17M4 configuration
echo;
echo Low fidelity model, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Su-17M4\Input\Su-17M4\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Su-17M4\Input\Su-17M4\keyboard || echo %_errormsg%
echo;
echo;
:: Su-24M
echo;
echo Starting Su-24M configuration
echo;
echo High fidelity model, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Su-24M\Input\Su-24M\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Su-24M\Input\Su-24M\keyboard || echo %_errormsg%
echo;
:: Su-24MR
echo;
echo Starting Su-24MR configuration
echo;
echo High fidelity model, as of now only with Su-25T avionics. Reconnaisance plane, has no AG weapons.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Su-24MR\Input\Su-24MR\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Su-24MR\Input\Su-24MR\keyboard || echo %_errormsg%
echo;
echo;
:: Su-30
echo;
echo Starting Su-30 configuration
echo;
echo Low fidelity model, as of now only with Su-27 avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-27\joystick\*.lua"  Su-30\Input\Su-30\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-27\keyboard\*.lua"  Su-30\Input\Su-30\keyboard || echo %_errormsg%
echo;
:: Tu-22M3
echo;
echo Starting Tu-22M3 configuration
echo;
echo High fidelity model, as of now only with Su-25T avionics. Will add Viggen avionics when I have it.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Tu-22M3\Input\Tu-22M3\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Tu-22M3\Input\Tu-22M3\keyboard || echo %_errormsg%
echo;
:: Tu-95MS
echo;
echo Starting Tu-95MS configuration. 2 engines out of 4 are used due to absense of an avionics with >2 engines.
echo;
echo Low fidelity model, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Tu-95MS\Input\Tu-95MS\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Tu-95MS\Input\Tu-95MS\keyboard || echo %_errormsg%
echo;
echo;
:: Tu-142
echo;
echo Starting Tu-142 configuration
echo;
echo Low fidelity model, as of now only with Su-25T avionics. 2 engines out of 4 are used due to absense of an avionics with >2 engines.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Tu-142\Input\Tu-142\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Tu-142\Input\Tu-142\keyboard || echo %_errormsg%
echo;
echo;
:: Tu-160
echo;
echo Starting Tu-160 configuration
echo;
echo Low fidelity model, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Tu-160\Input\Tu-160\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Tu-160\Input\Tu-160\keyboard || echo %_errormsg%
echo;
echo;
:: IL-76MD
echo;
echo Starting IL-76MD configuration
echo;
echo High fidelity model, transport, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  IL-76MD\Input\IL-76MD\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  IL-76MD\Input\IL-76MD\keyboard || echo %_errormsg%
echo;
echo;
:: IL-78M
echo;
echo Starting IL-78M configuration
echo;
echo High fidelity model, transport, as of now only with Su-25T avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  IL-78M\Input\IL-78M\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  IL-78M\Input\IL-78M\keyboard || echo %_errormsg%
echo;
:: Su-25TM
echo;
echo Starting Su-25TM configuration
echo;
echo Choose between default Su-25T or Su-27 avionics (recommended).^
 With Su-25T avionics you basically get the same default Su-25T.
echo Su-27 avionics allows to use KH-31P and R-77 missile with Kopyo radar pod. However, laser designator/TV is no longer available.^
 In order to launch KH-31P use LAlt+W (Launch override) when in proximity to enemy ship.^
 KH-31A/KH35 anti ship missiles do not work as there's no air-to-ground radar in default Su-25T or any FC3 planes.
echo;
CHOICE /C 12 /M "Press 1 to choose Su-27 avionics, 2 for default Su-25T avionics"
 if %ERRORLEVEL% EQU 1 (
   copy /V /L /Y "make_flyable_base\Su-25TM\Su-25TM_Su27avionics.lua" Su-25TM\entry.lua
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-27\joystick\*.lua"  Su-25TM\Input\su-25TM\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-27\keyboard\*.lua"  Su-25TM\Input\su-25TM\keyboard || echo %_errormsg%
   )
 if %ERRORLEVEL% EQU 2 (
   copy /V /L /Y "make_flyable_base\Su-25TM\Su-25TM_Su25Tavionics.lua" Su-25TM\entry.lua
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Su-25TM\Input\su-25TM\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Su-25TM\Input\su-25TM\keyboard || echo %_errormsg%
   )
echo;
:: Su-34
echo;
echo Starting Su-34 configuration
echo;
echo Choose between default Su-25T(recommended) or Su-27 avionics.^
 With Su-25T avionics you get the possibility to use powerful laser-guided bombs KAB500L, KAB1500L, KAB-1500LG-Pr.^
 KAB1500kr, KAB500s and some other bombs don't work even with LA override.
echo;
echo Su-33 avionics allows to use KH-31P, R-27 and R-77 series missiles. However, laser designator/TV is no longer available.^
 In order to launch KH-31P use LAlt+W (Launch override) when in proximity to enemy ship.^
 KH-31A/KH-35/KH-59 anti ship missiles do not work as there's no air-to-ground radar in default Su-25T or any FC3 planes.
echo;
CHOICE /C 12 /M "Press 1 to choose Su-25T avionics, 2 for Su-33 avionics"
 if %ERRORLEVEL% EQU 1 (
   copy /V /L /Y "make_flyable_base\Su-34\Su-34_Su25Tavionics.lua" Su-34\entry.lua
   copy /V /L /Y "make_flyable_base\Su-34\Su-34_Su25Tcockpit.lods" Su-34\Shapes\Cockpit_Su-34.lods
   copy /V /L /Y "make_flyable_base\Su-34\Su-34_Su25Tmirrors.lua" Su-34\Liveries\Cockpit_Su-34\default\description.lua
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\joystick\*.lua"  Su-34\Input\Su-34\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Su-25T\Input\su-25T\keyboard\*.lua"  Su-34\Input\Su-34\keyboard || echo %_errormsg%
   )
 if %ERRORLEVEL% EQU 2 (
   copy /V /L /Y "make_flyable_base\Su-34\Su-34_Su33avionics.lua" Su-34\entry.lua
   copy /V /L /Y "make_flyable_base\Su-34\Su-34_Su33cockpit.lods" Su-34\Shapes\Cockpit_Su-34.lods
   copy /V /L /Y "make_flyable_base\Su-34\Su-34_Su33mirrors.lua" Su-34\Liveries\Cockpit_Su-34\default\description.lua
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-25T\joystick\*.lua"  Su-25TM\Input\su-25TM\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-25T\keyboard\*.lua"  Su-25TM\Input\su-25TM\keyboard || echo %_errormsg%
   )
echo;
:: MiG-31
echo;
echo Starting MiG-31 configuration
echo;
echo Choose between default MiG-29 or Su-33 cockpit/avionics.^
 With MiG-29 avionics you basically get more authentic MiG-29 cockpit.
echo However, Mig-29 radar is really poor for MiG-31, so Su-33 avionics helps a little.^
 In order to launch R-33/R40 use LAlt+W (Launch override) after getting normal radar lock.
echo;
CHOICE /C 12 /M "Press 1 to choose MiG-29 avionics, 2 for Su-33 avionics"
 if %ERRORLEVEL% EQU 1 (
   copy /V /L /Y "make_flyable_base\MiG-31\MiG-31_MiG29avionics.lua" MiG-31\entry.lua
   copy /V /L /Y "make_flyable_base\MiG-31\MiG-31_MiG29cockpit.lods" MiG-31\Shapes\Cockpit_MiG-31.lods
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\joystick\*.lua"  MiG-31\Input\MiG-31\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\keyboard\*.lua"  MiG-31\Input\MiG-31\keyboard || echo %_errormsg%
   )
 if %ERRORLEVEL% EQU 2 (
   copy /V /L /Y "make_flyable_base\MiG-31\MiG-31_Su33avionics.lua" MiG-31\entry.lua
   copy /V /L /Y "make_flyable_base\MiG-31\MiG-31_Su33cockpit.lods" MiG-31\Shapes\Cockpit_MiG-31.lods
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-33\joystick\*.lua"  MiG-31\Input\MiG-31\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-33\keyboard\*.lua"  MiG-31\Input\MiG-31\keyboard || echo %_errormsg%
   )
echo;
:: MiG-25PD
echo;
echo Starting MiG-25PD (Air2Air) configuration
echo;
echo As of now only with MiG-29 avionics. R40s aren't long range rockets.^
 In order to launch R-33/R40 use LAlt+W (Launch override) after getting normal radar lock.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\joystick\*.lua"  MiG-25PD\Input\MiG-25PD\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\keyboard\*.lua"  MiG-25PD\Input\MiG-25PD\keyboard || echo %_errormsg%
echo;
:: MiG-25RBT
echo;
echo Starting MiG-25RBT (Air2Ground) configuration
echo;
echo As of now only with MiG-29 avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\joystick\*.lua"  MiG-25RBT\Input\MiG-25RBT\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\keyboard\*.lua"  MiG-25RBT\Input\MiG-25RBT\keyboard || echo %_errormsg%
echo;
:: MiG-27K
echo;
echo Starting MiG-27K configuration
echo;
echo As of now only with MiG-29 avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\joystick\*.lua"  MiG-27K\Input\MiG-27K\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\keyboard\*.lua"  MiG-27K\Input\MiG-27K\keyboard || echo %_errormsg%
echo;
:: MiG-23MLD
echo;
echo Starting MiG-23MLD configuration
echo;
echo As of now only with MiG-29 avionics. "https://forums.eagle.ru/showthread.php?t=232050&page=28" is the proper MiG-23.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\joystick\*.lua"  MiG-23MLD\Input\MiG-23MLD\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\keyboard\*.lua"  MiG-23MLD\Input\MiG-23MLD\keyboard || echo %_errormsg%
echo Installation complete
CHOICE /C Q /N /M "Press Q to quit"
:END
endlocal
::exit Uncomment me before release

:: End of main function #>
 
:: f0, Opens a window and asks to choose DCS install folder 
Add-Type -AssemblyName System.Windows.Forms
$f = new-object Windows.Forms.FolderBrowserDialog
$f.Description = "Select DCS install folder, for example C:\Program Files (x86)\Steam\steamapps\common\DCSWorld"
[void]$f.ShowDialog()
$f.SelectedPath

