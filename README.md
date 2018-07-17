# Windows 10 Apps Remover

## Changelog 1.32
Remove Onedrive from explorer and deinstall Mixed Reality Portal

- I added 'registry-status-bar-onedrive-entry.jpg' how to remove the OneDrive link in the explorer, which is super annoying.
- How to remove the Mixed Reality Portal -> 'Add Mixed Reality To Settings.reg'. 
Double-click the file "Add Mixed Reality to Settings.reg" and confirm the import operation.
This tweak adds the 32-DWORD value FirstRunSucceeded to the Registry with a value data of 1 under the key HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Holographic.

After that this you can deinstall, open settings and go to "Mixed Reality".
On the left, select Uninstall.

## Changelog 1.31
- added Get Help and Windows Camera
- removed duplicated apps
- minor changes

## Changelog 1.3
- added .reg files to remove "show compressed files as folders" functionally from Windows 7/8/10

## Changelog 1.2

- added removal of "Paint 3D" 
  (a spinoff of Microsoft Paint, is one of several applications introduced with the Windows 10 Creators Update - just get paint.net)
- added check for admin rights
- added .reg file for removal of "Edit with Paint 3D" context menu
- changed version to 1.1, marketing demanded it :-)
- updated readme

## Description

Powershell Script which deinstalls / removes Windows 10 apps, 
even mandatory apps like XBox which can't be deinstalled with normal measures like startmenu, programms and features and so on.

## Instructions

At first, I would suggest that you deinstall all apps which you don't need via the start menu. 
Hover over the icon in the start menu, right click and choose "deinstall". This is the "normal" way to remove apps which aren't reluctant like the ones this script removes.

**If this is your first time executing PowerShell Scripts you have to allow scripts to be executed:
Execute this command in the PowerShell: "Set-ExecutionPolicy Unrestricted".
After using the script you can that the execute level back to "Set-ExecutionPolicy Restricted" if you like.**

(More here: http://windowsitpro.com/powershell/running-powershell-scripts-easy-1-2-3 and here: https://technet.microsoft.com/en-us/library/ee176961.aspx)

1. Copy the script onto your hard drive into a directory which you won't forget two seconds after you copied the file :-)

2. Edit the Powershell-Script (Win10AppRemove.ps1) and comment out the apps which you don't want to remove.
   Just put # before the line with the command like:
   #get-appxpackage -allusers *alarms* | remove-appxpackage
   
   All apps without the comment character will be removed.
   
3. Start Windows Power Shell **with admin rights** (right click and "run as administrator") and start the script. Without admin rights the script will do nothing.

### supported apps

- Alarms & Clock
- App Connector
- App Installer
- Calendar and Mail apps together
- Calculator
- Camera
- Feedback Hub
- Get Office
- Get Started or Tips
- Get Skype
- Groove Music
- Groove Music and Movies & TV apps together
- Maps
- Messaging and Skype Video apps together
- Microsoft Solitaire Collection
- Microsoft Wallet
- Microsoft Wi-Fi
- Money
- Money, News, Sports and Weather apps together (I like the weather app, you can remove news, sports, money and reinstall the weather app)
- Movies & TV
- News
- OneNote
- Paid Wi-Fi & Cellular
- Paint 3D
- People
- Phone
- Phone Companion
- Phone and Phone Companion apps together
- Photos
- Sports
- Sticky Notes
- Sway
- View 3D
- Voice Recorder
- Weather
- Windows Holographic
- Windows Store (DANGER - Don't remove, maybe you want to install apps? and it's needed for updates)
- Xbox

I **strongly** advise against removing the Windows Store App.

## Remove Zip - Files as folders
Windows shows compressed files as folders, for files like .cab and .zip.

I personally find this feature very annoying, "remove_zip_files_as_folders.reg" uses the Regedit to remove it.
Same for .cab Files -> "remove_cab_files_as_folders.reg"

## Removal of "Edit with Paint 3D" context menu
It's annoying too, so you can use: remove_edit_with_Paint_3D_context_menu to get rid of it.

## Tips / Workarounds

- For finding errors:
  If you don't get any errormessages, remove "#$ErrorActionPreference = "SilentlyContinue"" from the script. 
  I included it, because some apps throw error messages (app is already removed etc.) 
  which the clear screen command (CLS) can't remove from the console. I don't know why, so I removed the spamming of the console. 
  Feel free to choose log-spamming or not :-)
  
- In the current version of the script, I keep the weather app because I like it. I would suggest removing
  Money, News, Sports and Weather apps together and reinstall the weather app again if you want to use it.
- Tip: Open all your apps with explorer command "shell:appsfolder"
- So reinstall all apps execute this command: Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}

## Disclaimer

**Use the script at your own risk**, make backups, blah blah. 
I tested the script, it works for me, but I got only a few Windows 10 PCs to test it and so on.

Suggestions, fixes and new features are welcome.

Have a nice day, your Wurstcommander.
