# Create a shortcut on the Public Desktop
$s = (New-Object -ComObject WScript.Shell).CreateShortcut("C:\Users\Public\Desktop\Notepad++.lnk")
$s.TargetPath = "C:\Program Files\Notepad++\notepad++.exe"
$s.WorkingDirectory = "C:\Program Files\Notepad++" # "Start In" path
$s.Save

# Apply a specific icon
$iconPath = "C:\Program Files\Notepad++\notepad++.exe"
$s.IconLocation = "$iconPath, 0"
