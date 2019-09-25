$User = "a93169583"
$PWord = ConvertTo-SecureString -String "Ammus!234" -AsPlainText -Force
$Credential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $User, $PWord
$session = New-PSSession -ComputerName '10.24.21.104' -Credential $Credential
Invoke-Command -Session $session -ScriptBlock {Get-Date}
