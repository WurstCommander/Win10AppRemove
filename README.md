# Windows 10 Apps Remove

Powershell Script which deinstalls / removes Windows 10 apps, 
even mandatory apps like XBox which can't be deinstalled via the start menu.

## Instructions:

At first, I would suggest that you deinstall all apps which you don't need via the start menu. 
Hover over the icon in the start menu, right click and choose "deinstall". This is the "normal" way to remove apps which aren't reluctant like the ones this scripts tried to remove.

1. Copy the script onto your hard drive into a directory you will not forget two seconds after you copied the file :-)

2. Edit the Powershell-Script (Win10AppRemove.ps1) and comment out the apps which you don't want to remove.
   Just put # before the line with the command like:
   #get-appxpackage -allusers *alarms* | remove-appxpackage
   
   All apps without the comment character are removed.
   
3. Start Windows Power Shell **with admin rights** (right click and "run as administrator") and start the script. Without admin rights    the script will do nothing.


### List of apps which are currently supported: ###

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

## Tips / Workaround: ##

- For finding errors:
  If you don't get any errormessages, remove "#$ErrorActionPreference = "SilentlyContinue"" from the script. 
  I included it, because some apps throw errormessages (app is already removed etc.) 
  which CLS can't remove from the console. I don't know why.


## Disclamer: ##

*Use the script at your own risk*, make backups, blah blah. 
I tested the script, it works for me, but I got only a few Windows 10 PCs to test it and so on.

Suggestions, fixes and new features are welcome.

Have a nice day, your Wurstcommander.
