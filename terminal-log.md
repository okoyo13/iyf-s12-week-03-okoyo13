# Terminal Log

## Repository Navigation
cd iyf-s12-week-03-okoyo13
pwd
ls

## Git Verification
git status
git remote -v
git log -5 --oneline

## File and Directory Inspection
Get-ChildItem
Get-ChildItem -Recurse -Name
Test-Path .gitignore
Get-Content .gitignore

## Project Setup Script
Get-Content .\new-project.ps1
.\new-project.ps1 test-project-output
Get-ChildItem .\test-project-output -Recurse -Name

## Create Terminal Log
New-Item -ItemType File -Name "terminal-log.md"

## Task 5.1 - Create Project Structure

```powershell
Test-Path .\my-project
New-Item -ItemType Directory -Force -Path .\my-project\src\css, .\my-project\src\js, .\my-project\src\images, .\my-project\docs, .\my-project\tests
Test-Path .\my-project\README.md
Get-ChildItem .\my-project -Recurse -Name
```
## Task 5.1 - Basic Navigation

```powershell
pwd
ls
cd ~/Documents
pwd
cd ..
pwd
cd ~
pwd
cd "$HOME\iyf-s12-week-03-okoyo13"
```
