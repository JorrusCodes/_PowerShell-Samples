# Stop a running process
$runningProcess = Get-Process -Name "msedge.exe" -ErrorAction SilentlyContinue
If ($runningProcess) { Stop-Process -InputObject $runningProcess -Force }