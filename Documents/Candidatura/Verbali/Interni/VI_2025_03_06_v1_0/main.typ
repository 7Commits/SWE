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
      text("Verbale Interno del 2025-03-06")
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

#align(center, text(weight: 600, size: 24pt, "Verbale Interno del 2025-03-06"))

#align(center, text(size: 15pt, "2025-03-06 - versione 1.0"))

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
  [Prof. Tullio Vardanega],[Marco Cola],[Stefano Dal Poz],[Ruize Lin],
  [Prof. Riccardo Cardin],[],[Michele Ogniben],[Giulia Hu],
  [Gruppo 7Commits],[],[Giada Rossi],[]
)

#pagebreak()

#align(left, text(weight: 600, size: 16pt, "Registro delle modifiche"))

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 5,
  [*Versione*],[*Data*],[*Autori*],[*Verificatori*],[*Descrizione*],
  [v1.0], [2025-03-11], [Stefano Dal Poz, Marco Cola],[Ruize Lin, Giulia Hu],[Aggiunta del logo e riorganizzazione del documento],
  [0.1],[2025-03-10],[Stefano Dal Poz],[Ruize Lin],[Prima Bozza],
)

#pagebreak()

#outline(depth: 3)

#pagebreak()

#set heading(numbering: "1.")

= Contenuti del Verbale

== Informazioni sulla riunione
Prima riunione del gruppo per definire lo stesso. Nella riunione erano presenti: 
#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 2,
  align: center,
  [*Nominativo*],[*Presente*],
  [Marco Cola], [Si],
  [Stefano Dal Poz],[Si],
  [Giulia Hu],[Si],
  [Ruize Lin],[Si],
  [Michele Ogniben],[Si],
  [Mattia Piva],[Si],
  [Giada Rossi],[Si],
)

== Ordine del giorno
- Definizione del nome del gruppo
- Analisi e indicazione di preferenza in merito ai capitolati
- Organizzazione riunioni interne future

= Sintesi dell’incontro
Riunione avvenuta giovedì 06/03/2025 via Discord dalle 9:30 alle 11 per gestire l'organizzazione iniziale del gruppo e discutere le varie preferenze dei singoli componenti in merito ai 4 capitolati a disposizione. Sono state inoltre analizzate possibili tecnologie da utilizzare per la gestione futura del progetto, come Git, GitHub, Typst e una mail ufficiale di riferimento per le comunicazioni, ovvero #link("mailto:7commits@gmail.com", "7commits@gmail.com"), si è anche iniziato a discutere della creazione di un sito web per la raccolta della documentazione prodotta.

= Decisioni prese
- È stato scelto il nome del gruppo, ovvero \"7Commits\"
- In seguito all'analisi dei capitolati a disposizione sono state date le seguenti indicazioni di preferenza: capitolato C1 come prima scelta, capitolato C4 come seconda scelta e capitolato C6 come terza scelta.
- Si è scelto di utilizzare Telegram per la messaggistica, Discord per le riunioni, Typst per la stesura dei documenti, Git come strumento di controllo di versione e GitHub come piattaforma di hosting per le repository

= Attività

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 3,
  [*ID*],[*Dettaglio*],[*Assegnato/i*],
  [#link("https://github.com/7Commits/SWE/issues/2", "#2")],[Creazione sito documentazione], [Marco Cola, Ruize Lin],
  [#link("https://github.com/7Commits/SWE/issues/1", "#1")],[Stesura di questo verbale], [Stefano Dal Poz]
)