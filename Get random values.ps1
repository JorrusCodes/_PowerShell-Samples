# Use Get-Random for numbers between two values
# NOTE that the Maximum value is not included in possible results
Get-Random -Minimum 1 -Maximum 101

# EXAMPLE: Shuffle a string of characters
$deckOrder = '11112222333344440000000000'
$randOrder = ($deckOrder -split '' | Sort-Object {Get-Random}) -join ''

# EXAMPLE: Build a random password from a string of possible characters
$possibleChars = "qwertyuiopasdfghjklzxcvbnmQWERYIOPASDFGHJKLZXCVBNM1234567890!@#$%^&*()"
$passwordValue = ''
$passwordLength = 18
For ($i = 0; $i -lt $passwordLength; $i++) {
    $passwordValue += $possibleChars[(Get-Random -Minimum 0 -Maximum ($possibleChars.Length + 1))]
}

$passwordValue
