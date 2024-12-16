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
            if(Test-Path $_){
                throw "Directory name exists" 
            }
            return $true
        })]
        [String] $DirectoryName,
        [String] $Message
    )
    process {
        $input = New-Item -Path "$DirectoryName\HelloWorld.txt" -ItemType File -Force
        $Message | Out-File -FilePath $input
        Write-Output "Directory created successfully!"
    }
}