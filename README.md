# MyFirstPS
Een script dat een reeks vragen stelt en reageert op de gegeven antwoorden.

Uitleg van het script:
Functie Stel-Vraag:

Deze functie neemt een vraag en het juiste antwoord als parameters.
De vraag wordt weergegeven met Write-Host.
Het script wacht op de gebruiker om een antwoord in te voeren met Read-Host.
Als het antwoord correct is, geeft het script een bevestiging en retourneert true.
Als het antwoord incorrect is, geeft het script het juiste antwoord en retourneert false.
Vragenlijst:

Een array van hashtables bevat de vragen en de juiste antwoorden.
Score bijhouden:

De variabele $score wordt gebruikt om de correcte antwoorden bij te houden.
Vragen stellen:

Een foreach-lus doorloopt de vragenlijst en roept de Stel-Vraag-functie aan voor elke vraag.
Als het antwoord correct is, wordt de score verhoogd.
Eindresultaat:

De totale score wordt weergegeven.
Een bedankbericht wordt weergegeven aan het einde van de quiz.
