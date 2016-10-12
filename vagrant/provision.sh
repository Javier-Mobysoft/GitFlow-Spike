#!/usr/bin/env bash

set -e

function install_devtools() {
    echo "Installing Java 8 and Maven. This will take a while..."
    sudo apt-get install -y software-properties-common &> /dev/null
    sudo add-apt-repository -y ppa:webupd8team/java &> /dev/null

    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
    sudo apt-get update &> /dev/null
    sudo apt-get install -y oracle-java8-installer maven &> /dev/null
    sudo apt-get install -y oracle-java8-set-default &> /dev/null
}

########## PROGRAM STARTS HERE ##############

function main() {
    install_devtools
    touch ~/.devtools_provisioned
}

test -f ~/.devtools_provisioned || main