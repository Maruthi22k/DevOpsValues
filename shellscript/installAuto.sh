#!/bin/bash

Number=$(id -u)
if [ $Number -ne 0 ]; then
    echo "Please run proper way ity failure"
    exit 1

else
    echo "Please install Sucess"