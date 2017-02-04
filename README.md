![](https://travis-ci.org/FredrikLindseth/kokebok.svg?branch=master)

# kokeboken til Fredrik
Dette er LATEXversjonen av kokeboken/oppskriftene jeg har samlet sammen og lager til dagen. Denne finnes i PDFform og i EPUB, for eboklesere.

FredrikSinKokebok.pdf i rotmappen er output fra kokebox.tex som er hovedfilen. Den enkleste måten å bygge denne filen er ved å kjøre 'make food'

sorterte*.tex er filer som inneholder oppskrifter i ulike undermapper som /oppskrifter/desert og /oppskrifter/brygg. Disse sorterte-filene bygges automatisk ved å kjøre 'make food', eller manuellt ved å kjøre 'make update-dirty'

Ved å kjøre 'make food' vil listen over inkluderte oppskrifter bli oppdatert, PDF bygget og åpnet i evince (gnome PDF viewer)

Ved å utføre kommandoen "make ebok" vil en EPUB-fil ble generert. Denne eboken har noen feil, som at alle brøker vises som \frac{1}{2}, sist oppdatert dato som \today og merkelapper som \label{lussekatter}.
