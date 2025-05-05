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
