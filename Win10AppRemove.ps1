##################################################################################
# Windows 10 Apps Remover 1.31
# Powershell Script
# Description:
# Removes Windows 10 mandatory apps which can't be deinstalled via Startmenu.
#
# Read the README.md !
# Tip: Open all your apps with explorer command "shell:appsfolder"
##################################################################################


##################################################################################
# functions start(do not change)
function reboot{
$rebootanswer = Read-Host -Prompt "Should the system reboot? (yes/no)"

If ($rebootanswer -eq "yes") {
write-host "Rebooting now..."
Restart-Computer
}
elseif ($rebootanswer -eq "no"){
write-host "`n"
write-host "Thanks for using the script, have a nice day."
}
else{
write-host "`n"
write-host "I didn't get you, sorry."
reboot 
}
}

# admin rights check
function checkadmin  
{  
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
	$checkresult = (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
    if($checkresult -eq $False){
		write-host "---------------------------------------------------------------------"
		write-host "No administrator-rights found, start as administrator!!!"
		write-host "---------------------------------------------------------------------"		
		PAUSE
		exit
	}
		
}
# functions end
##################################################################################
# global variables
# suppress errormessages from removing apps because clear-host didn't work.... 
# Some apps will return errors messages if they are already deinstalled
$ErrorActionPreference = "SilentlyContinue"

checkadmin
clear-host
write-host "---------------------------------------------------------------------"
write-host " Windows 10 Apps Remover 1.31                                        "
write-host "---------------------------------------------------------------------"
write-host "`n"
write-host " Please make sure that only apps you would like to remove 
 are included in the script."
write-host "`n"
write-host " Apps which should stay installed have to be commented out"
write-host " like this:       #get-appxpackage -allusers *calculator* (...)"
write-host "`n"
write-host " just add # before the command to keep the app :-)"
write-host "`n"
write-host " !!!!!    Check the script before executing    !!!!!"
write-host "`n"
write-host " Hit return to start! - cancel with STRG+C"
write-host "`n"
write-host "---------------------------------------------------------------------"
PAUSE
clear-host
PAUSE
###############################################################################
#                                  APP LIST                                   #
#                                                                             #
# All apps which aren't commented out will be removed / deinstalled           #
###############################################################################

#To uninstall 3D Builder:
get-appxpackage -allusers *3dbuilder* | remove-appxpackage

#To uninstall Alarms & Clock:
get-appxpackage -allusers *alarms* | remove-appxpackage

#To uninstall App Connector:
get-appxpackage -allusers *appconnector* | remove-appxpackage

#To uninstall App Installer:
#get-appxpackage -allusers *appinstaller* | remove-appxpackage

#To uninstall Calendar and Mail apps together:
get-appxpackage -allusers *communicationsapps* | remove-appxpackage

#To uninstall Calculator:
#get-appxpackage -allusers *calculator* | remove-appxpackage

#To uninstall Camera:
#get-appxpackage -allusers  *camera* | remove-appxpackage

#To uninstall Feedback Hub:
get-appxpackage -allusers *feedback* | remove-appxpackage

#To uninstall Get Office:
get-appxpackage -allusers *officehub* | remove-appxpackage

#To uninstall Get Started or Tips:
get-appxpackage -allusers *getstarted* | remove-appxpackage

#To uninstall Get Skype:
get-appxpackage -allusers *skypeapp* | remove-appxpackage

#To uninstall Groove Music:
get-appxpackage -allusers *zunemusic* | remove-appxpackage

#To uninstall Groove Music and Movies & TV apps together:
get-appxpackage -allusers *zune* | remove-appxpackage

#To uninstall Maps:
get-appxpackage -allusers *maps* | remove-appxpackage

#To uninstall Messaging and Skype Video apps together:
get-appxpackage -allusers *messaging* | remove-appxpackage

#To uninstall Microsoft Solitaire Collection:
get-appxpackage -allusers *solitaire* | remove-appxpackage

#To uninstall Microsoft Wallet:
get-appxpackage -allusers *wallet* | remove-appxpackage

#To uninstall Microsoft Wi-Fi:
get-appxpackage -allusers *connectivitystore* | remove-appxpackage

#To uninstall Money:
get-appxpackage -allusers *bingfinance* | remove-appxpackage

#To uninstall Money, News, Sports and Weather apps together (I like the weather app, you can remove news, sports, money and reinstall the weather app):
#get-appxpackage -allusers *bing* | remove-appxpackage

#To uninstall Movies & TV:
get-appxpackage -allusers *zunevideo* | remove-appxpackage

#To uninstall News:
get-appxpackage -allusers *bingnews* | remove-appxpackage

#To uninstall OneNote:
get-appxpackage -allusers *onenote* | remove-appxpackage

#To uninstall Paid Wi-Fi & Cellular:
get-appxpackage -allusers  *oneconnect* | remove-appxpackage

#To uninstall Paint 3D:
get-appxpackage -allusers *mspaint* | remove-appxpackage

#To uninstall People:
get-appxpackage -allusers  *people* | remove-appxpackage

#To uninstall Phone:
get-appxpackage -allusers *commsphone* | remove-appxpackage

#To uninstall Phone Companion:
get-appxpackage -allusers *windowsphone* | remove-appxpackage

#To uninstall Phone and Phone Companion apps together:
get-appxpackage -allusers *phone* | remove-appxpackage

#To uninstall Photos:
get-appxpackage -allusers *photos* | remove-appxpackage

#To uninstall Sports:
get-appxpackage -allusers *bingsports* | remove-appxpackage

#To uninstall Sticky Notes:
get-appxpackage -allusers *sticky* | remove-appxpackage

#To uninstall Sway:
get-appxpackage -allusers *sway* | remove-appxpackage

#To uninstall View 3D:
get-appxpackage -allusers *3d* | remove-appxpackage

#To uninstall Voice Recorder:
#get-appxpackage -allusers *soundrecorder* | remove-appxpackage

#To uninstall Weather: (I like it :-) )
#get-appxpackage -allusers *bingweather* | remove-appxpackage

#To uninstall Get-Help App (kind of useless)
get-appxpackage -allusers *GetHelp* | remove-appxpackage

#To uninstall Windows Holographic:
get-appxpackage -allusers *holographic* | remove-appxpackage

#To uninstall Windows Store: (DANGER - Don't remove, maybe you want to install apps? and it's needed for updates)
#########get-appxpackage -allusers *windowsstore* | remove-appxpackage

#To uninstall Xbox:
get-appxpackage -allusers *xbox* | remove-appxpackage
clear-host

##To uninstall Paint 3D
get-AppxPackage *MSPaint* | remove-AppxPackage

## The end ;)

write-host "--------------------------------------------------------------------"
write-host "Removing Apps completed."
write-host "`n"
write-host "Rebooting the OS is advised." 
reboot
