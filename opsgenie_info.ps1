# Function to get data from the Opsgenie API
function Get-ApiData {
    param (
        [string]$endpoint
    )
    $baseUrl = "https://status.opsgenie.com/api/v2"
    $url = "${baseUrl}/${endpoint}.json"
    $response = Invoke-RestMethod -Uri $url -Method Get
    return $response
}

# Get current status
$currentStatus = (Get-ApiData -endpoint "status").status.description

# Get last 3 incidents
$incidents = (Get-ApiData -endpoint "incidents").incidents | 
    Select-Object -First 3 | 
    ForEach-Object {
        [PSCustomObject]@{
            Name = $_.name
            CreatedAt = $_.created_at
            Status = $_.status
        }
    }

# Output results to CLI
Write-Host "Current status: $currentStatus"
Write-Host ""
Write-Host "Last 3 incidents:"
Write-Host ""

foreach ($incident in $incidents) {
    Write-Host "Issue: $($incident.Name)"
    Write-Host "Created: $($incident.CreatedAt)"
    Write-Host "Status: $($incident.Status)"
    Write-Host "---"
}