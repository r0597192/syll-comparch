echo ...omzetting naar html
call asciidoctor "c:/syll-comparch/book_pcarch.asc" -o "c:/PCarch/pcarch.html" 
echo ...omzetting naar html: done!
echo ...omzetting naar docbook
call asciidoctor "c:/syll-comparch/book_pcarch.asc" -o "c:/PCarch/pcarch.xml" -b docbook
echo ...omzetting naar docbook:done!
echo ...omzetting naar PDF
c:\fopub\asciidoctor-fopub\fopub c:\syll-comparch\pcarch.xml
echo ... volledig klaar!
pause
