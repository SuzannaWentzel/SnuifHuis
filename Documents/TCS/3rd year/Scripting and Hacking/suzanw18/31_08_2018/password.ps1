$password = Read-Host "Enter a new password"

if ($password.length -gt 20) {
	echo "Password is too long"
} elseif ($password.length -lt 8) {
	echo "Password is too short"
} else {
	echo "password set"
}