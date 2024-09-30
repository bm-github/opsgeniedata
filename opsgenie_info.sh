#!/bin/bash

# Function to get data from the Opsgenie API
get_api_data() {
    local endpoint=$1
    local base_url="https://status.opsgenie.com/api/v2"
    curl -sL "${base_url}/${endpoint}.json"
}

# Get current status
current_status=$(get_api_data "status" | jq -r '.status.description')

# Get last 3 incidents
incidents=$(get_api_data "incidents" | jq -r '.incidents[] | "\(.name)|\(.created_at)|\(.status)" | select(.!=null)' | head -n 3)

# Output results to CLI
echo "Current status: $current_status"
echo ""
echo "Last 3 incidents:"
echo ""
echo "$incidents" | while IFS='|' read -r name created_at status; do
    echo "Issue: $name"
    echo "Created: $created_at"
    echo "Status: $status"
    echo "---"
done