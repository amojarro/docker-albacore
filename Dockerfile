# Docker automated build for Oxford Nanopore Albacore offline basecalling software

# Ubuntu 14.04 Base Image
FROM ubuntu:14.04

# Update Base Image
RUN apt-get update

# Install Albacore Dependencies
RUN apt-get install -y python3 \
libboost-all-dev \
python3-h5py \
python3-numpy \
wget 

# Download Albacore
RUN wget <link-to-albacore.deb>

# Install Albacore
RUN dpkg -i <albacore.deb>