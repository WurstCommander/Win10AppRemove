# Windows 10 Apps Remove

Powershell Script which deinstalls / removes Windows 10 apps, 
even mandatory apps like XBox which can't be deinstalled via the start menu.

## Instructions:

At first, I would suggest that you deinstall all apps which you don't need via the start menu. 
Hover over the icon in the start menu, right click and choose "deinstall".

1. Edit the Powershell-Script and comment out the apps which you don't want to remove.
   Just put # before the line with the command like:
   #get-appxpackage -allusers *alarms* | remove-appxpackage
   
   All apps without the comment character are removed.
   
2. Start Windows Power Shell with admin rights (right click and "run as administrator") and start the script.


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

Disclamer:

*Use the script at your own risk*, make backups, I tested the script it works for me, but I got only so much time to investing into testing.







