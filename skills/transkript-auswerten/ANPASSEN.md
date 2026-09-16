# Den Skill an die eigene Software anschließen

Der Skill gibt seine Auswertung im Chat aus. Mit dem Prompt unten baust du ihn so um, dass
die Ergebnisse dort landen, wo dein Team arbeitet: das Protokoll als Datei in SharePoint,
Aufgaben in Planner, Jira oder Asana, Entscheidungen in Notion oder Confluence.

## So gehst du vor

1. Öffne einen neuen Chat in dem Programm, in dem du den Skill später nutzen willst.
2. Kopiere den Prompt unten und ersetze die letzte Zeile durch den Inhalt von
   [`SKILL.md`](SKILL.md). Du kannst die Datei
   auch anhängen.
3. Beantworte die Fragen. Die KI stellt sie einzeln.
4. Am Ende bekommst du eine neue `SKILL.md`, eine Liste, was einzurichten ist, und einen
   Testplan.

**Fang mit einem einzigen Ziel an.** Zum Beispiel nur die Aufgaben nach Planner oder nur
das Protokoll nach SharePoint. Wenn das zuverlässig läuft, kommt das nächste dazu.

## Der Prompt

````text
Ich nutze den Skill „transkript-auswerten“. Sein Inhalt steht am Ende dieser Nachricht.
Er wertet Meeting-Transkripte aus und gibt das Ergebnis im Chat aus. Ich möchte, dass er
die Ergebnisse zusätzlich in meine Software schreibt. Hilf mir, ihn umzubauen.

## Wie du vorgehst

Stell mir die folgenden Fragen einzeln und warte jeweils auf meine Antwort. Erkläre
Fachbegriffe in einem Satz. Wenn ich etwas nicht weiß, sag mir, wie ich es herausfinde
oder wen ich fragen kann.

1. Programm: Wo nutze ich den Skill? Zum Beispiel Claude im Browser, Claude Desktop,
   Claude Code, ChatGPT oder Microsoft Copilot.

2. Ziel: Welche Ergebnisse sollen wohin? Frag, was meinem Team am meisten hilft, und
   schlag vor, mit einem einzigen Ziel anzufangen. Typische Ziele:
   - das Protokoll als Dokument (SharePoint, OneDrive, Google Drive, Notion, Confluence)
   - Aufgaben als Einträge (Planner, Jira, Asana, Trello, Monday)
   - Entscheidungen in eine Liste oder Datenbank
   - ein E-Mail-Entwurf an die Teilnehmenden

3. Zugang: Prüfe, welche Werkzeuge dir in diesem Chat tatsächlich zur Verfügung stehen.
   Sag mir ehrlich, ob du damit in mein Ziel schreiben kannst, nur lesen kannst oder gar
   keinen Zugang hast. Behaupte keine Fähigkeit, die du nicht prüfen kannst. Fehlt der
   direkte Weg, nenne mir die Alternativen mit ihrem Aufwand:
   - einen Konnektor oder eine Integration einrichten (dafür braucht es oft die IT)
   - eine Automatisierung (Power Automate, Make, Zapier, n8n), die das Ergebnis
     entgegennimmt und weiterreicht
   - eine Ausgabe als Importdatei, die ich selbst hochlade (CSV, Excel, Word)

4. Felder: Welche Felder hat das Ziel, etwa Titel, verantwortliche Person, Fälligkeit,
   Beschreibung, Status? Welche davon sind Pflicht? Ordne sie den Spalten der Auswertung
   zu und zeig mir die Zuordnung als Tabelle.

5. Personen: Wie wird aus einem Namen im Transkript die richtige Person im Zielsystem?
   Was passiert, wenn der Name nicht eindeutig ist?

6. Doppelte Einträge: Soll vor dem Anlegen geprüft werden, ob es den Eintrag schon gibt?
   Biete das nur an, wenn du im Ziel auch lesen kannst.

7. Datenschutz: Darf das Ergebnis dort liegen, und wer kann es dort sehen? Weise mich
   darauf hin, dass Transkripte personenbezogene Daten enthalten.

## Was im umgebauten Skill unverändert bleibt

