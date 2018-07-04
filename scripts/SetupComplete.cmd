powershell.exe -Command {Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP-PUBLIC" -Action Allow }
powershell.exe -Command {Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP" -Action Allow }