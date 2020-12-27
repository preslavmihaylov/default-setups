# Things to do manually
## Make mouse work correctly
System Preferences > Mouse > Point & Click  
 * Secondary click -> 'Click on right side'  
 * Disable 'Scroll direction: Natural'  

## Terminal special keys working
I'm using Alacritty as my default terminal over the default `Terminal` application.

Even if using Alacritty, still open the old terminal app for these.

Terminal > Preferences > Profiles > Basic > Keyboard  
 * Click plus and add options:  
   * Ctrl + Up -> \033[1;5A
   * Ctrl + Right -> \033[1;5C
   * Ctrl + Down -> \033[1;5B
   * Ctrl + Left -> \033[1;5D
 * Remove following options:
   * ⌥ + Right
 * Enable following checkboxes
   * Use Option as Meta key

System Preferences > Keyboard > Shortcuts  
 * Disable 'Mission Control/Mission Control'  
 * Disable 'Mission Control/Application windows'  

## Install Applications
Manually from website:
 * Install 'Google Chrome' from site  
 * Install 'flux' from site  
 * Install 'Spotify' from site  
 * Install 'Zoom' from site  

## Keyboard key repeat delay
System Preferences > Keyboard
 * Key repeat delay - max
 * Delay until repeat - 5 out of 6

## Disable CAPS LOCK
Follow steps in [this article](https://www.howtogeek.com/howto/38828/how-to-disable-caps-lock-on-mac-os-x/)

## Configure Spaces
On your touchpad, spread out three fingers to open the UI where spaces are configured.
Add three spaces in total from the top bar. These will stay even after laptop is restarted.

System Preferences > Keyboard > Shortcus
 * Mission Control > Move Left a Space - Ctrl+Cmd+Left
 * Mission Control > Move Right a Space - Ctrl+Cmd+Right
