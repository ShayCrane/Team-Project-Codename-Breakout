<# Ops 301 Final Script

 This script will deploy a fully automated Windows 2019 Server as Domain Controller with organization units and units provisioned.
 #> 
# 

# Installs AD-Domain-Services
Install-WindowsFeature AD-Domain-Services, DNS -IncludeManagementTools

# Creates an AD Forest
Install-ADDSForest -DomainName SunToWater.com -DomainMode WinThreshold -DomainNetbiosName CORP

# RESEARCH: Restart Computer -Force see if need to be in the code

# Assigns the Windows Server VM a static IPv4 address
New-NetIPAddress -IPAddress 192.168.1.2 -DefaultGateway 192.168.1.1

# Assigns the Windows Server VM a DNS
Set-DNSClientServerAddress -InterfaceIndex 12 -ServerAddresses ("10.0.0.1", "10.0.0.2")

# Renames the Windows Server VM
Rename-Computer -NewName 'SunToWater-Serv'


# Creates Organizational Units (OU)
New-ADOrganizationalUnit -Name 'Marketing'
New-ADOrganizationalUnit -Name 'Finance'
New-ADOrganizationalUnit -Name 'HR'
New-ADOrganizationalUnit -Name 'Technology'
New-ADOrganizationalUnit -Name 'Information'
New-ADOrganizationalUnit -Name 'Operations'


# Creates users
Import-Module ActiveDirectory

New-ADUser -Name 'Bill Lumbergh' -UserPrincipalName 'blumberg@suntowater.com' -SamAccountName 'blumberg' -GivenName 'Bill' -Surname 'Lumbergh' -Title 'CEO' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false 

New-ADUser -Name 'Peter Gibbons' -SamAccountName 'pgibbens' -Title 'Chief Marketing Officer' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false 

New-ADUser -Name 'Ron Weasley' -SamAccountName 'rweasley' -GivenName 'Ron' -Surname 'Weasley' -Title 'Sr Mananger, Paid Media' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Harry Potter' -SamAccountName 'hpotter' -GivenName 'Harry' -Surname 'Potter' -Title 'Sr. Manager, SEO' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Hermione Granger' -SamAccountName 'hgranger' -GivenName 'Hermione' -Surname 'Granger' -Title 'Sr. Manager, Communications' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Bob Slydell' -SamAccountName 'bslydell' -GivenName 'Bob' -Surname 'Slydell' -Title 'Sr. Manager, Communications' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Luca Paclioli' -SamAccountName 'lpaclioli' -GivenName 'Luca' -Surname 'Paclioli' -Title 'Senior Auditor' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Angela Martin' -SamAccountName 'amartin' -GivenName 'Angela' -Surname 'Martin' -Title 'Sr. Accountant' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Kevin Malone' -SamAccountName 'kmalone' -GivenName 'Kevin' -Surname 'Malone' -Title 'Jr. Accountant' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Oscar Martinez' -SamAccountName 'omartinez' -GivenName 'Oscar' -Surname 'Martinez' -Title 'AP Administrator' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Minerva McGonagall' -SamAccountName 'mmcgonall' -GivenName 'Minerva' -Surname 'McGonagll' -Title 'Exec VP-HR' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Sybill Trelawney' -SamAccountName 'strelawney' -GivenName 'Sybill' -Surname 'Trelawney' -Title 'Director, Talent Acquisition' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Remus Lupin' -SamAccountName 'rlupin' -GivenName 'Remus' -Surname 'Lupin' -Title 'Manager, Training and Development' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Serverus Snape' -SamAccountName 'snape' -GivenName 'Serverus' -Surname 'Snape' -Title 'HR Business Partner' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Bade Habib' -SamAccountName 'bhabib' -GivenName 'Bade' -Surname 'Habib' -Title 'Chief Information Officer' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Samir Nagheenanajar' -SamAccountName 'snagheenanajar' -GivenName 'Samir' -Surname 'Magheenanajar' -Title 'Cheif Technology Officer' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'John Dorian' -SamAccountName 'jdorian' -GivenName 'John' -Surname 'Dorian' -Title 'Senior Engineer' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Elliot Reid' -SamAccountName 'ereid' -GivenName 'Wlliot' -Surname 'Reid' -Title 'Frontend Developer' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Chris Turk' -SamAccountName 'cturk' -GivenName 'Chris' -Surname 'Turk' -Title 'Chris Turk' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Courtney Hans' -SamAccountName 'chans' -GivenName 'Courtney' -Surname 'Hans' -Title 'Chief Information Security Officer' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Brian Krebs' -SamAccountName 'bkrebs' -GivenName 'Brian' -Surname 'Krebs' -Title 'Director, Information Security' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Milton Waddams' -SamAccountName 'mwaddams' -GivenName 'Milton' -Surname 'Waddams' -Title 'Facilities Manager' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Perry Cox' -SamAccountName 'pcox' -GivenName 'Perry' -Surname 'Cox' -Title 'Defensive Security Team' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Bob Kelso' -SamAccountName 'bkelso' -GivenName 'Bob' -Surname 'Kelso' -Title 'Offensive Security Team' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Michael Scott' -SamAccountName 'mscott' -GivenName 'Micheal' -Surname 'Scott' -Title 'Chief Operations Officer' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Dwight Schrute' -SamAccountName 'dschrute' -GivenName 'Dwight' -Surname 'Schrute' -Title 'Divisional VP, Retail West' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Jim Halpert' -SamAccountName 'jhalpert' -GivenName 'Jim' -Surname 'Halpert' -Title 'Divisional VP, Retail - East' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Andy Bernard' -SamAccountName 'abernard' -GivenName 'Andy' -Surname 'Bernard' -Title 'Regional Manager - Washington, Idaho, Montana' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Kelly Kapoor' -SamAccountName 'kkapoor' -GivenName 'Kelly' -Surname 'Kapoor' -Title 'Regional Manager - New York, New Jesey, Connecticut' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Phyliss Lapin-Vance' -SamAccountName 'plapinvance' -GivenName 'Phyliss' -Surname 'Lapin-Vance' -Title 'Regional Manager -California, Oregon' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false

New-ADUser -Name 'Meredith Palmer' -SamAccountName 'mpalmer' -GivenName 'Meredith' -Surname 'Palmer' -Title 'Regional Manager - Florida, Georgia, Carolinas' -AccountPassword(Read-Host -AsSecureString "SunToWater123") -Enabled $true -ChangePasswordAtLogon $false


# Also here is the microsoft documentation on all the settings we can use for new-ADDUser https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee617253(v=technet.10)?redirectedfrom=MSDN

# Script to add a new user template # https://activedirectorypro.com/create-bulk-users-active-directory/

