all: build run

build:
	#Update all sorterteOppskrifter* to include new recipies
	./update.sh

	#Build a PDF with pdflatex
	pdflatex -jobname=KokebokenTilFredrik kokebok.tex

run:
	# Using evince/Gnome PFD reader for PDF viewing
	evince KokebokenTilFredrik.pdf &

update_dirty:
	./update.sh

#oppdater:
#	basename -s .tex oppskrifter/*.tex | sed 's/^/\\include{oppskrifter\//' | sed 's/$/}/' > sorterteOppskrifter.tex
	#todo \ foran include kommer ikke med i resultatet
	#todo det er noe gale med uttrykket "sed 's/$/}/'" } kommer ikke med og får feil:
		#sed: -e expression #1, char 4: unterminated `s' command
		#Makefile:13: recipe for target 'oppdater' failed

food: all
	#alias target

ebook: ebok
	#alias target

ebok:
	#Update all sorterteOppskrifter* to include new recipies
	./update.sh

	#Expanding the main.tex to include all \includes in one big file
	perl latexpand kokebok.tex > kokebok-expanded.tex

	#Convertering the main.tex to epub
	pandoc -f latex -t epub -o KokebokenTilFredrik.epub kokebok-expanded.tex

clean:
	rm *.aux
	rm *.toc
	rm *.idx
	rm *.ilg
	rm *.ind
	rm *.log
	rm *.out
	rm kokebok-expanded.tex
	rm kokebok-expanded.pdf
