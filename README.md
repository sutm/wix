wix
===
This project contains some wxs files for the Windows Installer XML Toolkit (wix).

1. create-msi.ps1 is a powershell script that calls the wix binaries to generate the wxs and msi files.
2. filesToInstall.wxs is generated by heat.exe to include all the source files.  It is linked to the main product.wxs.
3. It uses some standard wix ui dialogs, including the ExitDialog, ProgressDlg, UserExit etc.
4. The system path is updated to include the installed path.
5. Re-installation is treated as a major upgrade, ie. the files will be over-written automatically. 
   No duplicate entries are created in program install/uninstall menu.
