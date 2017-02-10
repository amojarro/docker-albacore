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
RUN wget <https://link-to-albacore-version.deb>

# Install Albacore
RUN dpkg -i <albacore-version.deb>

# Repair python3 after Albacore Installation 
# Uncheck below if you receive ImportError: No module named 'pkg_resources'
# RUN apt-get install --reinstall python3-pkg-resources
