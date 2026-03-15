#Requires -RunAsAdministrator

Write-Host "Optimizing Wi-Fi connection for better performance..." -ForegroundColor Yellow

# Clear DNS Cache
Write-Host "Flushing DNS cache..."
try {
    Clear-DnsClientCache -ErrorAction Stop
} catch {
    Write-Warning "Clear-DnsClientCache failed, falling back to ipconfig /flushdns..."
    ipconfig /flushdns
}

# Release and Renew IP Configuration
Write-Host "Releasing and renewing IP configuration..."
try {
    ipconfig /release | Out-Null
    ipconfig /renew | Out-Null
} catch {
    Write-Error "Failed to release/renew IP configuration: $_"
}

# Reset TCP/IP Stack
Write-Host "Resetting TCP/IP stack..."
try {
    netsh int ip reset | Out-Null
} catch {
    Write-Error "Failed to reset TCP/IP stack: $_"
}

# Reset Winsock
Write-Host "Resetting Winsock..."
try {
    netsh winsock reset | Out-Null
} catch {
    Write-Error "Failed to reset Winsock: $_"
}

# Initialize Wi-Fi Adapters list safely outside of try/catch blocks
try {
    $adapters = @(Get-NetAdapter | Where-Object {$_.Status -eq "Up" -and $_.Name -like "*Wi-Fi*"})
} catch {
    $adapters = @()
    Write-Error "Failed to enumerate Wi-Fi adapters: $_"
}

# Optimize Wi-Fi Adapter Settings
Write-Host "Optimizing Wi-Fi adapter settings..."
try {
    if ($adapters.Count -gt 0) {
        foreach ($adapter in $adapters) {
            Write-Host "Disabling power-saving mode for Wi-Fi adapter '$($adapter.Name)'..."
            Set-NetAdapterPowerManagement -Name $adapter.Name -AllowComputerToTurnOffPower $false -AllowWakeArmed $true -ErrorAction Stop
        }
    } else {
        Write-Warning "No active Wi-Fi adapter found. Skipping adapter-specific optimizations."
    }
} catch {
    Write-Error "Failed to optimize Wi-Fi adapter settings: $_"
}

# Set High Throughput for Wi-Fi
Write-Host "Ensuring Wi-Fi is set to high throughput..."
try {
    if ($adapters.Count -gt 0) {
        foreach ($adapter in $adapters) {
            Write-Host "Configuring autoconfig for '$($adapter.Name)'..."
            netsh wlan set autoconfig enabled=yes interface="$($adapter.Name)" | Out-Null
        }
    } else {
        Write-Warning "No active Wi-Fi adapter found. Skipping high throughput configuration."
    }
} catch {
    Write-Error "Failed to configure high throughput for Wi-Fi: $_"
}

# Prioritize Active Connection
Write-Host "Prioritizing active Wi-Fi connection..."
try {
    $activeConnections = @(Get-NetIPConfiguration | Where-Object { $_.IPv4DefaultGateway -ne $null })
    if ($activeConnections.Count -gt 0) {
        foreach ($conn in $activeConnections) {
            Set-NetIPInterface -InterfaceIndex $conn.InterfaceIndex -Dhcp Enabled -AutomaticMetric $true -ErrorAction Stop
        }
        Write-Host "Connection prioritized successfully."
    } else {
        Write-Warning "No active internet connection found. Skipping prioritization."
    }
} catch {
    Write-Error "Failed to prioritize active connection: $_"
}

# Restart Networking Services
Write-Host "Restarting network services..."
try {
    Restart-Service -Name "Dhcp" -Force -ErrorAction Stop
    Restart-Service -Name "dnscache" -Force -ErrorAction Stop
    Restart-Service -Name "nlasvc" -Force -ErrorAction Stop
} catch {
    Write-Error "Failed to restart networking services: $_"
}

Write-Host "Wi-Fi optimization complete! Please restart your system for full effect." -ForegroundColor Green
