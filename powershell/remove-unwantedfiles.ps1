 param
 (
    $SearchPath,
    $StartDate,
    $EndDate,
    $SearchFilter = "*Copy*",
    $DateFormat = 'HH mm yyyy dd MM'
 )
    $ParsedStartDate = [DateTime]::ParseExact($StartDate, $DateFormat, $null)
    $ParsedEndDate = [DateTime]::ParseExact($EndDate, $DateFormat, $null)

    Get-ChildItem -Path $SearchPath -Filter $SearchFilter -Recurse | 
    Where-Object {($_.CreationTime -GT $ParsedStartDate ) -and ($_.CreationTime -LT $ParsedEndDate)} | 
    Remove-Item

