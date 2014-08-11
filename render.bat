echo ...omzetting naar html
call asciidoctor "c:/syll-comparch/book_pcarch.asc" -o "c:/syll-comparch/pcarch.html" 

; -a stylesheet="rocket-panda.css" -a linkcss
echo ...omzetting naar html: done!

echo PUBLISH TO GHDOCS
 copy  c:\syll-comparch\pcarch.html c:\syll-comparch-ghpages\syll-comparch\html5\pcarch.html
 robocopy c:\syll-comparch\ch01 c:\syll-comparch-ghpages\syll-comparch\html5\ch01 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch02 c:\syll-comparch-ghpages\syll-comparch\html5\ch02 *.png *.jpg *.jpeg /mir 
 robocopy c:\syll-comparch\ch03 c:\syll-comparch-ghpages\syll-comparch\html5\ch03 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch04 c:\syll-comparch-ghpages\syll-comparch\html5\ch04 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch05 c:\syll-comparch-ghpages\syll-comparch\html5\ch05 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch06 c:\syll-comparch-ghpages\syll-comparch\html5\ch06 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch07 c:\syll-comparch-ghpages\syll-comparch\html5\ch07 *.png *.jpg *.jpeg /mir

 echo ...omzetting naar docbook
 call asciidoctor -b docbook45 "c:/syll-comparch/book_pcarch.asc" -o "c:/syll-comparch/pcarch.xml" 
echo ...omzetting naar docbook:done!
 echo ...omzetting naar PDF
 c:\fopub\asciidoctor-fopub\fopub c:\syll-comparch\pcarch.xml
 echo ... volledig klaar!




pause
