#!/bin/bash

function install_package() {
    PACKAGE_NAME=$1

    echo "Installing $PACKAGE_NAME"
    dnf install $PACKAGE_NAME -y

    if [ $? -ne 0 ]; then
        echo "Installing $PACKAGE_NAME ... FAILURE"
        exit 1
    else
        echo "Installing $PACKAGE_NAME ... SUCCESS"
    fi
}