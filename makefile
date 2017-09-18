LOGFILE = $(shell date --iso=seconds)
NUMBOFLINES = $(shell cat guessinggame.sh | wc -l)

README.md:
 echo "Project title: guessinggame" > README.md
 echo "Date of making file: "$(LOGFILE) >> README.md
 echo "Number of lines in guessinggame.sh: "$(NUMBOFLINES) >> README.md