# Install NuGet and WinGet from PowerShell
Install-PackageProvider -Name NuGet -Force | Out-Null
Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery | Out-Null
Repair-WinGetPackageManager

# Search WinGet for the specific App
WinGet show "snipping tool" --accept-source-agreements

# Download offline installer package
# NOTE: You will be prompted for EntraID authentication
WinGet download "Snipping Tool" --download-directory "C:\Temp\WinGet Packages" --skip-license --platform Windows.Universal --architecture x64 --accept-package-agreements

# If the download attempt returns a "Not Applicable" error, adjust or remove the --platform or --architecture suffixes
WinGet download "Windows Notepad" --download-directory "C:\Temp\WinGet Packages" --skip-license --architecture x64 --accept-package-agreements

# Install an App from a downloaded package file
# NOTE: Run this command once as SYSTEM and once as the user
Add-AppxPackage -path "C:\Temp\WinGet Packages\ScreenSketch\Microsoft.ScreenSketch_2021.2008.3001.0_Universal_X64.msixbundle"
