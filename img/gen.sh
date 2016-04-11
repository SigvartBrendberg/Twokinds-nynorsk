#!/bin/bash

rm -rf img
mkdir img
cd img
maks=0
cp /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/fyrste.png /home/sigvart/twogen/img/
cp /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/forre.png /home/sigvart/twogen/img/
cp /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/neste.png /home/sigvart/twogen/img/
cp /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/siste.png /home/sigvart/twogen/img/
cp /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/2016header2.png /home/sigvart/twogen/img/
for i in {1..2000}
do
    if [ -f /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/$i.jpg ]
    then
	((maks++))
    fi
done
for i in {1..2000}
do
    if [ -f /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/$i.jpg ]
    then
	((forige=i-1))
	((neste=i+1))
        echo -e "<!DOCTYPE html>
<html>
<head>
    <meta charset=\"UTF-8\">
    <title>Twokinds på Nynorsk</title>
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <link rel=\"icon\" type=\"image/x-icon\" href=\"http://twokinds.keenspot.com/favicon2.ico\" />
</head>
<body bgcolor=\"#000000\">
  <center>
    <img src=\"2016header2.png\">
    <h2 style=\"color: #20b060\">Side $i</h2>
    <p><a href=\"page1.html\"><img src=\"fyrste.png\"></a> <a href=\"page$forige.html\"><img src=\"forre.png\"></a> <a href=\"page$neste.html\"><img src=\"neste.png\"></a> <a href=\"page$maks.html\"><img src=\"siste.png\"></a></p>
    <img src=\"$i.jpg\">
    <p><a href=\"page1.html\"><img src=\"fyrste.png\"></a> <a href=\"page$forige.html\"><img src=\"forre.png\"></a> <a href=\"page$neste.html\"><img src=\"neste.png\"></a> <a href=\"page$maks.html\"><img src=\"siste.png\"></a></p>
<center>
</body>
</html>" > page$i.html
    fi
done

