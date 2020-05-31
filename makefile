all: README.md

README.md:
	echo '## Unix Workbench assignment by Disha Bundela.' > README.md
	echo '`README.md` was created using `makefile` at $(shell date).' >> README.md
	echo '\n'
	echo 'Number of lines in `guessinggame.sh` is $(shell wc -l guessinggame.sh | egrep -o "[0-9]+").' >> README.md	
