Descrizione dell'Esperimento

**Obiettivo**:
Dimostrare la scalabilità automatica di un gruppo di VM in Azure in risposta a variazioni di carico.

**Ambiente di Test**:

Set di VM: Utilizzare un set di VM di Azure (ad esempio, VM di tipo B, che sono economiche e adatte per il test).
Bilanciatore di Carico: Configurare un Azure Load Balancer per distribuire il traffico in modo uniforme tra le VM.
Scale Set: Utilizzare Azure Virtual Machine Scale Sets per automatizzare l'aggiunta o la rimozione di VM in base al carico.
Applicazione di Test: Applicazione Flask già introdotta nella prima lezione.
E' stata creata una immagine con Python, l'applicazione e uno script di avvio che lancia flask. 


Applicazione Web Semplice: Distribuire un'applicazione web semplice su ogni VM. L'applicazione potrebbe essere un semplice servizio REST che risponde a richieste HTTP. Utilizziamo la hello-world in Flask utilizzata per la lezione 1
Metriche di Monitoraggio: Configurare Azure Monitor per tracciare le metriche cruciali come CPU, memoria, e traffico di rete.

**Generazione del Carico**:
Tool per il Test di Carico: Utilizzare *Locust* per generare un carico di richieste HTTP verso l'applicazione.
Incremento Graduale del Carico: Iniziare con un carico basso e aumentarlo gradualmente. Osservare come il sistema scala aggiungendo o rimuovendo VM.
Procedure:

1. Configurazione Iniziale: Configurare il set di VM, l'applicazione web, il bilanciatore di carico e il scale set in Azure.
2. Avvio del Test di Carico: Iniziare il test con un carico basso e monitorare le prestazioni.
3. Incremento del Carico: Aumentare gradualmente il carico e osservare come il sistema reagisce.


**Valutazione dei Risultati**:
**Prestazioni**: Analizzare le prestazioni dell'applicazione in termini di tempi di risposta e affidabilità durante diverse fasi del carico.
Questo esperimento dimostrerà l'efficacia della scalabilità automatica in Azure e la capacità del sistema di gestire variazioni di carico mantenendo prestazioni stabili.
**Scalabilità**: Verificare che il sistema e le prestazioni quando si aggiungono VM durante picchi di carico e quando il carico diminuisce.
