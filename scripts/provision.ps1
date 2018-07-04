$ErrorActionPreference = "Stop"

#import securuity config that bypasses password complexity
secedit /configure /db C:\Windows\security\new.sdb /cfg A:\sec_conf.cfg /areas SECURITYPOLICY
#Set vagrant user password

#install choco
choco install -y vboxguestadditions.install
Install-PackageProvider -Name NuGet -Force
Install-Module -Name PSWindowsUpdate -Confirm:$false -Force
Import-Module -Name PSWindowsUpdate
#Get all updates
Get-WindowsUpdate -WindowsUpdate -AcceptAll -UpdateType Software -IgnoreReboot -Download -Install

Copy-Item A:\sysprep.xml C:\sysprep.xml
New-Item -Type Directory -Path C:\Windows\Setup\Scripts\
Copy-Item A:\SetupComplete.cmd C:\Windows\Setup\Scripts\SetupComplete.cmd