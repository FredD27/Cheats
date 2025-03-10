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

$LogFile = "C:\Temp\ErrorsLog.txt"

Try
{
    AfficherMessage -Nom "Alexandre" -Age 17
}
Catch
{
    # Log
    $GetDate = Get-Date -Format "yyyyMMdd-HHmmss"
    $UserName = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $ErrorMessage = $_.Exception.Message
    $ErrorCode = $_.Exception.HResult
    $ErrorCodeHex = "{0:X}" -f [int]$ErrorCode
    $LogMessage = "$GetDate;$UserName;$errorCode (0x$ErrorCodeHex);$errorMessage"
    Add-Content -Path $LogFile -Value $LogMessage
}
