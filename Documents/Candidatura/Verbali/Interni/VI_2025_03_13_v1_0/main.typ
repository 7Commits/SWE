#set page(
  paper: "a4",      // Formato A4
  margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
  numbering: "1",
  header-ascent: 25%,
  header: context {
    if counter(page).get().first() > 1 [
      #grid(
      columns: (1fr, 1fr),
      align: (left, horizon+right),
      image("7CLogoFull.png", width: 7.5em),
      text("Verbale Interno del 2025-03-13")
      )
    ]
  }
)

#set text(
  lang: "it",
  font: "New Computer Modern",  // Font per il testo
  size: 11pt                   // Dimensione del carattere
)

#show "7Commits": name => box[
  #box(image(
    "7CLogo.png",
    height: 0.7em,
  ))
  #name
]

#align(center, text(weight: 600, size: 24pt, "Verbale Interno del 2025-03-13"))

#align(center, text(size: 15pt, "2025-03-13 - v1.0"))

#v(1cm)

#align(center, image("7CLogo.png", width: 300pt))

#align(center, link("mailto:7commits@gmail.com", "7commits@gmail.com"))

#v(1cm)
#align(bottom)[
  #align(right, text(weight: 600, size: 12pt, "Progetto di Ingegneria del Software"))
  #align(right, text("Α.Α. 2024/2025"))
]
#v(1.5cm)


#set align(left)

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 4,
  [*Destinatari*],[*Responsabile*],[*Redattori*],[*Verificatori*],
  [Prof. Tullio Vardanega],[Ruize Lin],[Marco Cola],[Michele Ogniben],
  [Prof. Riccardo Cardin],[],[Stefano Dal Poz],[Giulia Hu],
  [Gruppo 7Commits],[],[Giada Rossi],[Mattia Piva]
)

#pagebreak()

#align(left, text(weight: 600, size: 16pt, "Registro delle modifiche"))

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 5,
  [*Versione*],[*Data*],[*Autori*],[*Verificatori*],[*Descrizione*],
  [1.0],[2025-03-17],[Marco Cola, Stefano Dal Poz],[Mattia Piva],[Stesura del verbale],
  [0.1],[2025-03-13],[Stefano Dal Poz],[Mattia Piva],[Prima Bozza],
)

#pagebreak()


#outline(depth: 5)

#pagebreak()

#set heading(numbering: "1.")

= Contenuti del verbale


== Informazioni sulla riunione
La riunione ha avuto luogo sulla piattaforma Discord, con orario di inizio 18.30 e orario di fine 19.15. Alla riunione hanno partecipato i seguenti componenti:
#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 2,
  align: center,
  [*Nominativo*],[*Presente*],
  [Marco Cola], [No],
  [Stefano Dal Poz],[Si],
  [Giulia Hu],[Si],
  [Ruize Lin],[No],
  [Michele Ogniben],[No],
  [Mattia Piva],[Si],
  [Giada Rossi],[Si]
)

== Ordine del giorno

- Approvazione verbali interni del 6/03 e del 10/03
- Approvazione verbali esterni del 12/03 per il capitolato C1 e del 12/03 per il capitolato C4
- Definizione del piano di lavoro per i prossimi giorni

= Sintesi dell’incontro

Nell'incontro odierno si è proceduto all'approvazione dei verbali interni del 2025-03-06 e del 2025-03-10 e dei verbali esterni in merito agli incontri con le proponenti dei capitolati C1 e C4, rispettivamente le aziende Zucchetti Software e SyncLab. Successivamente si è definito il piano di lavoro da seguire i prossimi giorni, distribuendo le attività rimanenti tra i vari membri del gruppo con delle Issue su GitHub.

= Decisioni prese
- Assegnate le attività rimanenti ai rispettivi componenti del gruppo
- Fissato prossima riunione interna il 17/03

= Attività 

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 3,
  [*ID*],[*Dettaglio*],[*Assegnato/i*],
  [#link("https://github.com/7Commits/SWE/issues/8", "#8")],[Stesura Documento di Valutazione dei Capitolati], [Stefano Dal Poz],
  [#link("https://github.com/7Commits/SWE/issues/9", "#9")],[Stesura di questo verbale], [Stefano Dal Poz]
)