all: crear_readme

crear_readme:
	rm README.md
	echo "## Guessing Game" > README.md
	echo "" >> README.md
	echo "Make was run at:" >> README.md 
	date >> README.md
	echo "The number of lines of code contained in guessinggame.sh is:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "" >> README.md

