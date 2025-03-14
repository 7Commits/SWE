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
      text("Verbale Esterno del 2025-03-12")
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

#align(center, text(weight: 600, size: 24pt, "Verbale Esterno del 2025-03-12"))

#align(center, text(size: 15pt, "2025-03-12 - v1.0"))

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
  [Gruppo 7Commits],[],[Giada Rossi],[Mattia Piva],
  [_SyncLab_]
)

#pagebreak()

#align(left, text(weight: 600, size: 16pt, "Registro delle modifiche"))

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 5,
  [*Versione*],[*Data*],[*Autori*],[*Verificatori*],[*Descrizione*],
  [v1.1],[2025-03-13],[Marco Cola, Michele Ogniben],[Mattia Piva],[Aggiunte risposte alle domande e Sintesi dell'incontro],
  [v1.0],[2025-03-12],[Marco Cola],[Ruize Lin, Giulia Hu],[Aggiunto logo e domande],
  [v0.1],[2025-03-12],[Marco Cola],[Ruize Lin],[Prima Bozza],
)

#pagebreak()


#outline(depth: 5)

#pagebreak()

#set heading(numbering: "1.")

= Contenuti del verbale
== Informazioni sulla riunione
La riunione si è svolta dalle ore 15:00 alle ore 15:35 sulla piattaforma Google Meet, ha partecipato come rappresentante dell'azienda proponente SyncLab l'Ing. Pallaro Fabio, mentre come rappresentanti del gruppo hanno partecipato i seguenti membri:

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 1,
  align: center,
  [*Nome e Cognome*],
  [Marco Cola],
  [Giulia Hu],
  [Ruize Lin],
  [Stefano Dal Poz],
  [Giada Rossi]
)

== Ordine del giorno

- Stabilire i metodi di collaborazione con l'azienda
- Richiesta di specifiche riguardanti il tipo di prodotto richiesto
- Discussione sulle tecnologie da utilizzare
- Discussione su eventuali difficoltà incontrate dai gruppi del primo lotto

= Sintesi dell’incontro
Nella riunione il team si è confrontato con l'Ing. Pallaro Fabio riguardo il capitolato C4, preso in considerazione come seconda scelta dal nostro gruppo. Come primo incontro si è discusso principalmente della realizzazione del progetto, delle tecnologie necessarie e delle eventuali difficoltà che come gruppo potremo incontrare in futuro. Sono stati forniti al gruppo da parte dell'azienda molti spunti interessanti e consigli su come svolgere il lavoro e quali tecnologie sono le più adatte ai vari compiti.

= Domande effettuate con relative risposte

== Richiesta di chiarimento sul prodotto finale atteso, la WebApp con che tecnologie è preferibile svilupparla?
L'azienda ci ha comunicato di essere aperta a soluzioni innovative, consigliando però l'utilizzo di un framework per lo sviluppo della WebApp e citando Grafana come piattaforma per la visualizzazione dei dati.

== Frequenza di incontro consigliata
È stata consigliata una frequenza di una settimana oppure due in base alle necessità, l'azienda ha comunicato di prevedere una suddivisione del lavoro tramite degli sprint della durata di 1 o 2 settimane. Gli incontri dovranno avere luogo tramite chat, sul server discord messo a disposizione dall'azienda oppure in videochiamata su Google Meet come avvenuto in data odierna.

== Nel capitolato, si cita la profilazione avanzata degli utenti prestabilita come prompt per il modello LLM, in fase di realizzazione in che modo possono essere simulati, librerie Python come faker sono sufficienti?
L'azienda consiglia una generazione dei dati simulativa, ma non predilige l'utilizzo di una singola tecnologia.

== L'applicazione deve avere anche modo di calcolare il percorso più breve tra partenza e destinazione, come un app di mappe? Oppure ottiene solamente la posizione simulata in tempo reale?
No, non è un requisito richiesto e neppure necessario alla buona realizzazione del Capitolato.

== Verranno forniti dei servizi di API da parte dell'azienda? Quale LLM è consigliato?
L'azienda si è resa disponibile a fornire un API Rest e un abbonamento ChatGPT, ma sottolinea che i gruppi del primo lotto non hanno usufruito di questa possibilità, ci viene consigliato Gemini come LLM gratuito, oppure ChatGPT senza abbonamento premium. 



