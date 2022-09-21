<# Ops 301 Final Script

 This script will deploy a fully automated Windows 2019 Server as Domain Controller with organization units and units provisioned.
 #> 
# 

# Installs AD-Domain-Services
Install-WindowsFeature AD-Domain-Services, DNS - IncludeManagementTools

# Creates an AD Forest
Install-ADDSForest -DomainName SunToWater.com -DomainMode WinThreshold -DomainNetbiosName CORP

# RESEARCH: Restart Computer -Force see if need to be in the code

# Assigns the Windows Server VM a static IPv4 address
New-NetIPAddress -IPAddress 192.168.1.2 -DefaultGateway 192.168.1.1

# Assigns the Windows Server VM a DNS
Set-DNSClientServerAddress -InterfaceIndex 12 -ServerAddresses ("10.0.0.1", "10.0.0.2")

# Renames the Windows Server VM
Rename-Computer -NewName "SunToWater-Server"




# Creates Organizational Units (OU)

New-ADOrganizationalUnit -Name 'Marketing'
New-ADOrganizationalUnit -Name 'Finance'
New-ADOrganizationalUnit -Name 'HR'
New-ADOrganizationalUnit -Name 'Technology'
New-ADOrganizationalUnit -Name 'Information'
New-ADOrganizationalUnit -Name 'Operations'



# Marketing, Finance, HR, IT, Security

# Creates users
# The Active Directory module needs to be imported first

Import-Module Active Directory

New-ADUser -Name 'Bill Lumbergh' -UserPrincipalName 'blumberg@suntowater.com' -SamAccountName 'blumberg' -GivenName 'Bill' -Surname 'Lumbergh' -Title 'CEO' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Peter Gibbons' -SamAccountName 'pgibbens' -Title 'Chief Marketing Officer' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true -Path=

New-ADUser -Name 'Ron Weasley' -SamAccountName 'rweasley' -GivenName '' -Surname '' -Title 'Sr Mananger, Paid Media' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Harry Potter' -SamAccountName 'hpotter' -GivenName '' -Surname '' -Title 'Sr. Manager, SEO' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Hermione Granger' -SamAccountName 'hgranger' -GivenName '' -Surname '' -Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Bob Slydell' -SamAccountName 'bslydell' -GivenName '' -Surname '' -Title 'Sr. Manager, Communications' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Luca Paclioli' -SamAccountName 'lpaclioli' -GivenName '' -Surname '' -Title 'Senior Auditor' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Angela Martin' -SamAccountName 'amartin' -GivenName '' -Surname '' -Title 'Sr. Accountant' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Kevin Malone' -SamAccountName 'kmalone' -GivenName '' -Surname '' -Title 'Jr. Accountant' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Oscar Martinez' -SamAccountName 'omartinez' -GivenName '' -Surname '' -Title 'AP Administrator' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Minerva McGonagall' -SamAccountName 'mmcgonall' -GivenName '' -Surname '' -Title 'Exec VP-HR' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Sybill Trelawney' -SamAccountName 'strelawney' -GivenName '' -Surname '' -Title 'Director, Talent Acquisition' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Remus Lupin' -SamAccountName 'rlupin' -GivenName '' -Surname '' -Title 'Manager, Training and Development' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Serverus Snape' -SamAccountName 'snape' -GivenName '' -Surname '' -Title 'HR Business Partner' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Bade Habib' -SamAccountName 'bhabib' -GivenName '' -Surname '' -Title 'Chief Information Officer' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Samir Nagheenanajar' -SamAccountName 'snagheenanajar' -GivenName '' -Surname '' -Title 'Cheif Technology Officer' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'John Dorian' -SamAccountName 'jdorian' -GivenName '' -Surname '' -Title 'Senior Engineer' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Elliot Reid' -SamAccountName 'ereid' -GivenName '' -Surname '' -Title 'Frontend Developer' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Chris Turk' -SamAccountName 'cturk' -GivenName '' -Surname '' -Title 'Chris Turk' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true


New-ADUser -Name 'Courtney Hans' -SamAccountName 'chans' -GivenName '' -Surname '' -Title 'Chief Information Security Officer' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true


New-ADUser -Name 'Brian Krebs' -SamAccountName 'bkrebs' -GivenName '' -Surname '' -Title 'Director, Information Security' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Milton Waddams' -SamAccountName 'mwaddams' -GivenName '' -Surname '' -Title 'Facilities Manager' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Perry Cox' -SamAccountName 'pcox' -GivenName '' -Surname '' -Title 'Defensive Security Team' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Bob Kelso' -SamAccountName 'bkelso' -GivenName '' -Surname '' -Title 'Offensive Security Team' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Michael Scott' -SamAccountName 'mscott' -GivenName '' -Surname '' -Title 'Chief Operations Officer' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Dwight Schrute' -SamAccountName '' -GivenName '' -Surname '' -Title 'Divisional VP, Retail West' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Jim Halpert' -SamAccountName '' -GivenName '' -Surname '' -Title 'Divisional VP, Retail East' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Andy Bernard' -SamAccountName '' -GivenName '' -Surname '' -Title 'Regional Manager' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Kelly Kapoor' -SamAccountName '' -GivenName '' -Surname '' -Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Phyliss Lapin-Vance' -SamAccountName '' -GivenName '' -Surname '' -Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true

New-ADUser -Name 'Meredith Palmer' -SamAccountName '' -GivenName '' -Surname '' -Title '' -AccountPassword (Read-Host AsSecureString 'SunToWater123') -ChangePasswordAtLogon $true -Enabled $true


# Also here is the microsoft documentation on all the settings we can use for new-ADDUser https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee617253(v=technet.10)?redirectedfrom=MSDN

# Script to add a new user template # https://activedirectorypro.com/create-bulk-users-active-directory/

