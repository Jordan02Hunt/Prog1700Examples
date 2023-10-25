# Array in Arrays (Mulitdiensoinal arrays)
$TicTacToe= @(
    @('X','O','O'),
    @('O','X','O'),
    @('X','O','X')
)
for($R = 0; $R -lt $TicTacToe.Length; $R++){
    for($c = 0; $c -lt $TicTacToe[$R].Length; $c++){
    Write-host "$($TicTacToe[$R][$c])|" -NoNewLine
    }
    Write-Host
    Write-host ("-"*6)
}

Write-host "`n"

#Make a move
$TicTacToe[0][2]= "X"

$TicTacToe= @(
    @('X','O','O'),
    @('O','X','O'),
    @('X','O','X')
)
for($R = 0; $R -lt $TicTacToe.Length; $R++){
    for($c = 0; $c -lt $TicTacToe[$R].Length; $c++){
    Write-host "$($TicTacToe[$R][$c])|" -NoNewLine
    }
    Write-Host
    Write-host ("-"*6)
}