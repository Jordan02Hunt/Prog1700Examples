
Param(
    $Names,
    [int]$Repeat
)

$Emojis=@{
    "See" = "`u{1F648}";
    "Hear"= "`u{1F649}";
    "Speak"= "`u{1F64A}";
    "Skull" = "`u{2620}";
    "Tree" = "`u{1F384}";
    "Santa" = "`u{1F385}";
    "Poop" = "`u{1F4A9}";
}

Foreach($Name in $Names){
Write-host ($Emojis[$Name] * $Repeat) -NoNewline
}
