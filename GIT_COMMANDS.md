# Git Commands for Adding, Committing, and Pushing

## Quick Commands

### Basic Workflow (PowerShell/Command Prompt)

```powershell
# Navigate to the repository
cd "E:\data\New folder (2)\Lukemia_Model"

# Add all changes
git add .

# Commit with a message
git commit -m "Your commit message here"

# Push to remote repository
git push origin main
```

### If main branch doesn't exist, use master:
```powershell
git push origin master
```

## Step-by-Step Commands

### 1. Check Status
```powershell
git status
```

### 2. Add Files
```powershell
# Add all files
git add .

# Or add specific files
git add filename.txt
git add folder/
```

### 3. Commit Changes
```powershell
git commit -m "Your descriptive commit message"
```

### 4. Push to Remote
```powershell
# Push to main branch
git push origin main

# Or push to master branch
git push origin master
```

## Using the Scripts

### PowerShell Script
```powershell
cd "E:\data\New folder (2)\Lukemia_Model"
.\git_push.ps1 "Your commit message here"
```

### Batch Script
```cmd
cd "E:\data\New folder (2)\Lukemia_Model"
git_push.bat "Your commit message here"
```

## One-Line Command (PowerShell)
```powershell
cd "E:\data\New folder (2)\Lukemia_Model"; git add .; git commit -m "Your message"; git push origin main
```

## Troubleshooting

### If you get "branch 'main' does not exist":
```powershell
git push origin master
```

### If you need to set upstream:
```powershell
git push -u origin main
```

### If you need to configure git user:
```powershell
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

