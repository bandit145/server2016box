#winrm config from vagrant site
Enable-PSRemoting -Force
Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP-PUBLIC" -RemoteAddress Any
Set-WSManInstance -ResourceURI winrm/config/winrs -ValueSet @{MaxMemoryPerShellMB="512"}
Set-WSManInstance -ResourceURI winrm/config -ValueSet @{MaxTimeoutms="1800000"}
Set-WSManInstance -ResourceURI winrm/config/service -ValueSet @{AllowUnencrypted="true"}
Set-WSManInstance -ResourceURI winrm/config/service/auth -ValueSet @{Basic="true"}