powershell.exe -Command {Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP-PUBLIC" -Action Block}
powershell.exe -Command {Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP" -Action Block }

C:/windows/system32/sysprep/sysprep.exe /generalize /oobe /unattend:C:/sysprep.xml /quiet /shutdown