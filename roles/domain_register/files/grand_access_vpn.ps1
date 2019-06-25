
$acl = Get-Acl "C:\Program Files (x86)\Sophos\Sophos SSL VPN Client\config"

$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("administrateur","FullControl","Allow")

$acl.SetAccessRule($AccessRule)

$acl | Set-Acl "C:\Program Files (x86)\Sophos\Sophos SSL VPN Client\config"

pause

