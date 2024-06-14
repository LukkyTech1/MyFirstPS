# MijnQuiz.ps1

# Functie om vragen te stellen en antwoorden te controleren.
function Stel-Vraag {
    param (
        [string]$vraag,
        [string]$juistAntwoord
    )

    Write-Host $vraag
    $antwoord = Read-Host "Je antwoord"

    if ($antwoord -eq $juistAntwoord) {
        Write-Host "Correct! Goed gedaan."
        return $true
    } else {
        Write-Host "Helaas, dat is niet correct. Het juiste antwoord is: $juistAntwoord"
        return $false
    }
}

# Begin van de quiz
Write-Host "Welkom bij de quiz! Laten we beginnen."

# Vragenlijst
$vragen = @(
    @{ vraag = "Wat is de hoofdstad van Nederland?"; juistAntwoord = "Amsterdam" },
    @{ vraag = "Hoeveel provincies heeft Nederland?"; juistAntwoord = "12" },
    @{ vraag = "Welke kleur heeft de Nederlandse vlag?"; juistAntwoord = "Rood, wit, blauw" },
    @{ vraag = "Wie is de huidige koning van Nederland?"; juistAntwoord = "Willem-Alexander" }
)

# Score bijhouden
$score = 0

# Vragen stellen
foreach ($vraag in $vragen) {
    $correct = Stel-Vraag -vraag $vraag.vraag -juistAntwoord $vraag.juistAntwoord
    if ($correct) {
        $score++
    }
}

# Eindresultaat
Write-Host "`nDe quiz is afgelopen! Je score is: $score van de $($vragen.Count)"

# Einde van de quiz
Write-Host "Bedankt voor het spelen van de quiz!"
