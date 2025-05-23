class Log {
    static [string] $LogDirectory = ".\var\log"

    static [void] Info([string]$module, [string]$message) {
        [Log]::Write("INFO", $module, $message)
    }

    static [void] Warn([string]$module, [string]$message) {
        [Log]::Write("WARNING", $module, $message)
    }

    static [void] Error([string]$module, [string]$message) {
        [Log]::Write("ERROR", $module, $message)
    }

    static [void] Success([string]$module, [string]$message) {
        [Log]::Write("SUCCESS", $module, $message)
    }

    static [void] Write([string]$level, [string]$module, [string]$message) {
        $timestamp = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss");
        $logEntry = ''
        if($level -eq  'INFO'){$logEntry = "[$timestamp] [$level]    [$module] $message";}
        if($level -eq  'ERROR'){$logEntry = "[$timestamp] [$level]   [$module] $message";}
        if($level.Length -eq 7){$logEntry = "[$timestamp] [$level] [$module] $message";}
        # Ensure log directory exists
        if (-not (Test-Path ([Log]::LogDirectory))) {
            New-Item -ItemType Directory -Path ([Log]::LogDirectory) -Force | Out-Null
        }
        # Define daily log file
        $logFile = Join-Path ([Log]::LogDirectory) ("Log_{0}.log" -f (Get-Date).ToString("yyyy-MM-dd"))
        # Output to console
        Write-Host $logEntry
        # Append to file
        Add-Content -Path $logFile -Value $logEntry
    }
}