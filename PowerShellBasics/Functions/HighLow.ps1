Function Get-HighLowAnswer {
    #generate a random number
    Get-random -Minimum 1 -Maximum 10
}
function Start-HighLowGame{
    param (
        [int]$answer
    )
    do{
        #Ask the user to make a guess
        $guess = Read-Host "Guess a number Between 1-10"

        #compare guess against answer

        #If the guess is lower then the answer, output Higher
        if($guess -lt $answer){
            "HIGHER"
        }
        #If the guess is higher then the answer, output Lower
        if($guess -gt $answer){
            "LOWER"
        }
        #if guess is equal to the answer, output correct
        if($guess -eq $answer){
            "CORRECT"
        }
        }until ($guess -eq $answer)
}
$RandomNumber = Get-HighLowAnswer
Start-HighLowGame -answer $RandomNumber
