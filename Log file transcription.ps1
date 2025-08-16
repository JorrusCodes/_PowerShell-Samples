# Log File transcription
Remove-Item "C:\Temp\PSScript.log" -Force -ErrorAction SilentlyContinue
Start-Transcript "C:\Temp\PSScript.log"
Write-Output "Started script transcription..."
Write-Output "Ending script transcription..."
Stop-Transcript
