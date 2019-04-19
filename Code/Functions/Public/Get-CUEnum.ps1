Function Get-CUEnum{
    <#
    .SYNOPSIS
        This function returns enums existing in a document.
    .DESCRIPTION
        Returns a custom type [ClassEnum]
    .EXAMPLE
        Get-CuEnum -Path C:\plop\enum.ps1

        Returns:

        Name Member
        ---- ------
        woop {Absent, Present}

    .INPUTS
        String
    .OUTPUTS
        Classenum
    .NOTES   
        Author: Stéphane van Gulick
        Version: 0.2.0
        
    .LINK
        https://github.com/Stephanevg/PowerShellClassUtils
    #>
    [cmdletBinding()]
    Param(
 
        [Parameter(Mandatory=$false,ValueFromPipeline=$true)]
        [System.IO.FileInfo[]]$Path
    )

   begin{

   }

   Process{
        If ( $null -ne $PSBoundParameters['Path']) {
            foreach($p in $Path){

                $AST = Get-cuast -Path $p | ? {$_.IsEnum -eq $True}
         
                foreach($enum in $AST){
                    [ClassEnum]::New($enum.Name,$enum.members.Name)
                }
            }
        } Else {
            Foreach ( $Enum in (Get-CULoadedEnum ) ) {
                If($Enum.IsEnum){
                    [ClassEnum]::New($Enum.Name,$Enum.members.Name)
                }
            }
        }
   }
   End{

   }
}