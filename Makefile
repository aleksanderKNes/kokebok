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


food: all

clean:
	rm *.aux \
	*.fdb_latexmk \
	*.fls \
	*.log \
	*.out \
	
