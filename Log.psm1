. "$PSScriptRoot\Classes\Log.ps1"
function Trace-Info([string]$module, [string]$message){[Log]::Info([string]$module, [string]$message)}
function Trace-Warn([string]$module, [string]$message){[Log]::Warn([string]$module, [string]$message)}
function Trace-Error([string]$module, [string]$message){[Log]::Error([string]$module, [string]$message)}
function Trace-Success([string]$module, [string]$message){[Log]::Success([string]$module, [string]$message)}