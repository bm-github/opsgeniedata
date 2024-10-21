# Opsgenie Status Checker

## Project Description

This project provides a shell script to check the current status of Opsgenie and retrieve information about recent incidents. It uses the Opsgenie Status Page API to fetch real-time data and presents it in a user-friendly format on the command line.

## Installation

To use this script, you need to have the following dependencies installed:

- Bash
- curl
- jq

Make sure these are installed on your system before proceeding.

## Usage

1. Clone this repository to your local machine:

```
git clone https://github.com/your-username/opsgenie-status-checker.git
cd opsgenie-status-checker
```

2. Make the script executable:

```
chmod +x opsgenie_info.sh
```

3. Run the script:

```
./opsgenie_info.sh
```

The script will output the current status of Opsgenie and information about the last 3 incidents, including their names, creation times, and current statuses.

## Contributing

Contributions to this project are welcome. Please follow these steps to contribute:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature-name`)
3. Make your changes
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin feature/your-feature-name`)
6. Create a new Pull Request

## Shell Script Details

### opsgenie_info.sh

This script performs the following actions:

1. Defines a function `get_api_data()` to fetch data from the Opsgenie Status Page API.
2. Retrieves the current status of Opsgenie.
3. Fetches information about the last 3 incidents.
4. Outputs the results to the command line in a readable format.

The script uses `curl` to make API requests and `jq` to parse the JSON responses. It provides a quick and easy way to check Opsgenie's status and recent incidents without needing to visit the status page website.