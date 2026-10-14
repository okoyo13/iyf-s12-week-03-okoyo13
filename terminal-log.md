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
