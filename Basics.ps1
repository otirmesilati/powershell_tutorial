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
    bobt   = 'Bob Test'
    stevep = "Steve Pickle"
}

$Users
$Users.GetType()
$Users.Keys
$Users.Values
$Users['bobt']
$Users.bobt
$Users.Add('Gadi', 'Gadot')
$Users
$Users['Dani'] = 'Dagan'
$Users
$Users['Moshe']
$Users.Contains('Moshe')
$Users.Contains('Dani')
$Users.ContainsKey('Dani')
$Users.ContainsValue('Dani')
$Users.Contains('Dagan')
$Users.ContainsValue('Dagan')

# Same procedure, 2 different ways of writing
$Dog = New-Object -TypeName PSCustomObject
Add-Member -InputObject $Dog -MemberType NoteProperty -Name 'Name' -Value 'Penny'
Add-Member -InputObject $Dog -MemberType NoteProperty -Name 'Breed' -Value 'Pug'
$Dog

Get-Member -InputObject $Dog
$Cat=[PSCustomObject]@{Name='Franky';Breed='Persian'}
$Cat

# 0.4 - Pipelining
Get-Service
$ServiceName = 'Spooler'
# Get-Service -Name $ServiceName
# Stop-Service -Name $ServiceName
# Get-Service -Name $ServiceName | Start-Service

$Services = [System.Collections.ArrayList]@('Spooler','w32Time')  

$Services | Get-Service

Get-Help -name Get-Service -Full

# $ServiceObject = New-Object TypeName PSCustomObject

# Add-Member -InputObject $ServiceObject -MemberType NoteProperty -Name 'Name' -Value 'Spooler'
# Add-Member -InputObject $ServiceObject -MemberType NoteProperty -Name 'ComputerName' -Value 'DESKTOP-OPDTO2S'

# 0.5 - Control Flow

1 -eq 1
1 -eq 2
3 -gt 0
2 -le 5

@(1, 2, 3) -contains 4
"PowerShell" -like "power*"

# 0.6 - Pathing

$filepath = "C:\Users\otirm_2hwnj4i\Desktop\hmm.txt"
Test-Path -Path $filepath

if(Test-Path -Path $filepath) {
    Write-Output " Hi! "
    $Data = Get-Content -Path $filepath}
    else{
Write-Output "The file does not exist" 
}

$Data.count
$First = $Data[0]
switch($First){
    "Mike"{"It's Mike!"}
    "John"{"It's John!"}
    default{"It's not Mike or John!"}
}