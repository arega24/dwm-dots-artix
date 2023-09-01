#!/usr/bin/env sh

rofi_command="rofi -demenu -i -theme /home/arega/.config/rofi/scripts-script.rasi"

### Options ### 
one="USB's" 
too="Mixer" 
three="Calculator" 
four="Wifi" 
five="Games" 

# Variable passed to rofi 
options="$one\n$four\n$too\n$three\n$five"   

case "$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)" in     
	$one)         
	    ~/.config/scripts/rofi-usb-mount.sh	
		;;     
	$too)         
	    ~/.config/scripts/rofi-mixer.sh	
		;;     
	$three)         
		rofi -show calc -no-show-match -no-sort -display-calc "Calc: " 		
		;;     
	$four)         
	    ~/.config/scripts/rofi-wifi-menu-NM.sh	
		;;     
	$five)         
	    ~/.config/scripts/rofi-term-games-script.sh
		;;     
esac
