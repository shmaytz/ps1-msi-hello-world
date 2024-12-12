function Get-SystemInfo {
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
    
    .EXAMPLE
    Get-SystemInfo -Detailed
    # Retrieves detailed system information.
    
    .NOTES
    Author: IDO NA
    #>
    [CmdletBinding()]
    param (
        [switch]$Detailed
    )
    process {
        $systemInfo = @{
            OSVersion      = (Get-WmiObject -Class Win32_OperatingSystem).Caption
            Architecture   = (Get-WmiObject -Class Win32_OperatingSystem).OSArchitecture
            TotalMemoryGB  = [math]::Round((Get-WmiObject -Class Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
        }

        if ($Detailed) {
            $systemInfo += @{
                FreeMemoryGB = [math]::Round((Get-WmiObject -Class Win32_OperatingSystem).FreePhysicalMemory / 1MB, 2)
                DiskInfo     = Get-PSDrive -PSProvider FileSystem | Select-Object Name, @{Name="FreeSpaceGB";Expression={[math]::Round($_.Free / 1GB, 2)}}
            }
        }

        $systemInfo
    }
}
