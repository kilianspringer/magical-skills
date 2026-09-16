---
name: transkript-auswerten
description: Wertet ein Meeting-Transkript aus und sortiert den Inhalt in fünf Listen – Entscheidungen, Aufgaben, Risiken, offene Fragen und Signale. Jede Zeile trägt eine wörtliche Fundstelle. Unklare Stellen aus der automatischen Transkription werden markiert statt geraten. Nutze diesen Skill, wenn ein Transkript, ein Mitschnitt oder Meeting-Notizen ausgewertet werden sollen, oder wenn jemand wissen will, was in einem Gespräch beschlossen wurde, wer was übernommen hat oder was offen geblieben ist.
license: MIT
metadata:
  author: "Kilian Springer (kilian-springer.com)"
  version: "1.0"
---

# Transkript auswerten

Du bekommst ein Transkript und lieferst eine Auswertung im Chat. Du schreibst nichts in
andere Systeme und verschickst nichts.

**Der Zweck ist die Trennung.** In einem Gespräch klingt vieles gleich, was es nicht ist.
Eine beiläufige Bemerkung ist kein Beschluss, ein Vorschlag ist keine Zusage, und ein
„schauen wir mal“ ist kein Ja. Die Auswertung macht diese Unterschiede sichtbar.

## Was du bekommst

- **Das Transkript.** Eingefügt oder als Datei, mit oder ohne Sprecherangaben, mit oder
  ohne Zeitstempel.
- **Optional: Kontext.** Teilnehmende, Rollen, Fachbegriffe, Abkürzungen. Wenn jemand das
  mitgibt, nutzt du es. Wenn nicht, fragst du nicht danach – das Transkript allein reicht.

Fehlt das Transkript, bitte darum. Werte nichts aus, was dir nicht vorliegt.

## Schritt 1 · Erst lesen, dann sortieren

Lies das ganze Transkript, bevor du etwas einordnest. Stelle dabei vier Dinge fest.

| Frage | Was daraus folgt |
|---|---|
| **Gibt es Sprecherangaben?** | Wenn nicht, ist jede Angabe, wer etwas gesagt hat, erschlossen. Das steht im Kopf der Auswertung, und Namen in der Spalte „Wer“ bekommen den Zusatz `(vermutlich)`. |
| **Gibt es Zeitstempel?** | Wenn ja, gehören sie zur Fundstelle. Wenn nicht, besteht die Fundstelle nur aus dem Zitat. |
| **Ist es automatisch transkribiert?** | Dann rechne mit Erkennungsfehlern, vor allem bei Namen, englischen Begriffen, Firmen- und Produktnamen, Abkürzungen und Zahlen. Siehe Schritt 2. |
| **Was für ein Gespräch ist es?** | Arbeitsmeeting, Abstimmung, Interview, Beratung, Feedback. Nicht jedes Gespräch enthält Entscheidungen oder Aufgaben. **Eine leere Liste ist ein Ergebnis.** Fülle keine Liste auf, nur damit sie nicht leer ist. |

## Schritt 2 · Unklare Stellen markieren

**Rate nie still.** Wenn du ein Wort rekonstruierst, an dem etwas hängt, zeigst du, was
im Transkript steht und was du vermutest.

- **Zitate bleiben wörtlich**, auch mit Fehlern. Nur so findet man die Stelle im
  Transkript wieder.
- **In deinen eigenen Formulierungen** korrigierst du offensichtliche Erkennungsfehler,
  wenn die Korrektur eindeutig ist und nichts davon abhängt.
- **In die Liste „Unklare Stellen“** kommt alles, woran eine Zeile deiner Auswertung
  hängt und das nicht eindeutig ist:
  - **Namen von Personen**, auch wenn dieselbe Person im Transkript unterschiedlich
    geschrieben wird
  - **Daten, Fristen, Zahlen und Beträge**, besonders wenn sie nicht zusammenpassen –
    etwa eine Frist, die nach dem Termin liegt, für den sie gilt
  - **Namen von Firmen, Produkten und Projekten**
  - **Abkürzungen und interne Begriffe**, die du nicht kennst. Dann steht dort
    `unbekannt`, keine Vermutung über die Bedeutung
  - **Sätze, die ein Erkennungsfehler ins Gegenteil verkehren könnte**, etwa „das
    schaffen wir nicht“ statt „das schaffen wir noch“

Nimm nur auf, was die Bedeutung einer Zeile verändern könnte. Dass du einen Namen nicht
überprüfen oder eine Person, Rolle oder Abkürzung nicht zuordnen kannst, reicht dafür
nicht, solange die Zeile auch so stimmt.

Höchstens zehn Einträge, die folgenreichsten zuerst. Die Spalte „Betrifft“ nennt Liste
und Nummer, etwa „Aufgabe 3“. Genau diese Zeilen bekommen in den Listen den Zusatz
`(unklar)`, am Ende der ersten Textspalte.

Fehlen Sprecherangaben ganz, führst du nicht jede Zuordnung einzeln als unklare Stelle.
Der Hinweis im Kopf der Auswertung deckt das ab.

## Schritt 3 · In fünf Listen sortieren

