# Display a Yes/No prompt
Add-Type -AssemblyName PresentationFramework
$msgBoxInput = [System.Windows.MessageBox]::Show(
    "Ok to continue with script?", # MsgBox content text
    "Confirm", # Pop-up window title
    "YesNo" # Prompts
)
If ($msgBoxInput -eq "No") { Exit }
If ($msgBoxInput -eq "Yes") {
    Write-Output "You chose Yes"
}