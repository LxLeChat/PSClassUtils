function Get-CULoadedEnum {
    <#
    .SYNOPSIS
        Return all loaded classes in the current PSSession
    .DESCRIPTION
        Return all loaded classes in the current PSSession
    .EXAMPLE
        PS C:\> <example usage>
        Explanation of what the example does
    .INPUTS
        String
    .OUTPUTS
        ASTDocument
    .NOTES
        General notes
    #>
    [CmdletBinding()]
    param (
        [String[]]$Enum = '*'
    )
    
    BEGIN {
    }
    
    PROCESS {
        
        Foreach ( $Name in $Enum ) {
            
            [Array]$LoadedEnums = [AppDomain]::CurrentDomain.GetAssemblies() |
                Where-Object { $_.GetCustomAttributes($false) |
                Where-Object { $_ -is [System.Management.Automation.DynamicClassImplementationAssemblyAttribute]} } |
                ForEach-Object { 
                    $_.GetTypes() |
                    Where-Object IsPublic | Where-Object { $_.Name -like $Name -and $_.baseType.Name -eq 'Enum' } |
                    Select-Object name,@{l = 'Path'; e = {($_.Module.ScopeName.Replace([char]0x29F9, '\').replace([char]0x589, ':')) -replace '^\\', ''}}
            }

            Foreach ( $Enum in ($LoadedEnums | Select-Object -Property Path -Unique) ) {
                #Get-CURaw -Path $Class.Path
                Get-CUAst -Path $Enum.Path
            }

        }
    }
    
    END {
    }
}