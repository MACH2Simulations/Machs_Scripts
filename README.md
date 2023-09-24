---
id: MS-Home
---

# MACHS Scripts

Welcome to MACHS Scripts.  
Here you will find a collection of scripts, mostly powershell, to help with Active directory management and other automation tasks.  
  
These scripts, unless otherwise specified, and licensed under [GNU Affero General Public License v3.0](/license.md)  

--  

## Tips  

### ExecutionPolicy

When running these scripts, you may need to run the following command in powershell.  
This will allow you to run the script without a policy error.  
You can also add this as a parameter when setting up scheduled tasks.  

```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass
```

### Date Formatting  

