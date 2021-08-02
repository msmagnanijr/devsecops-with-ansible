REM https://www.howtogeek.com/howto/windows-vista/allow-pings-icmp-echo-request-through-your-windows-vista-firewall/

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" Enable-PSRemoting -SkipNetworkProfileCheck
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" netsh advfirewall firewall add rule name="WinRM" dir=in localport=5986 protocol=TCP action=allow
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False