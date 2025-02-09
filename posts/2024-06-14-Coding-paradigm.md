---
category: programming
tags: [programming, paradigm, german]
---

# Post Meta-Data

| Datum      | Sprache                  | Autor                             | Beschreibung                                          |
|------------|--------------------------|-----------------------------------|-------------------------------------------------------|
| 11.12.2023 | Deutsch                  | Prüfer, Claus (Chief-Prüfer)      | Coding Paradigm - Die wichtigsten Grundlagen der Software-Entwicklung |

# Grundregeln der Programmierung

Schaut man sich Source-Code der heutigen Generation an, dann kann es passieren: man möchte die Hände über dem Kopf zusammenschlagen. Oft wird nicht auf eine einheiltiche Struktur, generische Programmierweise oder Sicherheit Wert gelegt. In über 50% der Fälle: **Spaghetti-Code**.

Häufig möchte man zügig zu Ergebnissen gelangen, der Druck der Projektleitung ist groß oder der Freund / die Freundin nervt. Man sollte sich hier nicht beirren lassen und versuchen, seine eigenhändig aufgestellten Regeln zu verfechten!

Aber: "100% do it yourself" ist auch keine Lösung. Ein überlegter Mittelweg (Aristoteles Weg der goldenen Mitte) führt oft zu brauchbaren Ergebnissen. Meine eigene Meinung: Über 80% aktueller Software-Produkte sollten neu geschrieben werden.

> Warnung! Neu-Schreiben von Software kann zu Agressionen, Zeit- / Raumverlust und anderen unvorhersehbaren Neben-Effekten führen.

## The DNS Disaster

Daniel Julius Bernstein bot $1000 Preisgeld für Denjenigen, der eine Sicherheitslücke in seiner Software djbdns, die weltweit bis zum Jahr 2008 ohne gefundene Schwachstelle betrieben wurde.

Da die vom Internet Consortium geschriebene DNS-Software "Bind" (CNS und ANS) permanent mit Sicherheits-Lücken gespickt war, entschied er sich, djbdns zu programmieren, um das Internet global sicherer zu gestalten.

> Bis heute wurde kein Remote-Code Exploit gefunden, über welches man sich in den Server hacken konnte.
> Lediglich eine grundlegende DNS-Protokoll-Schwachstelle erlaubte es DNS-Cache-Poisioning zu ermöglichen.

## Die 10 Grundregeln

Die wichtigsten 10 Regeln der Programmerung lauten:

```

* KISS: Keep it simple, stupid!
* Versuche vorhandene, durchdachte, gut getestete Libraries zu verwenden
* Benutze git als Versionskontroll-Software
* Benutze Agile Kolaborations-Tools / DevOps, (Kubernetes / GitLab / Stackfield)
* Versuche RFP (Request For Proposal) zu entwerfen und erst danach zu entwickeln
* Verwende gut strukturierte Daten-Modelle für deine API (XML / JSON)
* Entwickle an der "Richtigen Stelle"
* Schreibe ausreichende Tests (Unit und Integration)
* Dokumentiere das Projekt ausreichend
* Gehe den Weg der Goldenen Mitte (Aristoteles)

```

## Einhaltung der Regeln

Das Känguru aus der fabulösen Reihe "Die Känguru Chroniken" (Marc Uwe Kling) stellt interessante Wahrheiten im Umfeld seines Boxclubs auf. Die wichtigsten Lektionen kann man getrost auch auf die IT-Welt / Programmierung adaptieren:

```

1. Lektion: Wir wollen nicht programmieren. Wir müssen!
2. Lektion: Mitdenken!

```

Aber: Die Einhaltung von Regeln im Real-Live kann sich schwierig gestalten. In größeren Projekten (speziell Banken, Versicherungen und Service-Provider) sollte man ein Politik-Studium absolviert haben und trinkfest sein, bevor man sich in die Gefilde der Upper-Class begibt.

Eine inkorrekt gehandhabte Kommunikation oder fehlendes Verhandlungsgeschick führt schnell zu Frustration. Oft geht es in Projekten **nicht um die eigentliche Sache**. Politische Entscheidungen, die kontraproduktiv erscheinen sind an der Tagesordnung.

Auch hier zeigt sich häufig: habe ich mich an meine selbst aufgestellten Regeln gehalten? Eine ausgeklügelte Argumentation kann auch dem härtesten Projektleiter / Chef klarmachen, dass dies durch die Einhaltung der Regeln *kurzfristig* zwar zu höheren Aufwänden, *langfristig* aber zu großen Einsparungen führen kann (Details folgen).

# Generische Programmierung

Ebenso wichtig für eine saubere Code-Base, speziell größere Projekte: sollten von Grund auf generisch angegangen werden. Den Grad der Abstrahierung sollte man sich im Vorfeld (Planung) des Projektes genau überlegen.

## Objektorientierte Programmierung / OOP

Projekte ohne Objektorientierte Basis umzusetzen, fällt meiner Meinung nach unter *Grobe Fahrlässigkeit*. Die genauen Gründe hierfür werden unter den nachfolgenden Punkten betrachtet.

