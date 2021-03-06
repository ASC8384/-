# https://github.com/Microsoft/vscode/issues/56326#issuecomment-586961702
# Thanks @farrrb https://github.com/farrrb

# Remove temp file from portable user data
Remove-Item -Recurse -Force -Path "data/user-data" -Include @("Backups", "Cache", "CachedData", "GPUCache", "logs")

# Download latest stable build
curl.exe -L "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-archive" -o "stable.zip"
# Delete anything except user data, update script and downloaded zip file
Get-ChildItem -Exclude @("data", "UpdateVSCode.ps1", "stable.zip", "vscode_addright.inf") | Remove-Item -Recurse -Force
# Unzip it
Expand-Archive -Path "stable.zip" -DestinationPath .
# Delete downloaded package
Remove-Item -Path "stable.zip"
Pause
