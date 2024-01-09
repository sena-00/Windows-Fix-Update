# AutoUpdateScript
This repo is intented to automatize menial tasks to find, update and fix issues that generally leads to Windows slowness and crashes. It also ensures an accepted level of perfomance for many applications used daily in the company.
The script was created in batch, and to work properly must be run as Administrator. The main functions are as follows:

These tasks must be done bi-weekly on 12 computers. Running this script reduces the time for completion from 1h to 20 minutes

1. Execute 'Check Disk' tool to scan your hard drive for file system errors
2. Execute 'System File Checker' tool to repair missing or corrupted system files
3. Force the update of the Group Policy configurations
4. Shows hot-fixes installed on the local computer via PowerShell
5. Opens 'Windows Settings > Printers' and allow to make a computer-printer connection test and print quality
6. Execute Disk Defragmentation
7. Opens 'Zoom' and checks for updates
