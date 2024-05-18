Get-Date
Get-Help get-date
Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -WhatIf

$GivenName = "Richard"
$GivenName

# 0.2 - variables

$Value1 = 4
$Value2 = 5
$Value3 = 6

$Result = $Value1 + $Value3
$Result
$GivenName.GetType()
$Result.GetType()
$DoubleValue = 3.2
$DoubleValue.GetType()

$Employed = $true
$Employed.GetType()

$Today = Get-Date
$Today

$Names = @('Bob', 'Steve', 'John')
$Names.GetType()
$Names.IsFixedSize
$Names
$Names[1]