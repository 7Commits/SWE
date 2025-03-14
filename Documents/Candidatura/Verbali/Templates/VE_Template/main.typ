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
      text("Verbale Esterno del 2025-mm-dd")
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

#align(center, text(weight: 600, size: 24pt, "Verbale Esterno del 2025-mm-dd"))

#align(center, text(size: 15pt, "2025-mm-dd - versione"))

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
  [Prof. Tullio Vardanega],[Nome Cognome],[Nome Cognome],[Nome Cognome],
  [Prof. Riccardo Cardin],[Nome Cognome],[Nome Cognome],[Nome Cognome],
  [Gruppo 7Commits],[Nome Cognome],[Nome Cognome],[Nome Cognome]
)

#pagebreak()

#align(left, text(weight: 600, size: 16pt, "Registro delle modifiche"))

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 5,
  [*Versione*],[*Data*],[*Autori*],[*Verificatori*],[*Descrizione*],
  [],[yyyy-mm-dd],[],[],[],
  [],[yyyy-mm-dd],[],[],[],
)

#pagebreak()


#outline(depth: 5)

#pagebreak()

#set heading(numbering: "1.")

= Contenuti del verbale
== Informazioni sulla riunione
== Ordine del giorno

- Punto 1
- Punto 2
- Punto 3

= Sintesi dell’incontro

= Domande effettuate con relative risposte

== Domanda 1
== Domanda 2
