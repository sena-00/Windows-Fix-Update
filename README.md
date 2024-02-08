# Windows Fix & Update

<p align="center">
<img src="https://github.com/sena-00/Windows-Fix-Update/assets/156020094/fbb25d48-974f-47dd-9247-2e2aa24f1fd3" width="600" height="450">
</p>


This script is intented to automatize menial tasks to find, update and fix issues that generally leads to Windows slowness and crashes. It also ensures an accepted level of perfomance for many applications used daily in the company.

These tasks must be done bi-weekly on 12 computers. Running this script reduces the time for completion from 1h to 20 minutes

The script was created in batch, and to work properly must be run as Administrator. The main functions are as follows:

+ Execute 'Check Disk' tool to scan your hard drive for file system errors
+ Execute 'System File Checker' tool to repair missing or corrupted system files
+ Force the update of the Group Policy configurations
+ Shows hot-fixes installed on the local computer via PowerShell
+ Opens 'Windows Settings > Printers' and allow to make a computer-printer connection test and print quality
+ Execute Disk Defragmentation
+ Opens 'Zoom' and checks for updates

> [!NOTE]
> The commands and tasks perfomed are based on the clients needs. More commands may be added if needed.
