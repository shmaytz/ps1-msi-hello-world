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
        [ValidateScript({
            if(Test-Path -LiteralPath $_){
                throw "Directory name exists" 
            }
            return $true
        })]
        [System.IO.FileInfo] $DirectoryName,
        [String] $Message
    )
    process {
        $input = New-Item -Path "$DirectoryName\HelloWorld.txt" -ItemType File -Force
        $Message | Set-Content -LiteralPath $input
        Write-Output "Directory created successfully!"
    }
}