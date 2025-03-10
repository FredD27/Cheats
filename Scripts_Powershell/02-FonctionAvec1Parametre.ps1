Clear-Host

function AfficherMessage ($Nom)
{
    # Affichage d'un message avec 1 PARAMETRE
    Write-Host "Hello world ! Comment vas-tu $Nom ?"
}

# Appel de la fonction
AfficherMessage

# Appel de la fonction avec 1 ARGUMENT
AfficherMessage -Nom "Tom"