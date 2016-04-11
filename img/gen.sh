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
cp /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/arkiv.png /home/sigvart/twogen/img/
echo "<!DOCTYPE html>
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
<p>" > indeks.html
for i in {1..2000}
do
    if [ -f /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/$i.jpg ]
    then
	((maks++))
	echo -e "<a href=\"page$i.html\">$i</a><br>" >> indeks.html
    fi
done
for i in {1..2000}
do
    if [ -f /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/$i.jpg ]
    then
	((forige=i-1))
	((neste=i+1))
        cp /home/sigvart/Skrivebord/MappestrukturVidaregåande/Twokinds/Omset/Versjon/$i.jpg /home/sigvart/twogen/img/
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
    <p><a href=\"page1.html\"><img src=\"fyrste.png\"></a> <a href=\"page$forige.html\"><img src=\"forre.png\"></a> <a href=\"page$neste.html\"><img src=\"neste.png\"></a> <a href=\"http://sigvartbrendberg.github.io/Twokinds-nynorsk/index.html\"><img src=\"siste.png\"></a></p>
    <img src=\"$i.jpg\">
    <p><a href=\"page1.html\"><img src=\"fyrste.png\"></a> <a href=\"page$forige.html\"><img src=\"forre.png\"></a> <a href=\"page$neste.html\"><img src=\"neste.png\"></a> <a href=\"http://sigvartbrendberg.github.io/Twokinds-nynorsk/index.html\"><img src=\"siste.png\"></a></p>
    <p style=\"color: #20b060\"><a href=\"http://creativecommons.org/licenses/by-nc-sa/3.0/\"><img style=\"\" src=\"http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png\" alt=\"Creative Commons-licens\" /></a> <a href=\"http://twokinds.keenspot.com/\">Twokinds</a> av Tom Fischbach, norsk tekst Sigvart Brendberg</p>
<center>
</body>
</html>" > page$i.html
    fi
done
echo -e "</p>
</center>
</body>
</html>" >> indeks.html
((fori=maks-1))
echo -e "<!DOCTYPE html>
<html lang=\"en-us\">
  <head>
    <meta charset=\"UTF-8\">
    <title>Twokinds på Nynorsk</title>
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheets/normalize.css\" media=\"screen\">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheets/stylesheet.css\" media=\"screen\">
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheets/github-light.css\" media=\"screen\">
    <link rel=\"icon\" type=\"image/x-icon\" href=\"http://twokinds.keenspot.com/favicon2.ico\" />
  </head>
  <body bgcolor=\"#101035\">
    <section class=\"page-header\">
      <h1 class=\"project-name\" style=\"color: #000000;\">Twokinds-nynorsk</h1>
      <h2 class=\"project-tagline\">Eit prosjekt for å omsetja Twokinds til nynorsk</h2>
    </section>

    <section class=\"main-content\">
      <h2 id=\"nummer\">Nyaste side: $maks</h2>
      <p><a href=\"img/page1.html\"><img src=\"img/fyrste.png\"></a> <a href=\"img/page$fori.html\"><img src=\"img/forre.png\"></a> <a href=\"img/page$maks.html\"><img src=\"img/arkiv.png\"></a></p>
      <img id=\"teikne\" src=\"img/$maks.jpg\"><br>
      <p><a href=\"img/page1.html\"><img src=\"img/fyrste.png\"></a> <a href=\"img/page$fori.html\"><img src=\"img/forre.png\"></a> <a href=\"img/page$maks.html\"><img src=\"img/arkiv.png\"></a></p>
<h1>Nytt:</h1>
<p>Spegelside på <a href=\"http://2kinds.tk/\">2kinds.tk</a></p>
<p>Fyrste versjon er oppe!</p>
<p>Andre versjon er oppe! (Utan JS)</p>
<p>$maks/912</p>
      <h1>
<a id=\"twokinds-nynorsk\" class=\"anchor\" href=\"#twokinds-nynorsk\" aria-hidden=\"true\"><span aria-hidden=\"true\" class=\"octicon octicon-link\"></span></a>Twokinds-nynorsk</h1>

<p>Eit prosjekt for å omsetja Twokinds til nynorsk</p>

<p><a href=\"http://twokinds.keenspot.com/\">Twokinds</a> er ein teikneserie av Thomas J. Fischbach, og er lisensiert under Creative Commons Attribution-NonCommercial-ShareAlike 3.0, som dette er ein lovleg bruk av.</p>
<p><b>Om du er utolmodig:</b><br><a href=\"http://twokinds.keenspot.com/\">Opprinneleg engelsk verjons</a> av Tom Fischbach.<br><a href=\"http://twokinds.se/\">Svensk versjon</a> av Kindamoody.</p>

<p>Omsetjingsprosjektet er gjort tilgjengeleg her for å gjera det mogleg med eit samvirke om å gje Twokinds ein ny språkdrakt, og eventuelt gjera arbeidet for ein ny omsetjar lettare.</p>

<p><b>Kva som er på Github-sida:</b>
I greina \"gh-pages\" finn du den noverande nynorske versjonen av Twokinds. Dette er staden om du vil lesa teikneserien.</p>

<p>Om du vil endra på ei side, last heller ned .xfc filer frå prosjekfilene i \"master\" greina.</p>

<p>For spørsmål, eller melding om feil med omsetjinga, send gjerne post til sigvabrend på Google si posttjeneste.</p>
<p><a href=\"freefall.html\">Freefall</a> (omsetjing som eg oppdaterar sjeldnare).</p><br>
<p>Og tilgjengeleg på:<br><a href=\"http://twokinds.keenspot.com/\">Engelsk</a> (opphaveleg)<br><a href=\"http://furries.ru/2kinds/#ris\">Russisk</a><br><a href=\"http://twokinds.subcultura.es/\">Spansk</a><br>
<a href=\"http://twokinds-german.blogspot.no/\">Tysk</a><br><a href=\"http://twokindsbr.blogspot.no/\">Portugisisk</a><br>
<a href=\"http://twokinds.se/\">Svensk</a><br><a href=\"http://szmeszek.flog.pl/\">Polsk</a><br><a href=\"https://sites.google.com/site/2kindsanimation/translate/archive\">Thai</a><br>
<a href=\"http://twokindsitalian.blogspot.no/\">Italiensk</a><br><a href=\"http://2kindsita.blogspot.no/\">Italiensk</a> (framhald)<br>
<a href=\"http://twokinds-cz.blog.cz/\">Tsjekkisk</a></p>

      <footer class=\"site-footer\">
      <span class=\"site-footer-owner\"><a href=\"https://github.com/SigvartBrendberg/Twokinds-nynorsk\" class=\"btn\">Sjå på GitHub</a>
      <a href=\"https://github.com/SigvartBrendberg/Twokinds-nynorsk/zipball/master\" class=\"btn\">Last ned .zip</a>
      <a href=\"https://github.com/SigvartBrendberg/Twokinds-nynorsk/tarball/master\" class=\"btn\">Last ned .tar.gz</a></span>
        <span class=\"site-footer-owner\"><a href=\"https://github.com/SigvartBrendberg/Twokinds-nynorsk\">Twokinds-nynorsk</a> blir vedlikehaldt av <a href=\"https://github.com/SigvartBrendberg\">SigvartBrendberg</a>.</span>
      </footer>
    </section>
    <a href=\"http://creativecommons.org/licenses/by-nc-sa/3.0/\"><img style=\"float: left; margin: 12px 10px 0 10px\" src=\"http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png\" alt=\"Creative Commons-licens\" /></a>
  </body>
</html>" > index.html

