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

#align(center, text(size: 15pt, "2025-03-12 - v1.1"))

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
  [Gruppo 7Commits],[],[Giada Rossi],[Mattia Piva],
  [_Zucchetti_]
)

#pagebreak()

#align(left, text(weight: 600, size: 16pt, "Registro delle modifiche"))

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 5,
  [*Versione*],[*Data*],[*Autori*],[*Verificatori*],[*Descrizione*],
  [v1.1],[2025-03-12], [Marco Cola],[Mattia Piva],[Aggiunte risposte alle domande e presenze all'incontro],
  [v1.0],[2025-03-12],[Marco Cola],[Mattia Piva],[Aggiunto logo e domande effettuate],
  [v0.1],[2025-03-12],[Marco Cola],[Giulia Hu],[Prima Bozza],
)

#pagebreak()


#outline(depth: 5)

#pagebreak()

#set heading(numbering: "1.")

= Contenuti del verbale
== Informazioni sulla riunione
La riunione si è svolta dalle ore 11:00 alle ore 11:45 sulla piattaforma Google Meet, ha partecipato come rappresentante dell'azienda proponente il Sig. Gregorio Piccoli, come rappresentanti del gruppo hanno partecipato i seguenti membri:

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 1,
  align: center,
  [*Nome e Cognome*],
  [Marco Cola], 
  [Stefano Dal Poz],
  [Giulia Hu],
  [Ruize Lin],
  [Mattia Piva],
  [Michele Ogniben],
  [Giada Rossi]
)

== Ordine del giorno

- Stabilire i metodi di collaborazione con l'azienda
- Richiesta di specifiche riguardanti il tipo di prodotto richiesto
- Discussione sulle tecnologie da utilizzare
- Discussione su eventuali difficoltà incontrate dai gruppi del primo lotto

= Sintesi dell’incontro
Nella riunione il team si è confrontato con Gregorio Piccoli (Board member and CTO dell'azienda Zucchetti)
riguardo il capitolato C1, preso in considerazione come prima scelta dal gruppo. Come primo incontro si è discusso principalmente della realizzazione del progetto, delle tecnologie necessarie e delle eventuali difficoltà che come gruppo potremo incontrare in futuro.

= Domande effettuate con relative risposte

== Richiesta di chiarimento sul prodotto finale atteso, è preferibile un software standalone oppure una WebApp?
L'azienda ha specificato di preferire una WebApp, basandosi su esperienza con i gruppi precedenti e le informazioni che hanno sul nostro corso di studi ritengono che sia la scelta migliore, lasciandoci libera scelta sul modo di svilupparla e le relative tecnologie Web scelte. Viene consigliato l'utilizzo di Streamlit, un framework open-source in Python per creare applicazioni web interattive.

== Nel capitolato si parla dell'utilizzo di LLM (Large Language Models), ci sono preferenze riguardo ai modelli utilizzati per le risposte? 
Per l'utilizzo in locale di un LLM, opzione consigliata dall'azienda, ci viene consigliato il framework Ollama, che permette di eseguire modelli di linguaggio avanzati direttamente sul proprio PC, sfruttando risorse hardware locali (CPU/GPU). Viene citato anche llama.cpp, simile a Ollama, ma ci consiglia di utilizzare Ollama in quanto ottimizzato per le alte prestazioni e più facile da usare.

== L'azienda sarà disponibile a fornire materiale per la formazione sulle tecnologie necessarie?
L'azienda si rende disponibile ma consiglia di richiedere feedback soprattutto dai gruppi del primo lotto che hanno già svolto il Capitolato. Viene inoltre consigliato di utilizzare Ollama con gli LLM in locale, con una lista di Domande e Risposte da analizzare, piuttosto di richiedere un servizio API all'azienda.

== Frequenza di incontro consigliata
L'azienda consiglia di incontrarsi quando il gruppo riscontra delle difficoltà o ha bisogno di ulteriori chiarimenti, non ritiene necessario fissare degli incontri periodici. Come prossimo incontro viene data la possibilità di incontrare il Sig. Gregorio Piccoli come rappresentante dell'azienda Zucchetti nel loro stand all'evento STAGE-IT del 24 marzo.

== Nel capitolato, si consiglia durante la fase Proof of Concept di utilizzare degli algoritmi di confronto tra risposte attese e risposte ottenute, ci sono alcuni algoritmi noti su cui prendere spunto?
L'azienda ritiene che questa parte del progetto sia la più interessante ed è aperta a soluzioni innovative. Vengono comunque citati dei possibili metodi di confronto, come le regular expression, applicazioni specifiche ai Large Language Models (LLM), con la selezione di modelli specifici, oppure un mix tra i due metodi.

== Come può essere quantificato il grado di errore nelle risposte dei LLM analizzati?
L'azienda consiglia di quantificare tramite una percentuale la correttezza di ogni risposta fornita, in base al modello.


#v(2cm) 
#align(right)[
  #text(size: 10pt, "Approvazione dell'azienda")
]

#align(right)[
  #text(size: 10pt, "Nome:")
  #v(0.5cm)
  #line(length: 5cm, stroke: 0.5pt)
  #v(0.2cm)
  #text(size: 10pt, "Firma:")
  #v(0.4cm)
  #line(length: 5cm, stroke: 0.5pt)
]