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
      text("Verbale Interno del 2025-03-10")
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

#align(center, text(weight: 600, size: 24pt, "Verbale Interno del 2025-03-10"))

#align(center, text(size: 15pt, "2025-03-10 - v1.0"))

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
  [Prof. Tullio Vardanega],[Stefano Dal Poz],[Marco Cola],[Ruize Lin],
  [Prof. Riccardo Cardin],[],[Michele Ogniben],[Giulia Hu],
  [Gruppo 7Commits],[],[Giada Rossi],[]
)

#pagebreak()

#align(left, text(weight: 600, size: 16pt, "Registro delle modifiche"))

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 5,
  [*Versione*],[*Data*],[*Autori*],[*Verificatori*],[*Descrizione*],
  [v1.0], [2025-03-11], [Marco Cola],[Ruize Lin, Giulia Hu],[Aggiunta del logo e riorganizzazione del documento],
  [v0.1],[2025-03-10],[Marco Cola],[Giulia Hu],[Prima Bozza],
)

#pagebreak()


#outline(depth: 5)

#pagebreak()

#set heading(numbering: "1.")

= Contenuti del verbale


== Informazioni sulla riunione
La riunione ha avuto luogo sulla piattaforma Discord, con orario di inizio 18.30 e orario di fine 19.45. Alla riunione hanno partecipato i seguenti componenti:
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
  [Mattia Piva],[No],
  [Giada Rossi],[Si],
)

== Ordine del giorno

- Scrittura e impostazione delle mail per il meeting con le aziende Zucchetti e SyncLab
- Discussione sull'impostazione dei documenti Typst e terminazione dei documenti necessari
- Definizione del piano di lavoro dei prossimi giorni

= Sintesi dell’incontro
Nell'incontro odierno sono stati avviati i primi contatti con le aziende Zucchetti Software e SyncLab, rispettivamente proponenti dei capitolati C1 e C4, ai quali il gruppo ha riposto il maggior interesse. Si è poi discusso della distribuzione dei ruoli e la gestione della repository GitHub, indicando ad ogni partecipante i compiti da svolgere tramite la funzione Issues di GitHub. Il gruppo ha infine scelto il logo più adatto tra quelli proposti.

= Decisioni prese
- Definita la struttura dei documenti
- Deciso i ruoli per la fase di Candidatura
- Scelto il logo del gruppo

= Attività 

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 3,
  [*ID*],[*Dettaglio*],[*Assegnato/i*],
  [#link("https://github.com/7Commits/SWE/issues/3", "#3")],[Stesura Verbale interno 2025-03-10], [Marco Cola],
  [#link("https://github.com/7Commits/SWE/issues/4", "#4")],[Modifiche stilistiche al sito web], [Ruize Lin],
  [#link("https://github.com/7Commits/SWE/issues/5", "#5")],[Stesura prima versione lettera di presentazione], [Giada Rossi],
  [#link("https://github.com/7Commits/SWE/issues/6", "#6")],[Stesura prima versione documento Dichiarazione Impegni], [Michele Ogniben],
  [#link("https://github.com/7Commits/SWE/issues/7", "#7")],[Organizzazione incontro con Aziende proponenti], [Marco Cola]
)