Clear-Host

function AfficherMessage
{
    [CmdletBinding()]
    
    param (
        [Parameter(Mandatory=$True)]
        [String]$Nom,
        
        [Parameter(Mandatory=$True)]
        [Int]$Age = 30
    )
    
    # Affichage d'un message avec 2 PARAMETRES
    Write-Host "Hello $Nom tu as bien $Age ans ?"

}

# Appel de la fonction avec 2 ARGUMENTS
AfficherMessage -Nom "Dom" -Age "20"

# Appel de la fonction sans arguments
AfficherMessage