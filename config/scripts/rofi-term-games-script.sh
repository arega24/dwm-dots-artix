#!/usr/bin/env sh

rofi_command="rofi -demenu -i -theme /home/arega/.config/rofi/scripts-script.rasi"

### Options ### 
one="Nudoku" 
too="Bastet" 
three="nSnake" 
four="2048"
five="Ninvaders"
six="Greed"
seven="MyMan"

# Variable passed to rofi 
options="$one\n$four\n$too\n$three\n$four\n$five\n$six\n$seven"   

case "$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)" in     
	$one)         
	    urxvt -e nudoku
		;;     
	$too)         
	    urxvt -e bastet
		;;     
	$three)         
	    urxvt -e nsnake
		;;     
	$four)         
	    urxvt -e bash2048
		;;     
	$five)         
	    urxvt -e ninvaders
		;;     
	$six)         
	    urxvt -e dreed
		;;     
	$seven)         
	    urxvt -e myman
		;;     
esac
