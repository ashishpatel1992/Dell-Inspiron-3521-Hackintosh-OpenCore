# Dell Inspiron 3521 Hackintosh OpenCore

Dell Inspiron 3521 Hackintosh OpenCore Guide


## Installation Guide Followed
OpenCore Install Guide https://dortania.github.io/OpenCore-Install-Guide/

## System Configuration
Default Dell Inspiron 3521
- Audio Device ALC3221 --> ALC282
- Intel i5 3337U - Ivy Bridge
- AMD 7670M (dGPU)
- Intel HD4000 (iGPU)
- Dell Wireless 1703 (AR9485)

## Installation

On Windows:-

Download [gibMacOS ](https://github.com/corpnewt/gibMacOS) and save it in a directory with atleast 10GB of space available, as we will be downloading the MAC OS installation

```bash
> gibMacOS.bat
```
When prompted choose the MAC version you want to download. You can follow the [installation  Guide](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/winblows-install.html)

I have used `10.15.6 macOS Catalina`

Once you have completed the above guide, you need to delete all the files from `BOOT` drive and replace the contents with this repository.

**IMPORTANT**
You need to download [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS) and run it with `GenSMBIOS.bat` and follow [this guide](https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/ivy-bridge.html#platforminfo), Scroll to platforminfo and use `MacBookPro9,2`. Rest you dont need to bother.
 
Now rebooting your system Press `F12` to enter boot menu and select USB Drive to boot. Soon Installer will run.

You will need internet connection to download MAC Installer, so keep your laptop connected with LAN Cable with High Speed Internet Connection.

Since I have already compiled everything for you. You dont need to install any drivers. After installation you will always need this USB to boot into MACOS.

I will update this guide as I explore more on booting from Harddisk EFI.

## What is working
- Intel HD4000 (iGPU)
- Audio (sound little low than normal, but you can always use external speakers)
- LAN
- WiFi (Although Speed is not more than 3-4 Mbps, you can achieve 11Mbps MAX)
- External Monitor using HDMI
- Screen Resolution (max I have achieved 2560x1080 using LG ultrawide monitor)
- USB Controller
- System Trackpad and keyboard
- Tested USB Keyboard and Mouse
- USB Android Tethering (Install [HoRNDIS](https://joshuawise.com/horndis), you also need to disable system integrity protection (SIP). For this first boot to recovery using `sudo nvram "recovery-boot-mode=unused"` and `sudo reboot`, Once you are in recovery open terminal `csrutil disable` and reboot. Once you are back to your MAC `sudo mount -uw /` and now run HoRNDIS Installer)

## What is not working
- Bluetooth (It will display bluetooth, but it doesnt work)
- AMD 7670 (Although it shows but not sure if it works, will test more and update)
- Card Reader
- Sleep may cause issue, so goto `System Preferences > Energy Saver`, set `Computer sleep` and `Display sleep` to never and uncheck Wake for network access
- if anything else is not working let me know by creating new issue

## References & Special thanks to
- [OpenCore](https://dortania.github.io/OpenCore-Install-Guide/)
- [Boot to Recovery](https://apple.stackexchange.com/questions/367336/macos-boot-to-recovery-mode-command-line)
- [gibMacOS ](https://github.com/corpnewt/gibMacOS)
- [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS)
- [Atheros Driver AR9485] (https://github.com/ipang-dwi/atheros)


## Contributers
Following members have contributed to this project
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
   <tr>
      <td align="center"><a href="https://ashishpatel.dev"><img src="https://avatars3.githubusercontent.com/u/652311?v=4" width="100px;" alt=""/><br /><sub><b>Ashish Patel</b></sub></a></td>
   </tr>
   
   
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

## License
[MIT](https://choosealicense.com/licenses/mit/)