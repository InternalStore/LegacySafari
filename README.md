# LegacySafari
<img src="https://github.com/InternalStore/LegacySafari/blob/main/Banner.png?raw=true" alt="" width="980"/>  

## Description
LegacySafari is a script which will enable the legacy tab bar in Safari on macOS Monterey. This is made possible thanks to the research done by Twitter user [Zhuowei Zhang](https://www.twitter.com/zhuowei). This script just automates that process so that users can quickly and easily enable the legacy tab bar in Safari. Please be careful with this script, as it is brand new and has not been tested on a variety of devices. It is *highly reccomended* that you create a backup before running the script in case anything is corrupted.

## Installation
Launch Terminal and run the following commands as root:  

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/InternalStore/LegacySafari/HEAD/Safari.plist)"
```

1. `cd /Downloads/`
2. `git clone https://github.com/InternalStore/LegacySafari.git`  
3. `cd /Downloads/LegacySafari/`
4. `chmod +x LegacySafari.sh`
5. `./LegacySafari.sh`

## Changelog
**1.0 (Initial Release)**  
  *  Creates the /Library/Preferences/FeatureFlags/Domain/ directory
  *  Implements Safari.plist within that directory
  *  Implements the legacy tab bar in Safari
  *  Offers a built-in uninstallation option for quick and easy removal

## Information
Developer   
**Internal Store**  
  
Size  
**4 KB**  
  
Category  
**Shell Script**  
  
Compatibility  
**macOS Monterey Developer Beta 1+**  
  
Languages  
**English**  
  
Copyright  
**© 2021**  
  
  
[Internal Store on Twitter](https://www.twitter.com/InternalStore)  
[Internal Store on The iPhone Wiki](https://www.theiphonewiki.com/wiki/User:InternalStore)  
[Donate via PayPal](https://paypal.me/BreckenLusk)
