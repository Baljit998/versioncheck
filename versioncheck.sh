#!/bin/bash
# Also see 
echo "See https://medium.com/@prasantpant141/update-your-frappe-to-specific-latest-version-  a08689fcd296"

# Function to check versions and display results
check_version() {
    current_version=$($1 --version)
    required_version=$2
    echo "$1 current version is $current_version"
    echo "$1 required version is $required_version"
    echo "********************************************************************"
}

# Check Python version
check_version "python3" "3.11.4"

# Check npm node-sass version
check_version "npm node-sass -v" "v8.18.1"

# Check Node.js version
check_version "node --version" "v20.17.0"
echo "See https://medium.com/@prasantpant141/install-nvm-and-set-a-default-node-js-version-from-the-list-in-linux-os-92305e064fc1"
echo "********************************************************************"

# Check npm version
check_version "npm --version" "9.8.1"

# Check MariaDB version
check_version "mariadb --version" "mariadb Ver 15.1 Distrib 10.6.7-MariaDB"

# Check Yarn version
check_version "yarn --version" "1.22.19"

# Check npm node-sass version again
check_version "npm node-sass -v" "9.8.1"

# Check pip3 version
check_version "pip3 --version" "23.0.2"

# Check pip version
check_version "pip --version" "23.0.2"

# Check Redis server version
check_version "redis-server --version" "7.0.16"

# Check wkhtmltopdf version
check_version "wkhtmltopdf -V" "0.12.6"

# Check Git version
check_version "git version --build-options
" "2.39.1"
