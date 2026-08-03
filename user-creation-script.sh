#!/bin/bash

read -p "Enter username: " USER

sudo useradd $USER

echo "User $USER created."