> Do not do it like Java, its hot like Lava. Uhhm, schnell den DJ-controller beiseite packen; auf die Programmier-Ebene umschalten.
> For real: Java-Abstrahierung == Subclassing to its extreme ... Schade, dass dadurch Basis-Faetures wie "Real-Threading" überschattet / in Missgunst gezogen werden.

## Programmiersprache / Environment

Die Auswahl der passenden Programmier-Sprachen spielt ebenso eine wichtige Rolle. Ist das Umfeld Windows / Linux / Unix / MacOS. Einer Java Lobby sollte man keinenfalls Python oder C++ als  Grundlage präsentieren.

> PHP und MySQL sind schon seit langem out!

## Refactoring

Ein objektorientiertes Grund-Gerüst hilft beim Refactoring immens und spart dadurch grundlegende Kosten. Also wie immer: Gut in die Basis investiert ist das A und O gut geschriebener Software.

## Testing

Ebenso ist die Auswahl eines oder mehrerer geeigneter Test-Frameworks essentiell. Die korrekte Funktionsweise / Stabilität sollte vor der Verwendung eingehenst überprüft werden.

> Das Selenium Browser-Test-Framework befand sich beispielsweise vor ca. 6 Jahren in einem nicht verwendbaren Zustand.

## Dokumentation

Ebenso ist die Auswahl passender Dokumentations-Systeme maßgebend. Ich selbst bin mit der Zeit beim Sphinx Framework hängen geblieben, obwohl der Markt weitaus modernere Systeme anbietet.

> Doxygen sucks! Mit ein wenig Aufwand ist es problemlos möglich Sphinx auch für ansprechende C++ Dokumentationen zu verwenden.

## Backup

Ein regelmäßiges Backup durchzuführen gehört ebenfalls zu einem erfolgreichen Projekt-Konzept. Hierfür empfehle ich leistungsstarke Rechner und Virtualisierungs-Technologien einzusetzen.

# Projekt Anforderungen

Was viele Programmierer vergessen: Nicht nur die technische Seite gehört zu einem runden Gesamt-Konzept. Defizite in der Organisation können ein Projekt schnell zum scheitern verurteilen.

Die nachfolgenden Punkte unterstützen dich bei einer sauberen Organisation / Kommunikation rund ums Projekt.

## Rahmenbedingungen / Verträge

Freelancer oder Festanstellung? Das ist hier die Frage. Als Freelancer kann man Projekt-bezogen viel Geld verdienen. Seid Euch aber bewusst: Ihr seid für Folge-Aufträge / Akquise und die Haftung bei erfolgten Schäden selbst verantwortlich.

Eine Festanstellung bietet ein sicheres Gehalt. Verglichen zur Freelancer-Entlohnung aber eher ein schmaler Taler.

## Service / SOA

Die folgenden Punkte sollte man beim Aufsetzen einer Service Orientierten Architektur beachten:

```

* Auf welche Web-Services ist das Projekt angewiesen?
* Miete ich die Services oder stelle ich diese Inhouse zur Verfügung?
* Welche Kosten entstehen?
* Beinhalten die Anforderungen eine Service-Skalierung?
* Welche Provider wähle ich für externe Services?
* Welche Cloud-Infrastruktur-Management Tools sind zu verwenden?
* Sind sonstige Service-Anforderungen gegeben?


```

## Skalierung

Ebenso spielt für größere Projekte der Faktor Skalierung eine wichtige Rolle. Die Aufgabe besteht nun darin, die passenden Cloud-Infrastrukturen zu wählen. AWS, Google Kubernetes oder ähnliche Provider.

> Choose wisely.

## Budget

Als ersten Punkt zählt es, das Budget abzuklären. Mit der Höhe des Budgets klärt sich, welche Regeln angewendet werden dürfen. Bei zu geringfügig angesetzten Projekt-Kosten rate ich ab, den Auftrag anzunehmen.

Renomierte Firmen neigen eher nicht dazu Kosten einzusparen, wenn diese sauber dargelegt werden, inwieweit Sie dem Unternehmen langfristig zu Gute kommen. Ebenso werden diese Unternehmen "hohe" Service-Kosten wie AWS ohne mit der Winper zu zucken akzeptieren.

> Das heißt aber nicht: Wir schmeißen das Geld zum Fenster raus. Die anfallenden Kosten müssen sauber in den Projektplan eingearbeitet werden, um auch aus Betriebswirtschaftlicher Sicht berücksichtig werden zu können.

## Team / DevOps

Ebenso steht die Team- Bildung und Kommunikation meiner Meinung nach ganz weit vorne. Ohne die Berücksichtigung des Aufbaus von Kommunikations-Grundlagen, regelmäßig abgehaltene Team-Absprachen wird ein Projekt unnötig in die Länge gezogen / steigen die Projektkosten immens.

## Security / Audits

4 Augen sehen mehr als 2. Externe Security-Audits sollten in regelmäßigen Intervallen statt-finden. Hierdurch erhöht man die Software-Qualität um ein Vielfaches.

