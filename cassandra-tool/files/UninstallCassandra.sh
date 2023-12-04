#!/bin/bash

# Stop Cassandra service
sudo service cassandra stop

# Uninstall Cassandra
sudo apt purge -y cassandra

# Remove Cassandra repository
sudo rm /etc/apt/sources.list.d/cassandra.list

# Remove Cassandra repository key
sudo rm /usr/share/keyrings/cassandra-archive-keyring.gpg
