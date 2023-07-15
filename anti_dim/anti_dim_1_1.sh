while true;
sleep 1
do
	# Print how many minutes left till click dim 1
		if [ $(( $(date +%s) % 60 )) -eq 0 ]
	then 
		echo $(( ( 360 - ( $(date +%s) % 360 ) ) / 60 ))
	fi

	# Click dim 1 (every 6 minutes)
	if [ $(( $(date +%s) % 360 )) -eq 0 ]
	then
		xdotool mousemove 1730 400
		xdotool click 1
		fi

	# Hot keys except sac		
	xdotool key m
	xdotool key g
	xdotool key d

	# Hot key for sac (every 20 min)
	if [ $(( $(date +%s) % 1200 )) -eq 0 ]
	then
		xdotool key s
	fi
done