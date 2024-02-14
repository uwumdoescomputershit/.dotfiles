hour=$(date +%H)

if [ $hour -gt 3 ] && [ $hour -lt 12 ] 
then
  echo "Morning"

elif [ $hour -gt 11 ] && [ $hour -lt 15 ] 
then
  echo "Day"

elif [ $hour -gt 14 ] && [ $hour -lt 18 ]
then
  echo "Afternoon"

elif [ $hour -gt 17 ] && [ $hour -lt 23 ]
then 
  echo "Evening"

else
  echo "Night"

fi
