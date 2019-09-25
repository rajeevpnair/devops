$servers = get-content "D:\textfile.txt"
 
$cred = Get-Credential
foreach($server in $servers)
{
 $Session = New-PSSession -ComputerName $server -Credential $cred
Copy-Item -Path C:\localfile.txt -Destination e:\newcopiedfile123.txt -FromSession $session
#Copy-Item -Path C:\temp\localfile.txt -Destination e:\newcopiedfile.txt -ToSession $session
#edit script
Copy-Item -Path C:\localfile.txt -Destination e:\newcopiedfile1.txt -ToSession $session
Write-host "success"
}
