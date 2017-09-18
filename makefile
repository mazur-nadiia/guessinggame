LOGFILE=$(LOGPATH) `date +'%y.%m.%d %H:%M:%S'`
guessinggame: guessingame.sh
	gcc -o guessinggame guessingame.sh -I.