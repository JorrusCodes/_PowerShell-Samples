# Test an Integer to confirm if it is Prime
(('1'*37861) -notmatch '^.?$|^(..+?)\1+$')

# Slightly more efficient method
# Can be expanded with further exclusions for greater efficiency
$primeTest = 37865
$c = 0
For ($i = 0; $i -lt ($primeTest.ToString()).Length; $i++) { $c += [int][string](($primeTest.ToString())[$i]) }
If (($primeTest.ToString()[-1] -in ('1', '3', '7', '9')) -and (($c % 3) -ne 0)) {
    If (('1'*$primeTest) -notmatch '^.?$|^(..+?)\1+$') {
        Write-Output "$primeTest is Prime!"
    } Else {
        Write-Output "$primeTest is not Prime"
    }
} Else {
    Write-Output "$primeTest is not Prime"
}

