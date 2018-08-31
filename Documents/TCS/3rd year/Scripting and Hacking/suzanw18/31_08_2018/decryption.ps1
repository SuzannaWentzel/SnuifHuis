function decrypt($char,$shift){
    $num=([int][char] $char)
    $num=$num-$shift
    return ([char]$num)
}

function decryptSentence($sentence){
    $result=""
    $shift=$sentence.length
    $sentence=$sentence.ToCharArray()
    foreach($i in $sentence)
    {
        $decription=$(decrypt $i $shift)
        $result=""+$result+$decription
    }
    return $result
}

function encrypt($char,$shift){
    $num=([int][char] $char)
    $num=$num+$shift
    return ([char]$num)
}

function encryptSentence($sentence){
    $result=""
    $shift=$sentence.length
    $sentence=$sentence.ToCharArray()
    foreach($i in $sentence)
    {
        $decription=$(encrypt $i $shift)
        $result=""+$result+$decription
    }
    return $result
}

function encryption(){
    $function=Read-Host "Enter whether you want to encrypt or decrypt: [Encrypt]/[Decrypt]"
    $text=Read-Host "Enter the text you want to "$function
    $result=""
    if($function -eq "Encrypt"){
        $result=encryptSentence($text)
    } elseif($function -eq "Decrypt") {
        $result=decryptSentence($text)
    } else {
        echo "That is not an option, try again"
        $result=encryption
    }
    return $result
}

encryption

<#
    The improvement we made is changing the number of shifts in the cypher. The amount
    of shifts depends directly on the length of the message. This is an improvement,
    because now it is a little bit harder to find out the amount of rotations by comparing texts,
    you will only find it if you compare texts of the same length, and it will be different for texts
    with a different length. Also, we don't need to tell the key to the receiver,
    since the length stays the same.
#>
