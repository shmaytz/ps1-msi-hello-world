function MyScript {
    <#
    .SYNOPSIS
    Creates a directory and a text file inside.
    
    .DESCRIPTION
    This function creates a directory and a text file inside.
    
    .PARAMETER Detailed
    
    
    .EXAMPLE
    MyScript
    # Creates a directory and a text file inside.
    #>
    [CmdletBinding()]
    param (
        [String] $DirectoryName,
        [String] $Message
    )
    try {
        [void](New-Item -Path "$DirectoryName" -ItemType Directory -ErrorAction Stop)
    } catch {
        $output = "$("[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)) [Error] " + $_.Exception.Message
        Write-Output $output
        Write-Output "$("[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)) [info] Script finished."
        Exit 1
    }
    [void](New-Item -Path "$DirectoryName\HelloWorld.txt" -ItemType File)
    $Message | Set-Content -LiteralPath "$DirectoryName\HelloWorld.txt"
    Write-Output "$("[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)) [info] Directory created successfully!"
    Write-Output "$("[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)) [info] Script finished."
}