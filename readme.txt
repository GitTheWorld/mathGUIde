Neu in mathGUIde 2.1

 - Vollst�ndige Unicode-Unterst�tzung

 - Neue Pr�sentation: "Eine kurze Geschichte der Multiplikation",
   die sich insbesondere mit der Karatsuba-Multiplikation befasst.

 - Alle Pr�sentationen durchgesehen, �berarbeitet
   und auf Korrektheit der Syntax nach XHTML 1.0 Strict verifiziert.

 - Verbesserte Tabellenfunktion:
    - um Probleme mit Python in bestimmten Situationen zu vermeiden,
      werden die Funktionen nicht mehr als Strings (zum Evaluieren) angegeben,
      sondern als Funktionsobjekte (im Normalfall anonyme Funktionen mit "lambda".
    - Vorschau

 - Erweiterte Funktionen sum und product:
   Bisher erwarteten diese Funktionen als einzigen Parameter eine Liste.
   Jetzt kann alternativ ein Funktionsobjekt als Parameter �bergeben werden.
   Beispiel 1:
      Statt
         sum([fibonacci(i) for i in fromTo(1, 10)])
      kann man nun einfacher schreiben:
         sum(fibonacci, 1, 10)
   Beispiel 2:
      Statt
         product([i for i in fromTo(1, 10, 2)])
      kann man nun auch schreiben:
         product(lambda i:i, 1, 10, 2)
   Genauer:
      Wenn der erste Parameter eine Funktion ist, wird die funktionale Variante
      verwendet:
        sum(function, start, end, step=1).
      Andernfalls muss der erste (und dann einzige) Parameter ein iterierbares
      Objekt sein (Liste, Tupel, Iterator oder Generatorfunktion).

 - Fehlerkorrektur: Bei der Klassenmethode Matrix.fromFunction wurde der 
   Parameter offset nicht ber�cksichtigt.

 - mathGUIde ben�tigt im Programmverzeichnis keinen Schreibzugriff mehr.

 - Neuer Men�befehl: Datei -- Protokoll l�schen

 - Das Programm l�sst sich unter Linux jetzt auch mit Ctrl+Q beenden.

 - Fehlerkorrektur: Nach einem Mausklick in das Guide-Fenster (Browser)
   funktionierte das Scrolling per Tastatur (PgUp/PgDown etc.) nicht mehr.

 - Fehlermeldungen sind jetzt klarer strukturiert.
   Die Zeilennummer des Fehlers wurde bisher um 1 zu gro� angegeben (korrigiert).

 - Die Anwendungsdaten k�nnen jetzt an einem beliebigen Ort gespeichert werden.
   Dazu muss sich im Programmordner eine (UTF-8-codierte!) XML-Datei
   "settings.xml" befinden, in der der Pfad der Anwendungsdaten steht.
   Dieser kann absolut oder relativ (beginnend mit einem Punkt!) angegeben werden.
   Beispiel:
        [/xxx/bin/mathguide]
            mathguide
            settings.xml
        [/xxx/lib/mathguide]
            [de]
            [en]
            [jsMath]
            mathguide.py
            mathguide-py.html

        In diesem Beispiel kann settings.xml entweder so aussehen (absolut):
            <?xml version="1.0" encoding="utf-8"?>
            <settings datapath="/xxx/lib/mathguide"/>
        oder so (relativ):
            <?xml version="1.0" encoding="utf-8"?>
            <settings datapath="../lib/mathguide"/>
