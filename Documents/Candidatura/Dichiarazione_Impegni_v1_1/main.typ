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
      text("Dichiarazione degli impegni")
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

#align(center, text(weight: 600, size: 24pt, "Dichiarazione degli impegni"))

#align(center, text(size: 15pt, "v1.1"))

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
  [v1.1],[2025-03-19],[Marco Cola, Stefano Dal Poz],[Michele Ogniben, Mattia Piva],[Aggiunto data di consegna, grafico divisione ruoli e corretto registro delle modifiche],
  [v1.0],[2025-03-17],[Marco Cola],[Michele Ogniben, Giulia Hu],[Aggiunti ruoli e divisione oraria],
  [v0.1],[2025-03-16],[Marco Cola],[Giulia Hu],[Prima Bozza],
)

#pagebreak()


#outline(depth: 5)

#pagebreak()

#set heading(numbering: "1.")

= Scopo del documento
In questo documento vengono riportati il preventivo per il progetto, calcolato in base alla suddivisone
in ruoli delle ore di lavoro e relativi costi, il totale di ore produttive assegnate per ogni membro e la scadenza ultima di consegna prevista.

= Impegni orari
Ogni componente del gruppo 7Commits si impegna di dedicare al progetto un totale di 90 ore produttive,
suddivise equamente tra i membri nello svolgimento dei vari ruoli previsti.
#linebreak()
La seguente tabella riporta la spartizione decisa dal gruppo:

#table(
  fill: (x, y) => if y == 0 {rgb("#d9d9d9")},
  columns: 5,
  [*Ruoli*],[*Costo orario*],[*Ore per ruolo*],[*Ore per membro*],[*Costo per ruolo*],
  [Responsabile],[30€],[64],[9],[1920€],
  [Amministratore],[20€],[55],[8],[1100€],
  [Analista],[25€],[80],[11],[2000€],
  [Progettista],[25€],[117],[17],[2925€],
  [Programmatore],[15€],[170],[24],[2550€],
  [Verificatore],[15€],[147],[21],[2205€],
  [],[],[633 totali],[90 totali],[12700€ totali]
)
#figure(
  image("grafico_ruoli.png", width: 90%),
  caption: [
    Divisione ruoli
  ],
)
#v(0.5cm)

== Ruoli e motivazione delle ore
Il calcolo delle ore per ruolo è avvenuto tenendo presente le seguenti funzioni per i ruoli da ricoprire:

- *Responsabile*: Supervisiona il piano di lavoro, approva il rilascio di prodotti (software e documentazione) e coordina le attività del team;
- *Amministratore*: Garantisce l’efficienza di strumenti, procedure e tecnologie a supporto del lavoro;
- *Analista*:  Esperto del dominio del problema, fornisce le basi per lo sviluppo;
- *Progettista*: Definisce le scelte tecniche e di design del progetto;
- *Programmatore*: Sviluppa e mantiene il prodotto seguendo le direttive del progettista;
- *Verificatore*: Controlla la qualità, affidabilità e robustezza del lavoro svolto;

#v(1cm)

Nel progetto, la distribuzione delle ore tra i vari ruoli è stata definita in base alle responsabilità assegnate e alle esigenze di sviluppo. Il programmatore, con 170 ore, avrà un ruolo centrale nell’implementazione del prodotto, mentre il progettista, con 117 ore, si occuperà di definire un’architettura solida e scalabile. Il verificatore, con 147 ore, garantirà la qualità del prodotto attraverso test accurati, in linea con le richieste avanzate dall’azienda nel Capitolato.

Le figure del responsabile, dell’analista e dell’amministratore hanno un impatto strategico sulle fasi iniziali e di gestione del progetto. L’analista, con 80 ore, fornirà indicazioni dettagliate per guidare lo sviluppo, mentre l’amministratore, con 55 ore, avrà il compito di coordinare il gruppo e interfacciarsi con il committente e il proponente. Il responsabile, con 64 ore, garantirà che il lavoro proceda in modo organizzato ed efficiente.

L’allocazione delle ore riflette la necessità di bilanciare pianificazione, sviluppo e verifica. Il numero elevato di ore per il progettista risponde alla complessità del prodotto, mentre le ore assegnate al verificatore testimoniano l’importanza di un controllo rigoroso prima della consegna. L’interazione tra queste figure consentirà di ottenere un prodotto ben strutturato, efficiente e conforme alle richieste del progetto.

= Preventivo e stima di consegna
L’impegno orario totale è quindi di nr. 633 ore, mentre l’importo del preventivo ammonta ad €12700.
#linebreak()
Si stima di consegnare il progetto entro e non oltre il 2025/08/19.
