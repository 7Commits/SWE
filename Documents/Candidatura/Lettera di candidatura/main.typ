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
      text("Lettera di Candidatura")
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

#v(1cm)

#align(center, text(weight: 600, size: 24pt, "Lettera di Candidatura"))

#v(1cm)

#align(center, text(size: 15pt, 
"Università degli Studi di Padova 
 Corso di Ingegneria del Software
Anno accademico 2024/25
Gruppo 20 - Lotto II"))

#v(1cm)

#align(center, image("7CLogo.png", width: 300pt))

#align(center, link("mailto:7commits@gmail.com", "7commits@gmail.com"))

#pagebreak()

#v(1cm)


#align(left, text(size: 13pt, "Egregio Prof. Tullio Vardanega,"))
#align(left, text(size: 13pt, "Egregio Prof. Riccardo Cardin,"))
#align(left, text(size: 13pt, "con la presente il gruppo numero 20, 7Commits, intende presentare ufficialmente la propria candidatura per la realizzazione del capitolato da Voi commissionato, denominato:"))
#align(center, text(19pt)[ *Artificial QI*])
#align(left, text(size: 13pt, "proposto dall'azienda Zucchetti."))

#v(1cm)

#align(left, text(size: 13pt, "Tutta la documentazione relativa alla gara d'appalto è disponibile sia sul sito web che nella repository dedicata:"))

#v(1cm)

#align(center, text(size: 13pt, link("https://7commits.github.io/7Commits/")))
#align(center, text(size: 13pt, link("https://github.com/7Commits/SWE")))

#v(1cm)

#align(left, text(size: 13pt, "Nello specifico sono disponibili i seguenti documenti:"))

- Dicharazione degli impegni e preventivo dei costi;

- Analisi dei capitolati;

- Verbali interni: 

  - VI_2025_03_06_v1.0
  - VI_2025_03_10_v1.1
  - VI_2025_03_13_v1.0
  - VI_2025_03_17_v1.0
  
- Verbali esterni: 

  - VE_2025_03_12_Zucchetti_v1.1
  - VE_2025_03_12_SyncLab_v1.1


#pagebreak()
#v(1cm)


Come specificato nel documento di dichiarazione degli impegni, il gruppo _7Commits_ ha preventivato un costo totale per la realizzazione del progetto di *€ 12700* e prevede di consegnare il prodotto richiesto entro e non oltre il *19/08/2025*.

#v(0.5cm)

Di seguito si riportano i nominativi dei componenti del gruppo e i corrispondenti numeri di matricola:

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 2,
  align: center,
  [*Nominativo*],[*Numero matricola*],
  [Marco Cola], [2079237],
  [Stefano Dal Poz],[1204683],
  [Giulia Hu],[2009118],
  [Ruize Lin],[2068236],
  [Michele Ogniben],[2042325],
  [Mattia Piva],[2008065],
  [Giada Rossi],[2045353],
)
#v(1cm)

Per qualsiasi delucidazione rimaniamo a Vostra completa disposizione.

#v(2cm)

#align(right, text("Cordiali saluti,"))
#align(right, text("il gruppo 7Commits"))
