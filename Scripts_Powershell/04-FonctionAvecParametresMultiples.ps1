Clear-Host

function AfficherMessage
{
    param ($Nom,$Age)
    
    # Affichage d'un message avec 2 PARAMETRES
    Write-Host "Hello $Nom tu as bien $Age ans ?"
}

# Appel de la fonction
AfficherMessage

# Appel de la fonction avec 2 ARGUMENTS
AfficherMessage -Nom "Dom" -Age "10"

# Appel de la fonction avec 2 ARGUMENTS inversion des paramètres
AfficherMessage -Age "50" -Nom "Franck"

# Appel de la fonction avec 2 ARGUMENTS inversion des arguments
AfficherMessage -Nom "10" -Age "Michael"