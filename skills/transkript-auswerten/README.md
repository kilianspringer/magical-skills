# Transkript auswerten

Ein Skill für Claude, der aus einem Meeting-Transkript herausholt, was tatsächlich
passiert ist: was beschlossen wurde, wer was übernommen hat, was schiefgehen kann und was
offen blieb. Und was zwischen den Zeilen steht.

Entstanden für die Keynote „Weniger Meetings. Mehr Output.“ beim Eastside Heroes
Festival 2026 in Erfurt. Teil von [Kilian's Magical AI Skills](../../README.md).

## Was er macht

Er sortiert ein Transkript in fünf Listen und belegt jede Zeile mit einem wörtlichen
Zitat.

| Liste | Was hineingehört |
|---|---|
| **Entscheidungen** | Was ausdrücklich beschlossen wurde |
| **Aufgaben** | Wer was übernimmt, bis wann, und wie verbindlich |
| **Risiken** | Was schiefgehen kann, auch wenn es niemand so genannt hat |
| **Offene Fragen** | Was ungeklärt blieb oder vertagt wurde |
| **Signale** | Widersprüche, stille Annahmen, weiche Zusagen |

Worauf es dabei ankommt:

- **Zusage, Vorschlag und Bedingung werden getrennt.** „Ich mache das bis Freitag“ ist
  eine Zusage. „Das könnte ich bis Freitag schaffen“ ist ein Vorschlag und bekommt kein
  Datum. „Bis Freitag, wenn die Daten da sind“ gilt nur zusammen mit der Bedingung.
- **Signale machen hörbar, was niemand ausspricht.** „Ich nehm das mal mit“ klingt nach
  Zusage und ist keine. Jedes Signal endet mit der Frage, die man jetzt stellen müsste.
- **Unklare Stellen werden markiert.** Automatische Transkription verstümmelt Namen und
  englische Begriffe. Der Skill zeigt, was im Transkript steht und was er vermutet, damit
  keine Aufgabe an einem falsch erkannten Namen hängt.

Was er bewusst auslässt: Einschätzungen über Menschen, also Aussagen über Stimmung,
Motivation oder Haltung von Beteiligten.

## Beispiel

Ein Ausschnitt aus einer Auswertung, gekürzt:

> **Aufgaben**
>
> | # | Aufgabe | Wer | Bis wann | Art | Fundstelle |
> |---|---|---|---|---|---|
> | 1 | Angebot der Agentur einholen | Jana | Freitag | Zusage | „Ich hol das Angebot bis Freitag ein“ |
> | 2 | Texte für die Startseite liefern | Marc | ungeklärt | Vorschlag | „Könnte ich bis Ende des Monats schaffen“ |
>
> **Signale**
>
> | # | Art | Beobachtung | Fundstelle | Frage, die man stellen müsste |
> |---|---|---|---|---|
> | 1 | Widerspruch | Zum Budget gibt es zwei Aussagen | „Das Budget steht“ / „wenn wir das freibekommen“ | Ist das Budget freigegeben oder nicht? |
> | 2 | Weiche Zusage | Zur Freigabe der Texte gibt es nur ein „mal anschauen“ | „Die schau ich mir mal an“ | Wer gibt die Texte frei, und bis wann? |

## Installieren

### Claude im Browser oder in der Desktop-App

Voraussetzung: Die Code-Ausführung ist eingeschaltet (**Settings → Capabilities**). In
Team- und Enterprise-Konten schaltet das die Organisation frei.

1. Lade
   [transkript-auswerten.zip](https://github.com/kilianspringer/magical-skills/releases/latest/download/transkript-auswerten.zip)
   herunter.
2. Öffne in Claude **Customize → Skills**, klicke auf „+“, dann **Create skill** und
   **Upload a skill**, und wähle die ZIP-Datei aus.

Die aktuelle Anleitung von Anthropic:
[Use skills in Claude](https://support.claude.com/en/articles/12512180-use-skills-in-claude)

### Claude Code

```bash
git clone https://github.com/kilianspringer/magical-skills.git
mkdir -p ~/.claude/skills
cp -r magical-skills/skills/transkript-auswerten ~/.claude/skills/
```

### ChatGPT, Microsoft Copilot und andere

Die Anleitung ist länger als die Anweisungsfelder eigener GPTs und Copilot-Agenten.
Lade deshalb [`SKILL.md`](SKILL.md) als
Wissensdatei hoch und schreib als Anweisung: „Werte Transkripte genau nach der Anleitung
in SKILL.md aus.“

Ganz ohne Einrichtung geht es auch: Füge den Text der Datei in einen Chat ein und das
Transkript darunter.

## Benutzen

Füge das Transkript ein oder hänge es als Datei an und schreib: „Werte dieses Transkript
aus.“

Wenn du Teilnehmende und Fachbegriffe mitgibst, bleiben weniger Stellen unklar:

```text
Dabei waren Kai Berger (Projektleitung) und Kai Otto (IT). PAR = Partnerprogramm.
```

Bleibt etwas unklar, genügt eine Antwort im Chat. Der Skill ordnet die betroffenen
Zeilen dann neu ein.

## An die eigene Software anschließen

Das Ergebnis bleibt im Chat. Wenn du es nach SharePoint, Planner, Jira oder Notion
bringen willst, findest du in [ANPASSEN.md](ANPASSEN.md) einen Prompt, der dich
Schritt für Schritt durch den Umbau führt. Vor jedem Schreiben hält der umgebaute Skill
an und wartet auf deine Freigabe.

## Bevor du echte Transkripte auswertest

- Transkripte enthalten personenbezogene Daten. Nutze nur KI-Werkzeuge, die dein
  Unternehmen dafür freigegeben hat.
- Alle Beteiligten sollten wissen, dass das Gespräch aufgezeichnet und ausgewertet wird.
  Wo es einen Betriebsrat gibt, gehört das Thema dorthin.
- Lies die Auswertung, bevor du sie weitergibst. Die Fundstellen sind dafür da: Jede
  Zeile lässt sich im Transkript nachschlagen.

## Lizenz

[MIT](../../LICENSE). Du darfst den Skill nutzen, anpassen und weitergeben, solange der
Copyright-Hinweis erhalten bleibt.

## Von

Kilian Springer ([www.kilian-springer.com](https://www.kilian-springer.com)) •
Head of AI @ Distart ([www.distart.de](https://www.distart.de))
