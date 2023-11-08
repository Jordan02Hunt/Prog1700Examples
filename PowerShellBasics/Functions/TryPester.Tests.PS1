
Describe 'get-Numbers' {
    It'simply returns 5 numbers as an array' {
        $Numbers = Get-Numbers
        $numbers.count | should - be 5
    }
}