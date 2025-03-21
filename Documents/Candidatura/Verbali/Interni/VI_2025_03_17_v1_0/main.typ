#let titolo = "Verbale Interno del "
#let versione = "1.0"
#let data = "2025-03-17"

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
      text(titolo+data)
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

#align(center, text(weight: 600, size: 24pt, titolo + data))

#align(center, text(size: 15pt," versione " + versione))

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
  [v1.0],[2025-03-18],[Marco Cola],[Michele Ogniben],[Completato documento],
  [v0.1],[2025-03-17],[Marco Cola],[Michele Ogniben],[Prima bozza],
)

#pagebreak()


#outline(depth: 5)

#pagebreak()

#set heading(numbering: "1.")

= Contenuti del verbale

== Informazioni sulla riunione
La riunione ha avuto luogo sulla piattaforma Discord, con orario di inizio 20.15 e orario di fine 21.00. Alla riunione hanno partecipato i seguenti componenti:
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

- Scrittura mail per approvazione verbali esterni Zucchetti e SyncLab
- Avvio della sezione di Glossario nel sito web del gruppo
- Discussione sul documento di Dichiarazione degli Impegni
- Definizione del piano di lavoro dei prossimi giorni

= Sintesi dell’incontro
Nell'incontro odierno sono stati discussi diversi temi, principalmente riguardanti gli ultimi documenti da scrivere per la fase di Candidatura, ovvero la Dichiarazione degli impegni, la lettera di candidatura e l'analisi dei capitolati. Dopo un checkup generale sullo stato di completamento dei documenti si è proseguito con il discutere della sezione di Glossario del sito web e dell'invio delle mail per la richiesta di approvazione dei due verbali esterni. Dopo aver raggiunto una decisione riguardo all'impegno orario e alla data di completamento del progetto la riunione è terminata.

= Decisioni prese
- Deciso la data limite di consegna del progetto
- Deciso il programma dei prossimi giorni

= Attività 

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 3,
  [*ID*],[*Dettaglio*],[*Assegnato/i*],
  [#link("https://github.com/7Commits/SWE/issues/12", "#12")],[Stesura verbale interno 2025_03_17], [Marco Cola],
  [#link("https://github.com/7Commits/SWE/issues/13", "#13")],[Caricamento documenti firmati dalle aziende], [Marco Cola]
)