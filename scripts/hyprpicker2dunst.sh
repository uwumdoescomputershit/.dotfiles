##############################################################################################################################
#                                                                     #####                                                  #
#   #    # #   # #####  #####  #####  #  ####  #    # ###### #####  #     # #####  #    # #    #  ####  #####                #
#   #    #  # #  #    # #    # #    # # #    # #   #  #      #    #       # #    # #    # ##   # #        #                  #
#   ######   #   #    # #    # #    # # #      ####   #####  #    #  #####  #    # #    # # #  #  ####    #                  #
#   #    #   #   #####  #####  #####  # #      #  #   #      #####  #       #    # #    # #  # #      #   #                  #
#   #    #   #   #      #   #  #      # #    # #   #  #      #   #  #       #    # #    # #   ## #    #   #                  #
#   #    #   #   #      #    # #      #  ####  #    # ###### #    # ####### #####   ####  #    #  ####    #                  #
#                                                                                                                            #
##############################################################################################################################

############################################################
#Takes the Output of Hypripicker, displays it using Dunst and writes it into a text file (default: ~/scripts/filoutputs/hyprpickerOutput)
############################################################

outputLocation=~/.config/scripts/fileoutputs/

if test -e $outputLocation/HyprpickerOutputs; then
    echo "Output Location found at " "$outputLocation"
  else
    echo "No Output File found, creating new one at $outputLocation"
    mkdir -p $outputLocation
    touch $outputLocation/HyprpickerOutputs
    echo "Hyprpicker Outputs: " >> $outputLocation/HyprpickerOutputs
fi

hyprpickerOutput=$(hyprpicker)

notify-send "Hyprpicker Output:" $hyprpickerOutput

dateTime=$(date +"%a %d %r")

printf "[$dateTime] Picked Colour: $hyprpickerOutput \n" >> $outputLocation/HyprpickerOutputs


