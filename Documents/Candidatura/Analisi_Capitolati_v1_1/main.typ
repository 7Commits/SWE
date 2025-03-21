#let titolo="Analisi capitolati"
#let versione = "1.1"
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
      text(titolo)
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

#align(center, text(weight: 600, size: 24pt, titolo))

#align(center, text(size: 15pt, "versione " + versione))

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
  [1.1],[2025-03-17],[Marco Cola],[Michele Ogniben, Giulia Hu],[Analisi capitolati C3 e C4],
  [1.0],[2025-03-14],[Stefano Dal Poz],[Michele Ogniben, Giulia Hu, Mattia Piva],[Analisi capitolati C1 e C6],
  [0.1],[2025-03-14],[Stefano Dal Poz],[Mattia Piva],[Prima Bozza],
)

#pagebreak()

#outline(depth: 5)

#pagebreak()

#set heading(numbering: "1.")

= *Capitolato scelto: C1 - Artificial QI*
#linebreak()
*Proponente:* Zucchetti S.p.A

*Committente:* Prof. Vardanega Tullio, Prof. Cardin Riccardo

*Riferimento:* #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C1.pdf", "Capitolato 1")

== Descrizione

Questo progetto propone di sviluppare un sistema di testing e valutazione per misurare l'accuratezza, la coerenza e l'affidabilità delle risposte di un modello AI in risposta a domande specifiche. L'obiettivo è garantire che i modelli basati su Large Language Models (LLM) offrano prestazioni prevedibili e verificabili in contesti applicativi.

== Dominio applicativo

  - *Validazione delle risposte AI*: Il sistema confronterà risposte attese con quelle generate da modelli LLM, valutandone la correttezza e la coerenza attraverso diversi metodi di confronto.
  - *Testing di API AI*: Il progetto prevede l'uso di API REST per interrogare sistemi esterni e raccogliere risposte, secondo lo standard OpenAPI 3.1
  - *Supporto decisionale*: Lo strumento aiuterà sviluppatori e ricercatori a scegliere il modello più adatto a specifiche esigenze, considerando fattori come accuratezza, allucinazioni e adattabilità al contesto.
  - *Archiviazione e confronto tra test*: Il sistema dovrà permettere di salvare e confrontare risultati di test eseguiti in momenti diversi, fornendo analisi storiche.
  - *Automazione dei test*: Implementazione di test automatici per garantire ripetibilità e ridurre la necessità di validazioni manuali.

== Tecnologie utilizzate

  - *Formati di output*: JSON oppure XML per l'analisi strutturata delle risposte
  - *Database relazionale* per l'archiviazione delle risposte e dei test effettuati 
  - *API* per l'interazione con modelli AI esterni e raccolta delle risposte
  - *WebApp* per la visualizzazione ed interazione con il sistema
  - *Algoritmi di valutazione*: Uso di modelli di scoring e confronto testuale per determinare la similarità delle risposte

== Punti di forza

  - Apprendimento ed utilizzo di diversi LLM, comparazione tra diversi modelli e loro adattabiliità a specifici casi d'uso
  - Permette di valutare in modo strutturato e ripetibile le risposte fornite dai modelli AI
  - Non ci sono particolari vincoli per le tecnologie da utilizzare, lasciando libertà agli sviluppatori

== Punti di debolezza

  - Difficoltà a trovare un criterio oggettivo di valutazione delle risposte
  - Rischio di allucinazioni se vengono usati altri modelli per validare le risposte, non sempre una risposta semanticamente simile è realmente corretta nel contesto specifico

== Conclusioni

Il progetto è stato fin da subito ritenuto il più stimolante per il gruppo, grazie alle sfide tecnologiche e metodologiche che pone e alla libertà di sviluppo lasciata dall'azienda. La possibilità di esplorare nuove metodologie di validazione delle risposte AI e di confrontare diversi modelli LLM rende questo lavoro particolarmente interessante. Tuttavia, rimangono interrogativi su come definire un criterio oggettivo per valutare la correttezza delle risposte e sull'affidabilità dell'uso di altri modelli AI come validatori. La progettazione dovrà quindi concentrarsi su soluzioni innovative per garantire una valutazione il più possibile oggettiva ed efficace, contribuendo in modo significativo all'affidabilità dei modelli AI nel contesto applicativo.

#pagebreak()

= *Capitolato C3 - Automatizzare le routine digitali tramite l’intelligenza generativa*
#linebreak()
*Proponente:* Var Group S.p.A.

*Committente:* Prof. Vardanega Tullio, Prof. Cardin Riccardo

*Riferimento:* #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf", "Capitolato 3")

== Descrizione

