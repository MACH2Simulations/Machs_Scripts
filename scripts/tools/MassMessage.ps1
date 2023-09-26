$compname = read-host "Enter computname Do not include * For wild card. it is added automactily"
$computers = Get-ADComputer -Filter "Name -like '$compname*'" | 
select-object -expandproperty name
$msg = read-host "Please enter your message" 

ForEach ($computer in $computers) {
    if (test-Connection $computer -Count 1 -Quiet ) { 
    WRITE-HOST $computer
    Invoke-WmiMethod `
        -Path Win32_Process `
        -Name Create `
        -ArgumentList "msg * /time:600 $msg" `
        -ComputerName $computer
}
}
#endregion 