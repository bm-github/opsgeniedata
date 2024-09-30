# Opsgenie Status Checker

## Project Description

This project provides a shell script to fetch and display the current status and recent incidents from Opsgenie's status page. It utilizes the Opsgenie API to retrieve real-time information about the service's status and recent incidents.

## Installation

To use this script, you need to have the following prerequisites installed on your system:

- Bash shell
- curl
- jq (command-line JSON processor)

No additional installation is required for the script itself. Simply download the `opsgenie_info.sh` file to your local machine.

## Usage

1. Make sure the script is executable:
   ```
   chmod +x opsgenie_info.sh
   ```

2. Run the script:
   ```
   ./opsgenie_info.sh
   ```

The script will output the current status of Opsgenie and information about the last 3 incidents, including their names, creation dates, and statuses.

## Contributing

Contributions to this project are welcome. Please follow these steps to contribute:

1. Fork the repository
2. Create a new branch for your feature or bug fix
3. Make your changes and commit them with descriptive commit messages
4. Push your changes to your fork
5. Submit a pull request to the main repository

Please ensure that your code follows the existing style and that you have tested your changes before submitting a pull request.

## Script Details

### opsgenie_info.sh

This Bash script performs the following actions:

1. Defines a function `get_api_data` to fetch data from the Opsgenie API using curl.
2. Retrieves the current status of Opsgenie.
3. Fetches information about the last 3 incidents.
4. Outputs the results to the command line, including:
   - Current status description
   - For each of the last 3 incidents:
     - Issue name
     - Creation date
     - Status

The script uses `jq` to parse the JSON responses from the API and extract the relevant information.