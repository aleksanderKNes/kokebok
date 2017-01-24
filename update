#!/bin/bash

basename -s .tex oppskrifter/*.tex | sed 's/^/\\include{oppskrifter\//' | sed 's/$/}/' > sorterteOppskrifter.tex
basename -s .tex oppskrifter/desert/*.tex | sed 's/^/\\include{oppskrifter\/desert\//' | sed 's/$/}/' > sorterteDeserter.tex
basename -s .tex oppskrifter/brygg/*.tex | sed 's/^/\\include{oppskrifter\/brygg\//' | sed 's/$/}/' > sorterteBrygg.tex

