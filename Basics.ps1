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
$Names = $Names + 'Paul'
$Names
$Names += 'Tim'
$Names = $Names -ne 'John'
$Names

$Namelist = [System.Collections.ArrayList]@()
$Namelist.GetType()
$Namelist.IsFixedSize
$Namelist[1]
$Namelist.Add('Mike')
$Namelist
$Namelist.Remove('Mike')
$Namelist

$Array = @()
$Arraylist = [System.Collections.ArrayList]@()

# Measure-Command -Expression { @(0..50000).ForEach({ $Array += $_ }) }
# Measure-Command -Expression { @(0..50000).ForEach({ $Arraylist.Add($_) }) } # This is significantly faster!

# 0.3 - "Container" Objects

$Users = @{
    johns  = 'John Smith'
    Bobt   = 'Bob Test'
    Stevep = "Steve Pickle"
}

$Users
$Users.GetType()
$Users.Keys
$Users.Values