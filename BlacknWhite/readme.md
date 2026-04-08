# Black and White or Monochrome

Arch Linux
![image](./images/sample.png)

Windows  
![image](./images/sample(windows).png)

# For Arch Linux
Execute the following command:
```
./set-bw.sh
```

# For Windows
Execute the following command:
```
./set-bw.ps1
```

### For Firefox config
~~Replace [your_profile_directory] with your actual profile directory. Please see your profile by inputting this into the address bar `about:profiles` and copy & paste the root directory of the profile in use.~~

Please see your firefox profile by inputting this into the address bar `about:profiles` and take note of the profile in use as it will be later on used in the installation script.

### For updating Spotify/Spicetify
 - update [SpotX](https://github.com/SpotX-Official/SpotX)
 - update [Spicetify](https://spicetify.app/docs/getting-started)
 - follow the instructions to install the TUI look of Spotify [here](https://github.com/AvinashReddy3108/spicetify-tui)
 - and overwrite or copy-paste the contents of the TUI folder in this repo to the Spotify PATH


### Bugs
Hyprspace may suddenly not work. If so, try this:
```
hyprpm update
hyprpm add https://github.com/KZDKM/Hyprspace
hyprpm enable Hyprspace
```

If it still does not work, then, try to follow these instructions from this [commit](https://github.com/Luc1l1us/.dotfiles/issues/151)

### Themes yoinked/copied from
[Discord](https://github.com/refact0r/system24)  
[Spotify](https://github.com/AvinashReddy3108/spicetify-tui)
[GRUB](https://github.com/vinceliuice/Elegant-grub2-themes)
