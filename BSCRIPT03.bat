@echo off
:menu
echo Select a utility:
echo 1. ipconfig
echo 2. tasklist/taskkill
echo 3. chkdsk
echo 4. format
echo 5. defrag
echo 6. find
echo 7. attrib
choice /c 1234567 /n /m "Enter your choice: "
set utility=%errorlevel%
if %utility%==1 (
    ipconfig
)
if %utility%==2 (
    tasklist
    set /p pid=Enter the process ID to kill (or press Enter to skip): 
    if not "%pid%"=="" (
        taskkill /f /pid %pid%
    )
)
if %utility%==3 (
    set /p drive=Enter the drive letter (e.g., C, D): 
    chkdsk %drive%:
)
if %utility%==4 (
    set /p drive=Enter the drive letter to format (e.g., C, D): 
    format %drive%:
)
if %utility%==5 (
    set /p drive=Enter the drive letter to defragment (e.g., C, D): 
    defrag %drive%: -v
)
if %utility%==6 (
    set /p search_term=Enter the search term: 
    find "%search_term%" *
)
if %utility%==7 (
    set /p filename=Enter the filename: 
    attrib %filename%
)
if "%utility%"=="" (
    echo Invalid choice. Please select a valid utility.
    goto menu
)
Pause