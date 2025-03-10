Clear-Host

<#
Type de variable commun :

[String] Chaîne de caractères
[Int]    Nombre entier de 32 bits (2^31-1 soit 2147483647)
[Array]  Tableau

Autres :

[Long]      Nombre entier de 64 bits (2^63-1 soit 9223372036854775807)
[Hashtable] Table de hash
[Single]    Nombre décimal de 32 bits
#>

function AfficherMessage
{
    param ([String]$Nom,[Int]$Age)
    
    # Affichage d'un message avec 2 PARAMETRES
    Write-Host "Hello $Nom tu as bien $Age ans ?"

   # Créer un objet personnalisé pour retourner les valeurs
    $GetType = New-Object PSObject -Property @{
        Nom = $Nom.GetType()
        Age = $Age.GetType()
    }

    return $GetType
}

# Comment utiliser cette fonction ?
Get-Command -Name AfficherMessage -Syntax

# Appel de la fonction avec 2 ARGUMENTS et affichage du type
AfficherMessage -Nom "Dom" -Age "20"