echo ...omzetting naar html
call asciidoctor "c:/syll-comparch/book_pcarch.asc" -o "c:/syll-comparch/pcarch.html" -a stylesheet="riak.css" -a linkcss
echo ...omzetting naar html: done!

echo PUBLISH TO GHDOCS
 copy  c:\syll-comparch\pcarch.html c:\syll-comparch-ghpages\syll-comparch\html5\pcarch.html
 robocopy c:\syll-comparch\ch01 c:\syll-comparch-ghpages\syll-comparch\html5\ch01 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch02 c:\syll-comparch-ghpages\syll-comparch\html5\ch02 *.png *.jpg *.jpeg /mir 
 robocopy c:\syll-comparch\ch03 c:\syll-comparch-ghpages\syll-comparch\html5\ch03 *.png *.jpg *.jpeg /mir

 echo ...omzetting naar docbook
 call asciidoctor "c:/syll-comparch/book_pcarch.asc" -o "c:/syll-comparch/pcarch.xml" -b docbook5
echo ...omzetting naar docbook:done!
 echo ...omzetting naar PDF
 c:\fopub\asciidoctor-fopub\fopub c:\syll-comparch\pcarch.xml
 echo ... volledig klaar!




pause