- Die Auswertung selbst: die Schritte 1 bis 5, die fünf Listen, die Regeln zu Zusage,
  Vorschlag und Bedingung, die Signale und die harten Regeln.
- Keine Einschätzungen über Menschen, auch nicht im Zielsystem.

## Was der umgebaute Skill zusätzlich tut

Nach der Ausgabe im Chat kommen zwei neue Schritte.

Schritt 6 · Geplante Änderungen zeigen und anhalten. Der Skill zeigt als Tabelle, was er
wohin schreiben will. Dann hält er an und wartet auf eine ausdrückliche Freigabe. Eine
Rückfrage ist keine Freigabe. Ich kann einzelne Zeilen streichen.

Schritt 7 · Schreiben. Erst nach der Freigabe und nur die freigegebenen Zeilen. Danach
meldet er, was geschrieben wurde, was abgelehnt wurde und was offen bleibt, mit Link,
wenn es einen gibt.

Dafür gelten diese Regeln:
- Der Skill verbietet das Schreiben an zwei Stellen: im ersten Absatz („Du schreibst
  nichts in andere Systeme und verschickst nichts.“) und in der harten Regel „Nichts
  schreiben, nichts verschicken. Die Auswertung steht im Chat und sonst nirgends.“ Beide
  werden vollständig ersetzt durch: „Geschrieben wird nur nach
  Freigabe in Schritt 6 und nur in das vereinbarte Ziel.“
- Nichts erfinden, um ein Pflichtfeld zu füllen. Fehlt eine Pflichtangabe, wird die Zeile
  nicht geschrieben, sondern als offen gemeldet.
- Eine Person mit `(vermutlich)` oder eine Zeile mit `(unklar)` wird erst geschrieben,
  wenn ich sie bestätigt habe. Sonst landen Aufgaben bei der falschen Person.
- Fehlt nur die Frist (`ungeklärt`), frag mich, ob der Eintrag ohne Fälligkeit angelegt
  wird.
- Entscheidungen und Aufgaben der Art `Zusage` sind verbindlich. Frag mich, ob Aufgaben
  der Art `Vorschlag` oder `Bedingung` gar nicht oder mit Vermerk angelegt werden.
- Jeder geschriebene Eintrag nennt seine Quelle: Meeting, Datum und das Zitat aus der
  Fundstelle.
- Schlägt ein Schreibversuch fehl, sucht der Skill keinen anderen Weg. Er zeigt die
  Fehlermeldung im Wortlaut und meldet die Zeile als offen.

Sag mir ehrlich, wie verlässlich der Stopp vor dem Schreiben ist. In den meisten
Chat-Programmen ist er eine Anweisung, an die sich das Modell halten soll, und keine
technische Sperre. Wenn ich Claude Code nutze, biete mir einen Hook an, der Schreibaufrufe
blockiert, sobald Pflichtfelder fehlen.

## Was ich am Ende bekomme

1. Die vollständige neue SKILL.md in einem Codeblock. Die Beschreibung im Kopf der Datei
   sagt, dass der Skill jetzt auch schreibt und wohin.
2. Eine Anleitung, wie ich die neue Fassung in das Programm aus Frage 1 bringe, Schritt
   für Schritt. Gib dem umgebauten Skill einen eigenen Namen, etwa
   „transkript-auswerten-sharepoint“, damit er nicht mit dem ursprünglichen kollidiert.
   Wenn eine ZIP-Datei nötig ist: Der Ordner darin heißt genau wie der Skill und
   enthält die SKILL.md.
3. Eine Checkliste, was vorher eingerichtet werden muss, jeweils mit dem Hinweis, wer das
   tun kann: ich selbst, die IT oder die Administration.
4. Einen Testplan: zuerst mit einem kurzen, erfundenen Transkript und einem Testbereich
   im Zielsystem (Testliste, Testprojekt, Testordner), nicht mit echten Daten.
5. Wenn ich ChatGPT oder Copilot nutze: eine Fassung der Anweisungen, die dort in das
   Anweisungsfeld passt, und den Hinweis, die vollständige SKILL.md als Wissensdatei
   hochzuladen.

--- Inhalt von SKILL.md ---
[hier einfügen]
````
