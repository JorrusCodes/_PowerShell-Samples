# This will generate a file browse dialog box.
[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
$openFileDialog = New-Object System.Windows.Forms.OpenFileDialog

# The InitialDirectory value sets the location of browse directory ("c:fso" is last-opened)
$openFileDialog.InitialDirectory = "c:fso"

# The Filter value sets the file types the dialog is filtered to
$openFileDialog.Filter = "All files (*.*) | *.*"
$openFileDialog.ShowDialog() | Out-Null

# The selected file's full path and name is stored here:
$openFileDialog.FileName