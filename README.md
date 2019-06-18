# DNS-Changer

Swap DNS servers from DHCP to static and vice-versa with this simple batch script.

Written by: [Nirmal](https://github.com/nirmal-k-r)

*History*
--------------------------

I made this small script to help me with the very tedious task of manually changing my DNS servers every time that I needed to switch between static DNS servers and automatically configured DNS servers using DHCP.


Requirements
------------------------
There are no requirements since:
 - It is coded in batch and should support any Windows version since DOS.
 - No additional languages or packages are required.

Configuration
-----------------------
1. Edit the script with nodepad or your favorite text editor.

2. Change the following values:   
    - dns1 `(Line 6)`
        - Change `1.1.1.1` to your first DNS server.

    - dns2 `(Line 7)`
        - Change `1.1.1.3` to your second DNS server.

    - adapter `(Line 7)` 
        - Change `Wi-Fi` to your required adapter name. _Write it between the quotes. Ex: "Write name here"_
        - You can find your adapter at 
        `Control Panel/Network and Internet/Network and Sharing Center/Change Adapter Settings`
        - Your adapter name can be:
            - `Ethernet` 
            - `Wi-Fi` 

Usage
-----------------
- Please do the configuration first. Then you can continue with the usage steps below.

- Run the script as __**Administrator**__ . You can do so by right clicking the `dns_swapper.bat` file and clicking `Run as Administrator` and clicking Yes to the prompt.