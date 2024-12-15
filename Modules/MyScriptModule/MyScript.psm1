function MyScript {
    <#
    .SYNOPSIS
    Retrieves system information.
    
    .DESCRIPTION
    This function provides detailed information about the system, including OS version, architecture, and memory.
    
    .PARAMETER Detailed
    If specified, provides detailed memory and disk information.
    
    .EXAMPLE
    Get-SystemInfo
    # Retrieves basic system information.
    #>
    [CmdletBinding()]
    param (
        [String] $DirectoryName,$Message
    )
    process {
        $input = New-Item -Path "$DirectoryName\HelloWorld.txt" -ItemType File -Force
        $Message | Out-File -FilePath $input
    }
}
