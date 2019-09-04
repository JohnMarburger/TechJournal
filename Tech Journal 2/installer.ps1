#
# Windows PowerShell script fort AD DS Deployment
#
Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-databsePath "C:\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainName "john.local" `
-DomainNetbiosName "JOHN" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true
