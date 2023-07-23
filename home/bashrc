#
# ~/.bashrc
#

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

#---------- PROMPT ----------

# PS1='[\u@\h \W]\$ '
PS1='\u @ \w >> '

#--------- AT LAUNCH --------

clear & 
pfetch

#------ CUSTOM SCRIPTS ------

shared-mount(){
	doas mount -t nfs 192.168.1.124:/mnt/Shared_Files/Shared_Files /media/Shared/  
}

music-mount(){
	doas mount -t nfs 192.168.1.124:/mnt/Secured_Media/Music /media/Music/  
}

movies-mount(){
	doas mount -t nfs 192.168.1.124:/mnt/Secured_Media/Movies /media/Movies/ 
}

series-mount(){
	doas mount -t nfs 192.168.1.124:/mnt/Secured_Media/Series /media/Series/  
}

r(){
	printf "Temp: "
	read temp
	redshift -P -O ${temp}
}
#--------- ALIASES ---------
alias l='zsh ~/.config/lf/lf-ueberzug'
alias m='pulsemixer'
alias s='startx'
