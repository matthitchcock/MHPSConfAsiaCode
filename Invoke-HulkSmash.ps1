function Invoke-HulkSmash
{

<#
.Synopsis
   Hit something till it works
.DESCRIPTION
   This function hits something till it works. Should only be used by senior admins as it may destroy the target.
.EXAMPLE
   Invoke-HulkSmash -WhatToSmash "VMWare" -NumberOfSmashes 10
#>

    [CmdletBinding()]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $WhatToSmash,

        # Param2 help description
        [int]
        $NumberOfSmashes
    )

    Begin
    {
    }
    Process
    {
        $x = 1
        do
        {
            Write-Host -ForegroundColor Green "Hulk is currently smashing $WhatToSmash, $x of $NumberOfSmashes"
            Sleep -Seconds 2
            $x ++
        }
        until ($x -gt $NumberOfSmashes)

    }
    End
    {
    }
}