#!/bin/bash

echo start building html5 export 
asciidoctor "book_pcarch.asc" -o "pcarch.html"
echo finished building html5 export