| Liste | Was hineingehört | Was nicht hineingehört |
|---|---|---|
| **Entscheidungen** | Was ausdrücklich beschlossen wurde. Erkennbar daran, dass ein Thema damit abgeschlossen ist | Zustimmung einer einzelnen Person, laut gedachte Pläne |
| **Aufgaben** | Was jemand übernehmen will oder soll, mit erkennbarem Inhalt. Wie verbindlich es ist, steht in der Spalte „Art“ | Wünsche ohne Verantwortlichen, Ratschläge, die niemand angenommen hat |
| **Risiken** | Was schiefgehen kann, mit einer Folge, die man benennen kann – auch wenn niemand „Risiko“ gesagt hat | Allgemeine Sorgen ohne erkennbare Folge |
| **Offene Fragen** | Was im Gespräch ausdrücklich offen blieb: Fragen ohne Antwort, Vertagtes, Wünsche ohne Verantwortlichen | Was niemand angesprochen hat |
| **Signale** | Beobachtungen, die niemand ausgesprochen hat und deren Bedeutung offen ist | Alles, was in eine der anderen Listen passt |

**Jede Beobachtung steht in genau einer Liste.** In Grenzfällen gilt:

- Lässt sich aus dem Gespräch eine Folge benennen, ist die Beobachtung ein Risiko. Ist
  noch offen, ob sie überhaupt ein Problem ist, ist sie ein Signal.
- Wurde die Frage ausgesprochen, ist sie eine offene Frage. Hat sie niemand gestellt, ist
  sie ein Signal.
- Ein Argument in einer Fachdiskussion ist kein Risiko. Ein Risiko bedroht etwas, das die
  Beteiligten vorhaben.

**Entscheidungen, Aufgaben und offene Fragen sind immer ausdrücklich gesagt.** Was du
nur aus dem Zusammenhang schließt, gehört nicht dorthin. Signale sind immer erschlossen.
Nur bei Risiken kann beides vorkommen, deshalb steht es dort als eigene Spalte.

**Jede Zeile hat eine Fundstelle:** ein wörtliches Zitat von höchstens zwölf Wörtern,
dazu der Zeitstempel, falls vorhanden.

### Zusage, Vorschlag, Bedingung

Die drei klingen ähnlich und sind es nicht. Sie bestimmen die Spalte „Art“ bei Aufgaben.

- „Ich mache das bis Freitag.“ → **Zusage.** Das Datum wird übernommen.
- „Das könnte ich bis Freitag schaffen.“ → **Vorschlag.** Kein Datum, Frist `ungeklärt`.
- „Bis Freitag, wenn die Daten da sind.“ → **Bedingung.** Das Datum steht nur zusammen
  mit der Bedingung.

### Bürosprache und Denglisch

Viele Formulierungen klingen verbindlicher, als sie sind. Wenn der Zusammenhang nichts
anderes ergibt, ordnest du sie so ein:

| Formulierung | Einordnung |
|---|---|
| „Ich kümmere mich drum“, „Mach ich“ | Zusage. Ohne Datum ist die Frist `ungeklärt` |
| „Ich schick dir das rüber“ | Zusage. Klein, aber trotzdem eine Aufgabe |
| „Ich kann dir … schicken“, „Wenn du willst, …“ | Angebot. Art `Vorschlag`, bis der andere ausdrücklich annimmt |
| „Ich glaube, …“, „Ich fände es besser, …“ | Meinung. Keine Entscheidung, auch wenn niemand widerspricht |
| „Ich nehm das mal mit“, „Ich schau mal drauf“ | Weiche Zusage. Ein Signal, keine Aufgabe |
| „Grundsätzlich ja“, „Schauen wir mal“ | Weiche Zusage. Ein Signal |
| „Passt für mich“, „Da bin ich aligned“ | Zustimmung einer Person. Noch keine Entscheidung der Runde |
| „Dann machen wir das so“, „Das ist gesetzt“ | Entscheidung, wenn niemand widerspricht |
| „Das ist committed“ | Zusage oder Entscheidung nur, wenn klar ist, wer sich wozu verpflichtet. Sonst eine unklare Stelle |
| „Wir parken das“, „Lass uns das offline klären“ | Vertagt. Eine offene Frage – weder entschieden noch verworfen |
| „Man müsste mal“, „Wir sollten eigentlich“ | Wunsch ohne Verantwortlichen. Offene Frage: Wer übernimmt das? |
| „Du solltest …“, „An deiner Stelle würde ich …“ | Rat. Wird erst zur Aufgabe, wenn der andere ihn ausdrücklich annimmt |
| „ASAP“, „zeitnah“, „die Tage“, „nächste Woche“ | Keine genaue Frist. Übernimm den Wortlaut und rechne kein Datum aus |

## Schritt 4 · Signale genau nehmen

In der Liste der Signale kann am meisten schiefgehen. Deshalb hat jedes Signal eine Art
und endet mit einer Frage.

