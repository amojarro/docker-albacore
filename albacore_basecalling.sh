#!/bin/bash

# albacore_basecalling.sh
DataFolder="/usr/data"
Sample="$DataFolder/your_sample_name" 

# Place "your_sample_name" folder in "data" folder
# place "raw" folder in "your_sample_name" folder
# Place raw, uncalled fast5 nanopore reads in "raw" folder 

# Make Output Directory
mkdir -p "$Sample/basecalled" # For Basecalled Files  

# Albacore Docker Options
Container="your-image"
DockerPath="/Sample" 
DockerOptions="-it -v $Sample:$DockerPath $Container"

# Run Albacore
Cmd="$DockerOptions read_fast5_basecaller.py -i $DockerPath/raw -s $DockerPath/basecalled -t <# of threads> -c <your-kit>"
docker run $Cmd
