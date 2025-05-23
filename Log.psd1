@{
    RootModule        = 'Log.psm1'
    ModuleVersion     = '1.0.0'
    GUID              = 'a1111a11-1111-1111-1111-111111111111'
    Author            = 'GVBYTE'
    Description       = 'GVBYTE custom Log classes and functions'
    PowerShellVersion = '5.1'
    FunctionsToExport = @(
        'Write-LogInfo',
        'Write-LogWarn',
        'Write-LogError',
        'Write-LogSuccess'
    )
}