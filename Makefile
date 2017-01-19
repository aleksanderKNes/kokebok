all: update_dirty build run

build:
	pdflatex -jobname=KokebokenTilFredrik kokebok.tex

run:
	# Using evince/Gnome PFD reader for PDF viewing
	evince KokebokenTilFredrik.pdf &
update_dirty:
	./update.sh

oppdater:
	basename -s .tex oppskrifter/*.tex | sed 's/^/\\include{oppskrifter\//' | sed 's/$/}/' > sorterteOppskrifter.tex
	#todo \ foran include kommer ikke med i resultatet
	#todo det er noe gale med uttrykket "sed 's/$/}/'" } kommer ikke med og får feil:
		#sed: -e expression #1, char 4: unterminated `s' command
		#Makefile:13: recipe for target 'oppdater' failed

food: all

expand: update_dirty
	perl latexpand kokebok.tex > kokebok-expanded.tex

ebok: expand
	pandoc -f latex -t epub -o KokebokenTilFredrik.epub kokebok-expanded.tex

clean:
	rm *.aux \
	*.toc \
	*.idx \
	*.ilg \
	*.ind \
	*.log \
	*.out \
	kokebok-expanded.tex

