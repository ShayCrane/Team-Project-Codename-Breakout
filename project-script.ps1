<# Ops 301 Final Script

 This script will deploy a fully automated Windows 2019 Server as Domain Controller with organization units and units provisioned.
 #> 


# We can also install the DNS, AD Manager via Powershell vs GUI. This will also satisfy the new forest requirement.

Install-WindowsFeature AD-Domain-Services, DNS - IncludeManagementTools

Install-ADDSForest -DomainName SunToWater.com -DomainMode WinThreshold -DomainNetbiosName CORP


# Assigns the Windows Server VM a static IPv4 address

# Assigns the Windows Server VM a DNS

# Renames the Windows Server VM

# Installs AD-Domain-Services

# Creates an AD Forest

# Creates Organizational Units (OU)

# Creates users
# The Active Directory module needs to be imported first

Import - Module Active Directory
New-ADUser -Name 'Bill Lumbergh' -UserPrincipalName 'blumberg@suntowater.com' -SamAccountName 'blumberg' -GivenName 'Bill' -Surname 'Lumbergh' -DisplayName 'Bill Lumberg'-Title 'CEO' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

#or we can disable change password. Another idea is to create a script for creating a new user and then all we need to do is fill in.

# Also here is the microsoft documentation on all the settings we can use for new-ADDUser https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee617253(v=technet.10)?redirectedfrom=MSDN


