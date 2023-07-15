# Store starting time for reference later
origin=$(date +%s)

while true;

seconds=$(( $(date +%s) - origin ))
rtime="$((seconds/86400))d $((seconds%86400/3600))h $((seconds%3600/60))m $((seconds%60))s"

#sleep 1

do
	#Run only if in  game
	if [[ $(xdotool getactivewindow getwindowname) == "Antimatter Dimensions - Google Chrome" ]]
	then
		# Print if in game or not with number of seconds since script started
		echo -en "\r\e[KIn Antimatter Dimensions - $rtime"
		# Hot keys except sac
		#xdotool key c		
		#xdotool key g
		#xdotool key d
		xdotool key m	
		#xdotool key s
		
		# Hot key for sac (every 1 min)
		#if [ $(( $(date +%s) % 30 )) -eq 0 ]
		#then
			#xdotool key s
		#fi
		
	else
		echo -en "\r\e[KNot in Antimatter Dimensions - $rtime"
	fi
	
done