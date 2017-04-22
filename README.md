![](https://travis-ci.org/FredrikLindseth/kokebok.svg?branch=master)

# Kokeboken til Fredrik
Dette er LATEXversjonen av oppskriftene jeg har samlet sammen og lager til dagen. Denne finnes i PDFform og i EPUB, for eboklesere.

[FredrikSinKokebok.pdf](KokebokenTilFredrik.pdf) i rotmappen er PDFen som bygges fra [kokebox.tex](kokebok.tex) som er hovedlatexfilen.
Alle oppskriftene ligger i egne filer under [Oppskrifter](oppskrifter). Den enkleste måten å lage en oppdatert utgave denne PDFen er å kjøre kommandoen `make food`. For siste versjon av PDFen se [github.com/FredrikLindseth/kokebok/releases/latest](https://github.com/FredrikLindseth/kokebok/releases/latest), Travis holder denne oppdatert kontinuerlig.


## Nye oppskrifter
For å ligge til nye oppskrifter er det enklest å kopiere [oppskriftsmal.tex](oppskrifter/oppskriftsmal.tex) og tilpasse den oppskiften for så å lagre den enten under /oppskrifter/ eller en passende undermappe.

## Oppdatering av oppskriftslisten
sorterteOppskrifter.tex, sorterteDeserter.tex og sorterteBrygg.tex er filer som inneholder oppskriftene fra   undermappene som /oppskrifter/desert og /oppskrifter/brygg. Disse sorterte-filene bygges automatisk når man kjører `make food`, eller manuellt ved å kjøre `make update-dirty`. Disse instruksfilene holder oppskriftene i alfabetisk orden i kokeboken.

Ved å kjøre `make food` vil listen over inkluderte oppskrifter bli oppdatert, en PDF satt sammen for videre å bli åpnet i evince (gnome PDF viewer).

## Ebokutgave
Ved å utføre kommandoen `make ebok` vil en EPUB-fil ble generert. Denne eboken har noen feil som kommer av konverteringen fra latex til EPUB, som at alle brøker vises som `\frac{1}{2}`, sist oppdatert dato som `\today` og merkelapper som `\label{lussekatter}`.

#### English
This is the LATEX version of my recipies. Everything is in Norwegian, but the output can be viewed  [here](KokebokenTilFredrik.pdf)
