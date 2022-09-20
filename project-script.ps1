<# Ops 301 Final Script

 This script will deploy a fully automated Windows 2019 Server as Domain Controller with organization units and units provisioned.
 #> 


# We can also install the DNS, AD Manager via Powershell vs GUI. This will also satisfy the new forest requirement.

# Installs AD-Domain-Services
Install-WindowsFeature AD-Domain-Services, DNS - IncludeManagementTools

# Creates an AD Forest
Install-ADDSForest -DomainName SunToWater.com -DomainMode WinThreshold -DomainNetbiosName CORP

# Restart Computer -Force

# Assigns the Windows Server VM a static IPv4 address

# Assigns the Windows Server VM a DNS

# Renames the Windows Server VM





# Creates Organizational Units (OU)
# Marketing, Finance, HR, IT, Security

# Creates users
# The Active Directory module needs to be imported first

Import-Module Active Directory

New-ADUser -Name 'Bill Lumbergh' -UserPrincipalName 'blumberg@suntowater.com' -SamAccountName 'blumberg' -GivenName 'Bill' -Surname 'Lumbergh' -DisplayName 'Bill Lumberg'-Title 'CEO' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Peter Gibbons' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Ron Weasley' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Harry Potter' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Hermione Granger' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Bob Slydell' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Luca Paclioli' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Angela Martin' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Kevin Malone' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Oscar Martinez' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true


New-ADUser -Name 'Minerva McGonagall' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Sybill Trelawney' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Remus Lupin' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Serverus Snape' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true


New-ADUser -Name 'Bade Habib' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Samir Nagheenanajar' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'John Dorian' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Elliot Reid' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Chris Turk' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true


New-ADUser -Name 'Courtney Hans' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true



New-ADUser -Name 'Brian Krebs' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Milton Waddams' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Perry Cox' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Bob Kelso' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Michael Scott' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Dwight Schrute' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Jim Halpert' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Andy Bernard' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Kelly Kapoor' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Phyliss Lapin-Vance' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Meredith Palmer' -UserPrincipalName '' -SamAccountName '' -GivenName '' -Surname '' -DisplayName ''-Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true


# Also here is the microsoft documentation on all the settings we can use for new-ADDUser https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee617253(v=technet.10)?redirectedfrom=MSDN

# Script to add a new user template # https://activedirectorypro.com/create-bulk-users-active-directory/

