# **Always inspect code before using it**

This script is an exact duplicate of [Servers@Home](https://github.com/imjustleaving/ServersatHome)'s [*truenas-file-structure.sh*](https://github.com/imjustleaving/ServersatHome/blob/main/truenas-file-structure.sh) script with the addition of Lidarr, Readarr, and needed datasets and directories. Nothing more, nothing less.

### TrueNas Installation Guide
  1. Create Pool
  2. Apps -> Configuration -> Choose Pool
  3. System -> Shell
  4. Enter the following command
 ```
     sudo su
 ```
  5. Enter password as prompted.
  6. Enter
     ```
     wget https://raw.githubusercontent.com/r3ddd/HomeServer/refs/heads/main/onesteparr.sh
     ```
  7. Enter
     ```
     chmod +x onesteparr.sh
     ```
  8. Enter
     ```
     bash onesteparr.sh
     ```
  9. Enter name of pool when prompted.
  10. Enter "no" when prompted.
  11. Enter **Change P00L by the name of your pool**
      ```
      cd /mnt/P00L/docker
      ```
  12. Enter
      ```
      cat docker-compose.yml
      ```
  13. Copy the content of the file.
  14. Go to Apps
  15. Apps -> Dicover Apps -> Install via YAML (3 dots top right)
  16. Give whatever name you want
  17. Copy file content and save.

      It is going take a little while. They will appear as one application, but you will see all ports and containers in the worloads panel in the Apps tab.

### qBittorrent will not run until you set your vpn through wireguard
  1. System -> Shell
  2. ``` sudo su ```
  3. Enter password
  4.  ``` cd /mnt/P00L/configs/qbittorrent/wireguard ```  **Change P00L by the name of your pool**
  5.  nano wg0.conf
  6.  Paste in your wireguard configs. It should look something like this:
```
Key for ter
Bouncing = 4
NetShield = 1
Moderate NAT = on
NAT-PMP (Port Forwarding) = on
VPN Accelerator = on
PrivateKey = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Address = x.x.x.x/xx
DNS = xx.x.x.x

[Peer]
CA#893
PublicKey = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
AllowedIPs = 0.0.0.0/0
Endpoint = xxx.xx.xxx.xx:xxxxx]
```
  7. Save and exit.
  8. Enjoy ;)

