# Things to do manually
## Make mouse work correctly
System Preferences > Mouse > Point & Click  
 * Secondary click -> 'Click on right side'  
 * Disable 'Scroll direction: Natural'  

## Add Bulgarian Phonetic
System Preferences > Keyboard > Input Sources  
 * '+' -> 'Bulgarian Phonetic'  

## Close terminal on exit
Terminal > Preferences > Profiles > Basic > Shell  
 * 'When the shell exits' -> 'Close if the shell exited cleanly'  

## Change terminal colors
Terminal > Preferences > Profiles > Basic  
 * Background -> rgb(28, 28, 28)  
 * Text -> White  
 * Bold Text -> Cyan  
 * Selection -> Orange  
 * Cursor -> White (60% Opacity)  

## Terminal special keys working
Even if you're using Alacritty, still open the old terminal app for these.

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
 * Disable 'Mission Control/Move left a space'  
 * Disable 'Mission Control/Move right a space'  

## Customize Terminal Colors for Mac
`vim ~/.bash_aliases`  
 * Change the 'HOST_CLR' line  

## Install Applications
App Store > Search
 * Install 'Microsoft OneNote' 
 * Install 'all-in-one Messenger'  
 * Install 'Lightshot Screenshot'  

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
