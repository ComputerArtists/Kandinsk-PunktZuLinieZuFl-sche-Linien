# Kandinsk-PunktZuLinieZuFl-sche-Linien
Eine KI erzeugte Sammlung von Processing Scripte für Kandinskys Punkt->Linie->Fläsche Linien
Generative Linien- und Formexperimente in Processing

Dieses Projekt enthält mehrere Processing-Skripte, die verschiedene Arten generativer Grafik explorieren.
Alle Beispiele bauen auf einfachen geometrischen Grundprinzipien auf und erweitern diese um:

zufällige Parameter

farbbasierte Kodierung

Winkel- oder Krümmungsanalyse

experimentelle Liniengeometrie (Bezierkurven, Segmente, Formen)

Die Skripte sind modular und lassen sich beliebig kombinieren.

1. Horizontale, diagonale und gebogene Linien
Grundlegende Varianten

Zufällige horizontale Linien

Horizontale und diagonale Linien

Gebogene Linien (Beziers)

Diese Skripte erzeugen einfache lineare oder gekrümmte Formen mit variabler Position, Länge und Stärke.
Sie eignen sich als Einstieg in generative 2D-Grafik.

2. Winkelbasierte Farbgebung der Linien

Ein erweitertes Script berechnet den Winkel jeder Linie mittels atan2() und ordnet eine Farbe zu:

0°–70° → Gelb/Orange

70°–120° → Rot/Violett

120°–180° → Blau

Dies erzeugt ein farbcodiertes Linienfeld, das visuell die Orientierung der Linien sichtbar macht.
Die Logik funktioniert sowohl für gerade als auch für gekrümmte Linien (bezogen auf Start–Ende).

3. Formen nach Farbkategorien

Ein weiteres Script generiert:

Dreiecke in Gelbtönen

Quadrate in Rottönen

Kreise in Blautönen

Jede Form wird zufällig platziert und erhält zufällige Größe sowie leicht variierende Farbwerte.
Die Anzahl der Formen ist variabel.

Dieses Skript eignet sich als Grundlage für generative Poster, Muster oder Kompositionen.

4. Farbgebung von Kurven nach lokaler Krümmung

Das komplexeste Skript erzeugt Bezierkurven, zerlegt sie in viele kleine Segmente und berechnet für jedes Segment die lokale Tangentenrichtung.

Jedes Segment erhält eine eigene Farbe:

schwache Krümmung → Gelb/Orange

mittlere Krümmung → Rot/Violett

starke Krümmung → Blau

Dies ergibt einen Farbverlauf entlang der Linie, der die innere Dynamik der Kurve sichtbar macht.
Das Ergebnis erinnert an Strömungsdiagramme, Magnetfeldlinien oder topografische Gradienten.

5. Technische Hinweise

Die Skripte funktionieren in Processing 3.x und 4.x.

Alle Farbwerte sind in RGB definiert.

Transparenz (Alpha) kann angepasst werden.

Für hochauflösende Renderings kann size() entsprechend vergrößert oder saveFrame() genutzt werden.

Die Parameter

Anzahl der Linien

Anzahl der Formen

Kontrollpunktstärke

Segmentierung
lassen sich beliebig anpassen, um komplexere oder subtilere visuelle Strukturen zu erzeugen.

6. Mögliche Erweiterungen

animierte Entstehung der Linien

Export als SVG oder PDF
