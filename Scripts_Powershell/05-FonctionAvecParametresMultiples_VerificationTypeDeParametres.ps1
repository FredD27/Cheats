Clear-Host

function AfficherMessage
{
    param ($Nom,$Age)
    
    # Affichage d'un message avec 2 PARAMETRES
    Write-Host "Hello $Nom tu as bien $Age ans ?"

   # Créer un objet personnalisé pour retourner les valeurs
    $GetType = New-Object PSObject -Property @{
        Nom = $Nom.GetType()
        Age = $Age.GetType()
    }

    return $GetType
}

# Appel de la fonction avec 2 ARGUMENTS et affichage du type
AfficherMessage -Nom "Dom" -Age "20"