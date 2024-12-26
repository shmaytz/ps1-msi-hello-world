@{
    # General module metadata
    ModuleVersion     = '1.0.0'
    GUID              = 'fd3cc214-c8ef-4a49-b6a8-5f2a6d3737a8'
    Author            = 'Ido Nadler'
    Description       = 'A module providing system information utilities.'
    CompanyName       = 'Your Company'
    Copyright         = '(c) 2024 Ido Nadler'

    # Module requirements and dependencies
    PowerShellVersion = '5.1'

    # Files to include in the module
    RootModule        = 'MyScript.psm1'
    FunctionsToExport = @('MyScript')
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @()

    # Private data
    <#PrivateData       = @{
        PSData = @{
            Tags = @('SystemInfo', 'Utilities')
        }
    }#>
}
