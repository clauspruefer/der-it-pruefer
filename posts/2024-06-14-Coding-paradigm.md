---
category: programming
tags: [programming, paradigm, german]
---

# Post Meta-Data

| Datum      | Sprache                  | Autor                             | Beschreibung                                          |
|------------|--------------------------|-----------------------------------|-------------------------------------------------------|
| 11.12.2023 | Deutsch                  | Prüfer, Claus (Chief-Prüfer)      | Coding Paradigm – Die wichtigsten Grundlagen der Softwareentwicklung |

# Grundregeln der Programmierung

Betrachtet man den Quellcode aktueller Softwaregenerationen, so kann es einem mitunter die Hände über dem Kopf zusammenschlagen lassen. Häufig mangelt es an einer einheitlichen Struktur, generischen Programmieransätzen sowie einer konsequenten und nachhaltigen Methodik.

Oftmals herrscht Zeitdruck, das Projektmanagement fordert schnelle Ergebnisse oder private Verpflichtungen beeinträchtigen die Konzentration. Dennoch sollte man sich nicht beirren lassen und bestrebt sein, eine eigenständige, durchdachte Arbeitsweise zu wahren.

Gleichzeitig ist „100% Do-it-yourself“ keineswegs zielführend. Ein wohlüberlegter Mittelweg – gemäß Aristoteles' Lehre von der goldenen Mitte – führt häufig zu praxistauglichen Ergebnissen. Nach meiner eigenen Einschätzung: Über 80 % aktueller Softwareprojekte profitieren von einer ausgewogenen Balance zwischen Eigenleistung und der Nutzung etablierter Lösungen.

> Warnung! Das Neuschreiben von Software kann zu Aggressionen, Zeit- und Ressourcenverlust sowie weiteren unvorhersehbaren Nebenwirkungen führen.

## Das DNS-Desaster

Daniel Julius Bernstein setzte ein Preisgeld von 1.000 US-Dollar für denjenigen aus, der eine Sicherheitslücke in seiner Software djbdns findet – einer Software, die weltweit bis zum Jahr 2008 ohne nachgewiesene Schwachstelle betrieben wurde.

Da die vom Internet Consortium entwickelte DNS-Software „Bind“ (CNS und ANS) regelmäßig mit Sicherheitslücken behaftet war, entschied sich Bernstein, djbdns zu entwickeln, um die Sicherheit des Internets maßgeblich zu verbessern.

> Bis heute wurde kein Remote-Code-Exploit bekannt, der einen erfolgreichen Angriff auf djbdns ermöglicht hätte.
> Lediglich eine grundlegende Schwachstelle im DNS-Protokoll erlaubte DNS-Cache-Poisoning.

## Die zehn Grundregeln

Die wichtigsten zehn Regeln der Programmierung lauten:

```
* KISS: Keep it simple, stupid!
* Verwende bestehende, durchdachte und umfassend getestete Bibliotheken.
* Nutze git als Versionskontrollsystem.
* Setze agile Kollaborations- und DevOps-Tools ein (z. B. Kubernetes, GitLab, Stackfield).
* Erstelle zunächst ein Request for Proposal (RFP) und beginne erst danach mit der Entwicklung.
* Verwende gut strukturierte Datenmodelle für deine API (z. B. XML, JSON).
* Entwickle stets am geeigneten Punkt des Softwareprozesses.
* Schreibe ausreichend Tests (Unit- und Integrationstests).
* Dokumentiere das Projekt umfassend und verständlich.
* Wähle den Weg der goldenen Mitte (Aristoteles).
```

## Einhaltung der Regeln

Das Känguru aus Marc-Uwe Klings „Die Känguru-Chroniken“ formuliert im Umfeld seines Boxclubs bemerkenswerte Wahrheiten, die sich auch auf die IT übertragen lassen. Die wichtigsten Lektionen sind:

```
1. Lektion: Wir wollen nicht programmieren. Wir müssen!
2. Lektion: Mitdenken!
```

Die konsequente Einhaltung von Regeln in der Praxis gestaltet sich jedoch oft schwierig. Insbesondere in großen Projekten – vor allem im Banken-, Versicherungs- und Serviceprovider-Umfeld – wäre ein abgeschlossenes Politikstudium von Vorteil.

Eine unzureichend geführte Kommunikation oder mangelndes Verhandlungsgeschick führen rasch zu Frustration. Nicht selten geht es in Projekten **nicht um die eigentliche Sache**. Politische Entscheidungen, die auf persönlichen Befindlichkeiten oder firmeninternen Hierarchien basieren, bestimmen oft den Verlauf.

Auch hier zeigt sich: Habe ich mich an meine selbstgesetzten Regeln gehalten? Eine fundierte Argumentation kann selbst den kritischsten Projektleiter überzeugen, sofern sie nachvollziehbar und sachlich begründet ist.

# Generische Programmierung

