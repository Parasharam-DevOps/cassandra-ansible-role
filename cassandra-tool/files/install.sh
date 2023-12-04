#!/bin/bash

# Update package list
sudo apt update

# Install OpenJDK 11 JRE
sudo apt install -y openjdk-11-jre


# Add Apache Cassandra repository
echo 'deb [signed-by=/usr/share/keyrings/cassandra-archive-keyring.gpg] https://debian.cassandra.apache.org 41x main' | sudo tee /etc/apt/sources.list.d/cassandra.list > /dev/null

# Create a new trusted.gpg.d directory if it doesn't exist
sudo mkdir -p /etc/apt/trusted.gpg.d/

# Add the Cassandra repository key
curl -L https://downloads.apache.org/cassandra/KEYS | sudo gpg --dearmor -o /usr/share/keyrings/cassandra-archive-keyring.gpg

# Update package list again
sudo apt update

# Install Cassandra
sudo apt install -y cassandra="4.1.3"

# Start Cassandra service
sudo service cassandra start

# Check Cassandra status
nodetool status
