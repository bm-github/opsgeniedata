# Opsgenie Status Checker

## Project Description

This project provides scripts to check the current status of Opsgenie and retrieve information about recent incidents. It includes both PowerShell and Bash scripts, allowing users to choose their preferred environment for running the status checks.

The scripts interact with the Opsgenie Status API to fetch the current system status and details of the last three incidents. This information is then displayed in a user-friendly format on the command line.

## Installation

To use these scripts, you need to have either PowerShell or Bash installed on your system, depending on which script you want to use.

### PowerShell Script

No additional installation is required for the PowerShell script.

### Bash Script

The Bash script requires `jq` for JSON parsing. Install it using your system's package manager:

- On Ubuntu/Debian:
  ```
  sudo apt-get install jq
  ```
- On macOS (using Homebrew):
  ```
  brew install jq
  ```

## Usage

### PowerShell Script (opsgenie_info.ps1)

1. Open PowerShell
2. Navigate to the directory containing the script
3. Run the script:
   ```
   .\opsgenie_info.ps1
   ```

### Bash Script (opsgenie_info.sh)

1. Open a terminal
2. Navigate to the directory containing the script
3. Make the script executable:
   ```
   chmod +x opsgenie_info.sh
   ```
4. Run the script:
   ```
   ./opsgenie_info.sh
   ```

Both scripts will output the current Opsgenie status and information about the last three incidents.

## Contributing

Contributions to improve the scripts or add new features are welcome. Please follow these steps to contribute:

1. Fork the repository
2. Create a new branch for your feature
3. Make your changes
4. Submit a pull request with a clear description of your changes

Please ensure that your code follows the existing style and includes appropriate comments.