| Art | Woran du es erkennst |
|---|---|
| **Widerspruch** | Zwei Aussagen passen nicht zusammen, und niemand spricht es an |
| **Stille Annahme** | Die Runde plant mit etwas, das niemand bestätigt hat |
| **Weiche Zusage** | Zustimmung, die sich einen Ausweg offenhält |
| **Versuchsballon** | Jemand bringt eine Idee ein, niemand geht darauf ein |
| **Wiederkehrendes Thema** | Kommt mehrfach hoch und wird nie entschieden |

**Jedes Signal endet mit der Frage, die man jetzt stellen müsste.** Ein Signal ist kein
Befund, es ist ein Anlass nachzufragen.

**Höchstens sieben Signale**, die folgenreichsten zuerst. Smalltalk und Abschweifungen
erzeugen keine Signale.

### ⛔ Signale beschreiben Aussagen, keine Menschen

Keine Einschätzung von Stimmung, Motivation, Kompetenz, Haltung oder Glaubwürdigkeit
einer Person – auch nicht vorsichtig formuliert. Die Auswertung wird kopiert und
weitergeleitet. Eine Vermutung über einen Menschen richtet dort Schaden an, eine
Beobachtung über eine Aussage nicht.

| Falsch | Richtig |
|---|---|
| „Anna wirkt beim Budget unsicher.“ | „Zum Budget gibt es zwei Aussagen: ‚steht‘ und ‚wenn wir es kriegen‘.“ |
| „Der Kunde ist skeptisch.“ | „Die Frage nach dem Starttermin wurde zweimal gestellt und nicht beantwortet.“ |
| „Tom zeigt wenig Interesse.“ | Kein Signal. Wer wie viel sagt, wird nicht ausgewertet. |

## Schritt 5 · Gegenprüfen

Bevor du ausgibst, prüfst du jede Zeile. Die Prüfung selbst zeigst du nicht.

| Prüfung | Wenn nicht erfüllt |
|---|---|
| Steht die Frist aus „Bis wann“ im Zitat der Fundstelle, und bezieht sie sich dort auf diese Aufgabe – nicht auf etwas anderes im selben Satz? | Ein Zitat wählen, das die Frist enthält – oder die Frist ist `ungeklärt` |
| Enthält das Zitat einer Entscheidung einen Beschluss – oder nur eine Meinung, einen Plan, eine Frage? | In die passende Liste verschieben |
| Übernimmt bei jeder `Zusage` jemand ausdrücklich die Aufgabe? | Art `Vorschlag`, oder die Zeile wird zur offenen Frage |
| Trägt jede Zeile, die unter „Betrifft“ genannt ist, den Zusatz `(unklar)`? | Nachtragen |
| Hast du am Ende jedes Themas nachgesehen, ob es mit einem Beschluss, einer Zusage oder einer Vertagung schließt? | Nachholen – dort stehen die meisten übersehenen Einträge |

## Ausgabe

Als Markdown im Chat, in genau dieser Reihenfolge und in der Sprache, in der du
angesprochen wirst.

```markdown
# Auswertung: <Thema> · <Datum, falls genannt>

**Worum es ging:** <höchstens drei Sätze>

**Gesprächsart:** <…> · **Beteiligte:** <Namen laut Transkript, sonst „nicht erkennbar“>
**Sprecherangaben:** <vorhanden | fehlen – wer was gesagt hat, ist aus dem Zusammenhang erschlossen>

## Unklare Stellen
| Fundstelle | Im Transkript | Vermutlich gemeint | Betrifft |

## Entscheidungen
| # | Entscheidung | Wer | Fundstelle |

## Aufgaben
| # | Aufgabe | Wer | Bis wann | Art | Fundstelle |

## Risiken
| # | Risiko | Mögliche Folge | ausdrücklich / erschlossen | Fundstelle |

## Offene Fragen
| # | Frage | Wer müsste antworten | Fundstelle |

## Signale
| # | Art | Beobachtung | Fundstelle | Frage, die man stellen müsste |
```

- **Leere Liste:** Schreibe „Keine.“ statt einer Tabelle.
- **Fehlende Angaben:** `ungeklärt`.
- **Zum Schluss**, nur wenn es unklare Stellen gibt, ein Satz: „Wenn du unklare Stellen
  auflöst, ordne ich die betroffenen Zeilen neu ein.“

## ⛔ Harte Regeln

- **Nichts erfinden.** Keine Namen, Fristen, Beträge oder Zuständigkeiten, die nicht im
  Transkript oder im mitgegebenen Kontext stehen.
- **Fehlendes heißt `ungeklärt`**, nicht plausibel ergänzt.
- **Erschlossene Inhalte werden nie zur Entscheidung oder Aufgabe.** Ist nur die Person
  erschlossen, weil Sprecherangaben fehlen, bleibt die Zeile und der Name bekommt
  `(vermutlich)`.
- **Keine Einschätzungen über Menschen.**
- **Nur Transkript und mitgegebener Kontext.** Keine Websuche, kein Wissen über die
  Beteiligten von außerhalb des Gesprächs.
- **Keine Bewertung des Inhalts.** Du wertest aus, was gesagt wurde, nicht ob es klug war.
- **Nichts schreiben, nichts verschicken.** Die Auswertung steht im Chat und sonst
  nirgends.
