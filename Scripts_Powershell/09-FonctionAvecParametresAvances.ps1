Clear-Host

<#
Paramètres avancés :

[Alias('NAME1', 'NAME2')] --> permet d’ajouter un alias non pas sur la cmdlet mais sur le nom du paramètre
[ValidateCount(MIN,MAX)]  --> permet de n’accepter que des listes dont la taille est comprise entre MIN et MAX
[ValidateLength(MIN,MAX)] --> permet de n’accepter qu’une chaîne de caractère dont la longueur est comprise entre MIN et MAX
[ValidateRange(MIN, MAX)] --> permet de n’accepter qu’un entier situer entre MIN et MAX
[ValidateSet('VALUE1', 'VALUE2')] --> permet de n’accepter que si la valeur du paramètre est comprise dans le tableau @('VALUE1', 'VALUE2')
[ValidateNotNull()]        --> permet de ne pas accepter une valeur fourni si elle est égal à $null
[ValidateNotNullOrEmpty()] --> permet de ne pas accepter les paramètres dont la valeur est $null ou si la chaîne de caractère est vide
[AllowNull()] permet d’accepter un paramètre dont la valeur est $null
[AllowEmptyString()] permet d’accepter une chaîne de caractère vide
#>

function AfficherMessage
{
    [CmdletBinding()]
    
    param (
        [Parameter(Mandatory=$True)]
        [ValidateLength(5,10)]
        [String]$Nom,
        
        [Parameter(Mandatory=$True)]
        [ValidateSet('10', '15','20','25','30')]
        [Int]$Age
    )
    
    # Affichage d'un message avec 2 PARAMETRES
    Write-Host "Hello $Nom tu as bien $Age ans ?"

}

# Appel de la fonction avec 2 ARGUMENTS
AfficherMessage -Nom "Alexandre" -Age "20"