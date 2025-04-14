#!/bin/bash

# By: John O'Raw
# Date: 24MAR25
# Function: Set up default directories
# Copy this file to /etc/profile.d/
# Script: directories.sh

# If the username is a FQDN, only return the user part
FOLDER=$( echo "$USER" | cut -d @ -f 1)
echo "User foldername is $FOLDER "

DIR="/HPC/$FOLDER"

if [[ ! -e $DIR ]]; then
    mkdir $DIR
    echo "Created $DIR"
    echo "Use this for all course work"
    chmod 770 $DIR
elif [[ -e $DIR ]]; then
    echo "$DIR exists"
    echo "Use this for all course work"
elif [[ ! -d $DIR ]]; then
    echo "$DIR already exists but is not a directory"
fi

DIR="/Scratch/$FOLDER"

if [[ ! -e $DIR ]]; then
    mkdir $DIR
    echo "Created $DIR"
    echo "Use this for temporary files"
    chmod 770 $DIR
elif [[ -e $DIR ]]; then
    echo "$DIR exists"
    echo "Use this for temporary files"
elif [[ ! -d $DIR ]]; then
    echo "$DIR already exists but is not a directory"
fi

DIR="/NFS/$FOLDER"

if [[ ! -e $DIR ]]; then
    mkdir $DIR
    echo "Created $DIR"
    echo "Use this for SLURM workloads"
    chmod 770 $DIR
elif [[ -e $DIR ]]; then
    echo "$DIR exists"
    echo "Use this for SLURM workloads "
elif [[ ! -d $DIR ]]; then
    echo "$DIR already exists but is not a directory"
fi
