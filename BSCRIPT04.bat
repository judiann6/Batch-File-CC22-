@echo off
cd /d C:\
dir /b /o:d *.txt > sorted_files.txt
mkdir Z:\Archive
forfiles /p C:\ /s /m *.txt /d -30 /c "cmd /c move @file Z:\Archive"
cd /d Z:\Archive
dir /b /o:s *.txt > sorted_archive.txt
set /p delete_confirm=Do you want to delete old, large files? (Y/N): 
if /i "%delete_confirm%"=="Y" (
    del /q *.txt
)
Pause