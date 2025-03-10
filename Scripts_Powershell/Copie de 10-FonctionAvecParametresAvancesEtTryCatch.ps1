Clear-Host

function AfficherMessage
{
    [CmdletBinding()]

    param (
        [Parameter(Mandatory=$True)]
        [ValidateLength(5,10)]
        [String]$Nom,
        
        [Parameter(Mandatory=$True)]
        [ValidateSet('10', '15', '20', '25', '30')]
        [Int]$Age
    )
    
    Write-Host "Hello $Nom tu as bien $Age ans ?"
}

Try
{
    # Appel de la fonction avec 2 ARGUMENTS
    AfficherMessage -Nom "Alexandre" -Age 17
}
Catch
{
    # Traitement de l'erreur
    $ErrorMessage = $_.Exception.Message
    $ErrorCode =  $_.Exception.HResult
    Write-Host "Erreur !!" -ForegroundColor Red
    Write-Host "Code erreur : $ErrorCode`n$ErrorMessage"
}
