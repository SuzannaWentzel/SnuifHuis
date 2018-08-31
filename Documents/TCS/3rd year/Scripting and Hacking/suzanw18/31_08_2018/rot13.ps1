function rot13($a) {
	$num = ([char][int] $a)
	$num = $num - 13
	return ([char] $num)
}

echo $(rot13("Z"));