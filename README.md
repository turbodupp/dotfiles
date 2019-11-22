# awesomewm-config
My dotfiles:
awesome WM, subl3 ++


# Screenshots
![alt text](images/mainscreen.png?raw=true)
All screens:
![alt text](images/quadscreen.png?raw=true)
Wallpaper can be found in `images/` folder.


# Dependencies
| Dependence | Explanation |
|:-------:|:-------|
| scrot	| Used in screenshots script |
| trans | Used in translation scripts |
| xclip | Get selection for translation script |
| jq | Parse json in weather widget |
| lm_sensors | Temperature monitoring for system_info widget |
| feh | Set wallpaper (you need to choose image as wallpaper using feh) |
| notify-send | Notification sending |

Also, you need sign up on openweathermap.org and get API key for weather widget work.


# How to setup
1. Install awesome wm. You must have version 4.3 or higher:
	* Debian-based: `sudo apt install awesome`
	* Arch-based: `sudo pacman -S awesome`
2. Get dependencies:
Dont remember :(
3. Git clone configuration files in your config  directory and rename directory in awesome.
```bash
   cd .config
   git clone https://github.com/turbodupp/dotfiles
   figure it out smartboy
   ```