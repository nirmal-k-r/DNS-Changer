@ECHO OFF
Rem This batch script must be run as administrator and is intended for use with Windows.
Rem Change the values of dns1 and dns2 with the DNS Servers that you need.
Rem Change the value of the adapter to the network adapter that you want to apply the DNS settings to. 
Rem you can check the adapter at [Control Panel/Network and Internet/Network and Sharing Center/Change Adapter Settings]
SET dns1=1.1.1.1
SET dns2=1.1.1.3
SET adapter="Wi-Fi"

@ECHO OFF
netsh interface ip show config "Wi-Fi" | findstr "Statically"
if %ERRORLEVEL% equ 0 (
 rem echo Found static DNS settings. Swapping to DHCP.
 goto local
 
) else (
 rem echo Found DHCP DNS settings. Swapping to static configuration.
 goto setter 
)

:local
echo Local Dns Settings loaded
netsh interface ipv4 set dns %adapter% dhcp
echo New DNS Settings:
netsh interface ip show config %adapter%
pause
goto end

:setter
echo Swapping Dns settings
netsh interface ip delete dnsservers %adapter% all
netsh interface ip add dns name=%adapter% addr=%dns1% index=1
netsh interface ip add dns name=%adapter% addr=%dns2% index=2

echo "New DNS Settings:"
netsh interface ip show config %adapter%
pause

goto end
:end