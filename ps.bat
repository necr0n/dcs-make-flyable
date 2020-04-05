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
:: MiG-31
echo;
echo Starting MiG-31 configuration
echo;
echo Choose between default MiG-29 or Su-27 avionics.^
 With MiG-29 avionics you basically get the same default MiG-29 with working indicators, incl. fuel.
echo However, Mig-29 radar is really poor for MiG-31, so Su-27 avionics helps a little.^
 In order to launch R-33/R40 use LAlt+W (Launch override) after getting normal radar lock.
echo;
CHOICE /C 12 /M "Press 1 to choose MiG-29 avionics, 2 for Su-27 avionics"
 if %ERRORLEVEL% EQU 1 (
   copy /V /L /Y "make_flyable_base\MiG-31\MiG-31_MiG29avionics.lua" MiG-31\entry.lua
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\joystick\*.lua"  MiG-31\Input\MiG-31\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\keyboard\*.lua"  MiG-31\Input\MiG-31\keyboard || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Cockpit\Shape\cockpit_mig-29s.edm.ilv" MiG-31\Shapes\Cockpit_MiG-31.edm.ilv || echo %_errormsg%
   )
 if %ERRORLEVEL% EQU 2 (
   copy /V /L /Y "make_flyable_base\MiG-31\MiG-31_Su27avionics.lua" MiG-31\entry.lua
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-27\joystick\*.lua"  MiG-31\Input\MiG-31\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\su-27\keyboard\*.lua"  MiG-31\Input\MiG-31\keyboard || echo %_errormsg%
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
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Cockpit\Shape\cockpit_mig-29s.edm.ilv" MiG-25PD\Shapes\Cockpit_MiG-25PD.edm.ilv || echo %_errormsg%
echo;
:: MiG-25RBT
echo;
echo Starting MiG-25RBT (Air2Ground) configuration
echo;
echo As of now only with MiG-29 avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\joystick\*.lua"  MiG-25RBT\Input\MiG-25RBT\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\keyboard\*.lua"  MiG-25RBT\Input\MiG-25RBT\keyboard || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Cockpit\Shape\cockpit_mig-29s.edm.ilv" MiG-25RBT\Shapes\Cockpit_MiG-25RBT.edm.ilv || echo %_errormsg%
echo;
:: MiG-27K
echo;
echo Starting MiG-27K configuration
echo;
echo As of now only with MiG-29 avionics.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\joystick\*.lua"  MiG-27K\Input\MiG-27K\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\keyboard\*.lua"  MiG-27K\Input\MiG-27K\keyboard || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Cockpit\Shape\cockpit_mig-29s.edm.ilv" MiG-27K\Shapes\Cockpit_MiG-27K.edm.ilv || echo %_errormsg%
echo;
:: MiG-23MLD
echo;
echo Starting MiG-23MLD configuration
echo;
echo As of now only with MiG-29 avionics. "https://forums.eagle.ru/showthread.php?t=232050&page=28" is the proper MiG-23.
echo;
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\joystick\*.lua"  MiG-23MLD\Input\MiG-23MLD\joystick || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Input\mig-29c\keyboard\*.lua"  MiG-23MLD\Input\MiG-23MLD\keyboard || echo %_errormsg%
   copy /V /L /Y "%_DCS%\Mods\aircraft\Flaming Cliffs\Cockpit\Shape\cockpit_mig-29s.edm.ilv" MiG-23MLD\Shapes\Cockpit_MiG-23MLD.edm.ilv || echo %_errormsg%
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