Für eine saubere Code-Basis ist es insbesondere bei größeren Projekten unerlässlich, von Beginn an generische Ansätze zu verfolgen. Der Grad der Abstraktion sollte bereits in der Planungsphase wohlüberlegt festgelegt werden.

## Objektorientierte Programmierung (OOP)

Projekte ohne objektorientierte Grundlage umzusetzen, stellt meines Erachtens eine grobe Fahrlässigkeit dar. Die genauen Gründe hierfür werden im Folgenden erläutert.

## Programmiersprache und Umgebung

Die Wahl der geeigneten Programmiersprache ist ebenfalls von großer Bedeutung. Ist das Zielsystem Windows, Linux, Unix oder MacOS? Einer Java-Lobby sollte man keinesfalls Python oder C++ als Grundlage aufdrängen.

> PHP und MySQL gelten bereits seit Langem als überholt.

## Refactoring

Ein objektorientiertes Grundgerüst erleichtert das Refactoring erheblich und trägt zur Kostenersparnis bei. Wie so oft gilt: Eine solide Investition in die Basis ist das A und O für hochwertige Software.

## Testing

Die Auswahl eines oder mehrerer geeigneter Testframeworks ist essenziell. Die korrekte Funktionsweise und Stabilität der Frameworks sollte vor ihrem Einsatz sorgfältig überprüft werden.

> Das Selenium-Browser-Testframework befand sich beispielsweise vor etwa sechs Jahren in einem kaum praxistauglichen Zustand.

## Dokumentation

Die Wahl eines passenden Dokumentationssystems ist entscheidend. Ich persönlich habe mich nach langer Suche für das Sphinx-Framework entschieden, obwohl der Markt zahlreiche modernere Alternativen bietet.

> Doxygen ist weniger empfehlenswert im Hinblick auf Schönheit! Mit etwas Aufwand lässt sich Sphinx auch für ansprechende C++-Dokumentation nutzen.

## Backup

Regelmäßige Backups sind Bestandteil eines erfolgreichen Projektkonzepts. Hierbei empfehle ich den Einsatz leistungsstarker Rechner und moderner Virtualisierungstechnologien.

# Projektanforderungen

Viele Entwickler übersehen, dass nicht nur die technische Seite zu einem gelungenen Gesamtkonzept gehört. Schwächen in der Organisation können ein Projekt rasch zum Scheitern bringen.

Die folgenden Punkte unterstützen eine strukturierte Organisation und Kommunikation im Projektumfeld.

## Rahmenbedingungen / Verträge

Freelancer oder Festanstellung – das ist hier die Frage. Als Freelancer kann man projektbezogen hohe Honorare erzielen; gleichzeitig trägt man Verantwortung für Akquise und Haftung.

Eine Festanstellung bietet hingegen ein sicheres Einkommen, fällt im Vergleich zur Freelancer-Vergütung jedoch meist deutlich geringer aus.

## Service / SOA

Folgende Aspekte sind beim Aufbau einer serviceorientierten Architektur zu berücksichtigen:

```
* Auf welche Web-Services ist das Projekt angewiesen?
* Werden die Services gemietet oder Inhouse bereitgestellt?
* Welche Kosten entstehen?
* Erfordern die Anforderungen eine Skalierung der Services?
* Welche Provider werden für externe Services gewählt?
* Welche Tools für das Cloud-Infrastruktur-Management kommen zum Einsatz?
* Bestehen weitere spezielle Service-Anforderungen?
```

## Skalierung

Für umfangreiche Projekte ist der Faktor Skalierung von zentraler Bedeutung. Es gilt, die passende Cloud-Infrastruktur auszuwählen: AWS, Google Kubernetes oder vergleichbare Plattformen.

> Choose wisely.

## Budget

Zu Beginn ist die Klärung des Budgets entscheidend. Die Höhe des Budgets bestimmt, welche Regeln und Maßnahmen angewendet werden können. Bei zu knapp bemessenen Projektkosten rate ich dringend vom Projektstart ab.

Renommierte Unternehmen sparen selten an den Kosten, sofern nachvollziehbar dargelegt wird, inwiefern Investitionen dem Unternehmen langfristig zugutekommen. Auch „hohe“ Servicegebühren werden in solchen Fällen akzeptiert.

> Das bedeutet jedoch keineswegs, dass Geld verschwendet werden sollte. Sämtliche Ausgaben müssen sorgfältig in den Projektplan integriert werden, um auch betriebswirtschaftlich Berücksichtigung zu finden.

## Team / DevOps

Teamaufbau und Kommunikation sind meiner Ansicht nach von herausragender Bedeutung. Ohne die Etablierung grundlegender Kommunikationsstrukturen und regelmäßiger Teamabsprachen ist eine effiziente Zusammenarbeit kaum möglich.

## Security / Audits

Vier Augen sehen mehr als zwei. Externe Security-Audits sollten in regelmäßigen Abständen durchgeführt werden. Dadurch steigt die Softwarequalität erheblich.
