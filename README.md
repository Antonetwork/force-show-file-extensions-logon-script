# force-show-file-extensions-logon-script

This repository contains a lightweight and reliable batch script that ensures **file extensions are always shown** for all users on a Windows system.

## Features

- Automatically enables “Show extensions for known file types”
- Executes at every user logon using Local Group Policy
- Only runs if needed (if the setting was changed)
- Lightweight, no background process

---

## How It Works

The script checks the registry key:

```reg
HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt

Deployment Instructions (Local GPO)
Save the script as AfficherExtensions.bat in a safe folder, e.g., C:\Scripts
```reg

Open the Local Group Policy Editor: gpedit.msc

Navigate to:
```reg
User Configuration →
Windows Settings →
Scripts (Logon/Logoff) →
Logon
Add the script to the Logon section
```reg
Run gpupdate /force to apply the policy