Il Capitolato mira a realizzare un servizio ad agenti. Gli utenti dovranno poter disegnare localmente un workflow sfruttando le API dei software locali e l'intelligenza artificiale in cloud per automatizzare attività quotidiane svolte manualmente, come l'avvio in automatico di una riunione su Teams a partire da un link contenuto in una mail Outlook. Il progetto prevede la creazione di:

    - Un sistema di Gen AI in cloud in grado di ricevere dati software locali e produrre automazioni da eseguire localmente o tramite API ai servizi finali.
    - Un applicativo cliente per Mac o PC che permetta agli utenti di disegnare il workflow.
    - Un repository di blocchi funzionali che accedono alle API applicative (es., invio email tramite Outlook, lettura calendario, creazione evento o messaggio Slack).

Per ogni step del workflow, l'utente potrà descrivere in linguaggio naturale l'attività di logica e il software dovrà creare la logica di automazione in autonomia.

== Dominio applicativo

Il dominio applicativo è quello dell'automazione digitale, con un focus sull'utilizzo dell'intelligenza artificiale generativa per semplificare la creazione di workflow automatizzati. Il progetto si propone di risolvere il problema della complessità e della manualità delle attività digitali quotidiane, offrendo una soluzione che permette agli utenti di automatizzare facilmente le proprie routine.

== Tecnologie utilizzate

Il capitolato raccomanda l'utilizzo delle seguenti tecnologie:

    - *Sviluppo Agent*:
        - *Ambiente Windows*: Python o C\#, MongoDB o altro database locale, React per interfacce applicative web.
        - *Ambiente Apple*: Swift, MongoDB o altro database locale, Swift UI.
        
    Linguaggi di programmazione per lo sviluppo API cloud: NodeJS, Python, Typescript.

== Punti di forza

    - *Innovazione*: Utilizzo dell'intelligenza artificiale generativa per l'automazione di workflow.
    - *Flessibilità*: Possibilità per gli utenti di creare workflow personalizzati.
    - *Estensibilità*: Il Capitolato prevede future estensioni, richiede dunque appropriata documentazione.
    - *Supporto*: Var Group fornirà formazione sulle tecnologie e supporto tecnico.

== Punti di debolezza

    - *Complessità*: Il progetto richiede competenze in diverse aree (sviluppo client, API cloud, intelligenza artificiale). Dal Capitolato non emergono idee chiare sull'effettivo sviluppo richiesto.
    - *Elaborazione del linguaggio naturale*: La comprensione e l'implementazione della logica funzionale a partire dal linguaggio naturale potrebbe essere una sfida.
    - *Ambienti di sviluppo*: Il progetto richiede lo sviluppo in ambiente Windows o Apple, entrambi i sistemi operativi però vengono utilizzati da una minoranza del gruppo.

== Conclusioni

Il progetto è un'opportunità interessante per il gruppo di lavorare su un'applicazione innovativa che sfrutta l'intelligenza artificiale generativa per l'automazione di processi. Nonostante le sfide legate alla complessità e all'elaborazione del linguaggio naturale, i punti di forza, come l'innovazione, la flessibilità e il supporto offerto, lo rendono un'esperienza di apprendimento potenzialmente preziosa. Nonostante ciò il gruppo ha ritenuto il Capitolato troppo dispersivo nell'utilizzo delle tecnologie menzionate, facendo ricadere l'attenzione del gruppo su altri capitolati.

#pagebreak()


= *Capitolato C4 - NearYou - Smart custom advertising platform*
#linebreak()
*Proponente:* SyncLab

*Committente:* Prof. Vardanega Tullio, Prof. Cardin Riccardo

*Riferimento:* #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf", "Capitolato 4")

== Descrizione

Il capitolato "Near You - Smart custom advertising platform", mira a sviluppare una piattaforma di advertising personalizzato che utilizza l'intelligenza artificiale, la sincronizzazione in tempo reale e la prossimità geografica per fornire annunci mirati agli utenti.

== Dominio applicativo

Il dominio applicativo è quello della pubblicità digitale, con un focus specifico sulla personalizzazione degli annunci e sul targeting di prossimità. La piattaforma si propone di risolvere il problema della mancanza di personalizzazione efficace e tempestiva negli annunci digitali, offrendo una soluzione che migliora il coinvolgimento degli utenti.

== Tecnologie utilizzate

