#!/usr/bin/env sh

rofi_command="rofi -demenu -i -theme /home/arega/.config/rofi/powermenu.rasi"

### Options ### 
power_off="Shutdown" 
reboot="Reboot" 
lock="Lock" 
suspend="Sleep" 
#log_out="Logout"

# Variable passed to rofi 
options="$power_off\n$reboot\n$lock\n$suspend"  #\n$log_out" 

case "$(echo "$options" | $rofi_command -dmenu -selected-row 2)" in     
	$power_off)         
		sudo shutdown -P now       
		;;     
	$reboot)         
		sudo shutdown -r now      
		;;     
	$lock)         
		xsecurelock 		
		;;     
	$suspend)         
		xsecurelock & sudo zzz
		;;     
#	$log_out)         
#		arega quit         
#		;; 
esac
