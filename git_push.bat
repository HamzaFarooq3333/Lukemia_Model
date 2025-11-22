@echo off
REM Git Add, Commit, and Push Script
REM Usage: git_push.bat "Your commit message"

if "%~1"=="" (
    echo Error: Please provide a commit message
    echo Usage: git_push.bat "Your commit message"
    exit /b 1
)

echo Current git status:
git status

echo.
echo Adding all changes...
git add .

echo.
echo Staged changes:
git status

echo.
echo Committing changes...
git commit -m "%~1"

echo.
echo Pushing to remote repository...
git push origin main

if errorlevel 1 (
    echo Trying master branch...
    git push origin master
)

echo.
echo Done!