Il capitolato non impone tecnologie specifiche, ma fornisce alcune linee guida e suggerimenti:

    - Simulazione dati: Framework per la simulazione di dati realistici (es., script in Python, librerie di generazione dati come Faker).
    - Broker di messaggi: Piattaforme di event streaming, message broker o MQTT broker (es., Apache Kafka, RabbitMQ, HiveMQ) per disaccoppiare lo stream di informazioni dai simulatori.
    - Stream processing: Strumenti per l'elaborazione di dati in streaming (es., Apache Airflow, Apache NiFi, Apache Spark, Apache Flink).
    - Elaborazione messaggi con LLM: Strumenti per processare i messaggi in input e fornire risposte tramite LLM (es., LangChain, Flow).
    - Storage: Database o altre tipologie di storage per gestire grandi quantità di dati, dati timeseries e dati geospaziali (es., PostGIS, ClickHouse, Timescale).
    - Visualizzazione dati: Strumenti per la visualizzazione delle informazioni lato utente e lato cliente (es., Superset, Grafana, Tableau per il cliente; web-app o strumenti di visualizzazione per l'utente).

== Punti di forza

    - *Innovazione*: Utilizzo di tecnologie all'avanguardia come l'intelligenza artificiale e i modelli linguistici per la personalizzazione degli annunci.
    - *Rilevanza*: Soluzione a un problema attuale e significativo nel campo della pubblicità digitale.
    - *Flessibilità*: Il capitolato non impone tecnologie specifiche, lasciando spazio alla creatività e alle competenze degli studenti.
    - *Supporto*: L'azienda proponente offre supporto tecnico e funzionale durante lo sviluppo del progetto.
    - *Completezza*: Il capitolato fornisce una descrizione dettagliata del problema, della soluzione proposta e dei criteri di completamento del progetto.

== Punti di debolezza

    - *Complessità*: Il progetto è complesso e richiede competenze in diverse aree tecnologiche.
    - *Definizione obiettivi*: I dettagli degli obiettivi quantitativi minimi verranno concordati in seguito, il che potrebbe creare incertezza iniziale.
    - Il gruppo, nonostante la grande disponibilità dell'azienda proponente emersa nel colloquio e sottolineata nel capitolato, ritiene più stimolante il capitolato C1, per tecnologie utilizzate e modalità di realizzazione.    

== Conclusioni

Il progetto "Near You - Smart custom advertising platform" è un'opportunità interessante per il gruppo di applicare le proprie competenze in un contesto innovativo. Nonostante la complessità del progetto, i punti di forza, come l'innovazione, la rilevanza e il supporto offerto, lo rendono un'esperienza di apprendimento preziosa da tenere in considerazione. 
La scelta di C1, come menzionato, potrebbe essere più interessante per il gruppo, ma questo progetto offre comunque una sfida stimolante e la possibilità di acquisire competenze rilevanti per il futuro professionale.

#pagebreak()


= *Capitolato C6 - Sistema di gestione di un magazzino distribuito*
#linebreak()
*Proponente:* M31 

*Committente:* Prof. Vardanega Tullio, Prof. Cardin Riccardo

*Riferimento:* #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf", "Capitolato 6")

== Descrizione

Il capitolato prevede la gestione centralizzata dell'inventario di più magazzini geograficamente distribuiti. Basato su un'architettura a microservizi, garantisce la sincronizzazione in tempo reale dei dati, il riassortimento predittivo tramite machine learning e la gestione automatizzata dei trasferimenti tra magazzini. Il sistema è scalabile, sicuro e ottimizzato per garantire un flusso efficiente di materiali e prodotti lungo la catena logistica.

== Dominio applicativo

Il dominio applicativo del progetto riguarda la gestione distribuita dell’inventario in una rete logistica composta da più magazzini. Il sistema è pensato per ottimizzare il flusso di materiali e prodotti, migliorando la visibilità centralizzata delle scorte e riducendo i tempi di risposta a variazioni della domanda o criticità operative.

== Tecnologie utilizzate

  - Node.js e Nest.js per la creazione di microservizi modulari e performanti
  - Go per componenti ad alte prestazioni, come servizi di sincronizzazione.
  - NATS o Apache Kafka per la gestione della comunicazione asincrona tra microservizi
  - Google Cloud Platform (GCP) per l’hosting dei servizi e la gestione dell’infrastruttura cloud
  - MongoDB per la gestione di dati non strutturati
  - PostgreSQL per la memorizzazione di dati strutturati
  - Angular per la realizzazione di un'interfaccia web basata su Single Page Applications (SPA)
  - Redis, tramite il caching, per migliorare prestazioni e ridurre latenza.

== Punti di forza

  - *Innovazione*: utilizzo del machine learning per la gestione di un magazzino
  - Architettura a microservizi per una gestione scalabile e resiliente
  - Integrazione di tecnologie cloud per garantire alta disponibilità e prestazioni elevate

== Punti di debolezza

  - *Complessità*: Il progetto richiede competenze in diverse aree per realizzare l'infrastruttura che per le tecnologie necessarie allo sviluppo
  - Numero di requisiti richiesti elevato che potrebbe allungare i tempi di sviluppo

== Conclusioni

Questo capitolato non ha destato particolare interesse all'interno del gruppo, anche se differente dagli altri capitolati, per via della complessità e delle numerose tecnologie richieste per lo sviluppo, molte delle quali non conosciute dai membri del gruppo.