. "$PSScriptRoot\Log.ps1"
function Write-LogInfo([string]$module, [string]$message){[Log]::Info([string]$module, [string]$message)}
function Write-LogWarn([string]$module, [string]$message){[Log]::Warn([string]$module, [string]$message)}
function Write-LogError([string]$module, [string]$message){[Log]::Error([string]$module, [string]$message)}
function Write-LogSuccess([string]$module, [string]$message){[Log]::Success([string]$module, [string]$message)}