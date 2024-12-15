$(
# Define the module folder path
# Get script directory using PSScriptRoot or fallback to MyInvocation
$scriptDirectory = if ($PSScriptRoot) {
    $PSScriptRoot
} else {
    Split-Path -Path $MyInvocation.MyCommand.Path -Parent
}
Write-Host "Script Directory: $scriptDirectory"

# Combine it with a relative path
$modulePath = Join-Path -Path $scriptDirectory -ChildPath "Modules\MyScriptModule"
Write-Host "Module Path: $modulePath"

# Import the module manifest file
Import-Module "$modulePath\MyScript.psd1" -Force -ErrorAction Ignore

# Verify the module is imported
Write-Host "Module imported successfully!"

# Call the function from the module
MyScript -DirectoryName "C:\TestDir" -Message Hello 
) *> execution.log



