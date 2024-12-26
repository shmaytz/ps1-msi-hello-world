#TEST
# Define the module folder path
# Get script directory using PSScriptRoot or fallback to MyInvocation 
Param($Dir, $Msg)
$(
Write-Output "$("[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)) [info] Script started."
$scriptDirectory = if ($PSScriptRoot) {
    $PSScriptRoot
} else {
    Split-Path -Path $MyInvocation.MyCommand.Path -Parent
}
Write-Output "$("[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)) [info] Script Directory: $scriptDirectory"

# Combine it with a relative path
$modulePath = Join-Path -Path $scriptDirectory -ChildPath "Modules\MyScriptModule"
Write-Output "$("[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)) [info] Module Path: $modulePath"

# Import the module manifest file
Import-Module "$modulePath\MyScript.psd1" -Force -ErrorAction Ignore

# Verify the module is imported
Write-Output "$("[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)) [info] Module imported successfully!"

# Call the function from the module
MyScript -DirectoryName $Dir -Message $Msg ) *> C:\Windows\Temp\execution.log