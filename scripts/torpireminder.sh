#Reminder script to remind me to update my pi tor relay
#



lastCheck=$(cat ~/.config/scripts/fileoutputs/torpilastchecked)
currentDate=$(date +%j)
checkIncrement=3 #How often you sould be reminded (in days)
lastCheckIncrement=$(expr $lastCheck + $checkIncrement)


if [ $lastCheckIncrement -gt $currentDate ] 
  then
    :
else 
  printf "You haven't checked in on your rpi tor node in over $checkIncrement days! \nYou should ssh into it using the command 'torpiconnect' and do a pacman -Syu."
fi
