:: Creator: Reece Krisnata
:: Modified By: Reece Krisnata
:: Created: 22/10/2024
:: Updated: 19/11/2024 
:: Version: 1.1 

@echo off

set "POWERSHELL=powershell -ExecutionPolicy Bypass -Command"

:: ---------------------------------------------
:: Detect Git Repository URL
:: ---------------------------------------------
REM Try to detect the repo URL from Git config
for /f "tokens=*" %%i in ('git config --get remote.origin.url 2^>nul') do set "REPO_URL=%%i"

REM If repo URL is not detected, prompt the user for the URL
if not defined REPO_URL (
    echo "Could not detect the repository URL."
    :ask_for_url
    set /p "REPO_URL=Please enter the repository URL: "
)

:: ---------------------------------------------
:: Ask the user for action choice
:: ---------------------------------------------
:ask_for_action
echo Choose an action:
echo 1) "Initialize a new Git repository"
echo 2) "Clone the Git repository"
echo 3) "Update an existing Git repository"
set /p "ACTION_CHOICE=Enter your choice (1/2/3): "

:: Validate user input
if "%ACTION_CHOICE%"=="1" (
    goto initialize_repo
) else if "%ACTION_CHOICE%"=="2" (
    goto clone_repo
) else if "%ACTION_CHOICE%"=="3" (
    goto update_repo
) else (
    echo "Invalid choice."
    goto ask_for_action
)

:: ---------------------------------------------
:: Initialize a new Git repository
:: ---------------------------------------------
:initialize_repo
echo "Initializing a new Git repository with %REPO_URL%..."
git init
git remote add origin %REPO_URL%
git fetch
git reset --hard origin/main
goto check_success

:: ---------------------------------------------
:: Clone the Git repository
:: ---------------------------------------------
:clone_repo
echo "Cloning the repository from %REPO_URL%..."
git clone %REPO_URL%
goto check_success

:: ---------------------------------------------
:: Update an existing Git repository
:: ---------------------------------------------
:update_repo
REM Check if this directory is a git repository
IF NOT EXIST .git (
    echo "This directory is not a Git repository."
    goto ask_for_action
)

REM Ensure the current branch has tracking information
git rev-parse --abbrev-ref --symbolic-full-name @{u} >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo "No upstream branch set, setting upstream to origin/main..."
    git branch --set-upstream-to=origin/main master
)

echo "Pulling the latest changes from the repository %REPO_URL%..."
git pull origin main
goto check_success

:: ---------------------------------------------
:: Ensure Git repository setup succeeded
:: ---------------------------------------------
:check_success
if %errorlevel% neq 0 (
    echo "Git repository setup failed."
    set "ALERT_MSG=Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Git repository setup failed.', 'Failure', 'OK', 'Error')"
    %POWERSHELL% "%ALERT_MSG%"
    goto ask_for_new_url
)
echo "Script execution completed."
set "ALERT_MSG=Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Script execution completed successfully.', 'Completion', 'OK', 'Information')"
%POWERSHELL% "%ALERT_MSG%"
exit /b 0

:: ---------------------------------------------
:: Ask for new URL if failed
:: ---------------------------------------------
:ask_for_new_url
echo "Would you like to enter a new repository URL? (y/n)"
set /p "RETRY_CHOICE=Enter your choice: "

if /i "%RETRY_CHOICE%"=="y" (
    goto ask_for_url
) else if /i "%RETRY_CHOICE%"=="n" (
    echo "Exiting..."
    exit /b 1
) else (
    echo "Invalid choice."
    goto ask_for_new_url
)