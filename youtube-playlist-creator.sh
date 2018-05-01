#!/bin/bash
clear

input="urls"
inputArray=()

# create an array of youtube urls
while [ "$input" != "0" ] 
do 
	read -p "Enter Youtube URL to add to List (enter 0 to finish): " input
	if [ "$input" != "0" ] # don't want to store 0
	then 
		inputArray+=("$input")
	fi
done

# add youtube URLS to a list.txt
for arg in "${inputArray[@]}"; do
	[ ! -z "$arg" ] && printf "%s\n" "$arg" # for debugging
	printf "%s\n" "${inputArray[@]}" > ./list.txt
done

# optionally start downloading of playlist
# requires youtube-dl (brew install youtube-dl)
start=""
read -p "Start Download? (Y/N): " start
if [ "$start" = "Y" ] || [ "$start" = "y" ]
then
	# create a folder these files will save to
	timestamp=$( date +"%Y-%m-%d_%H:%M:%S" )
	mkdir "$timestamp"
	cd "$timestamp"

	echo "Starting download..."
	youtube-dl -ct --batch-file='../list.txt' -f 'bestvideo[ext!=webm]+bestaudio[ext!=webm]/best[ext!=webm]'

fi
