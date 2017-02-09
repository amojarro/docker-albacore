# Docker-Albacore for ONT
Docker automated build for Oxford Nanopore Albacore offline basecalling software

## Getting Started

1. Download & install Docker - https://www.docker.com/
2. Start Docker
3. Save Dockerfile to your directory
4. Edit Dockerfile with up-to-date Albacore software and links
4. ```$cd to/your/directory```
5. ```$docker build -t <name-your-image> .```

## Usage

1. Start Docker
2. ```$docker run <your-image> <basecaller.py> <options-see-albacore-documentation-ont>```
3. Analyse basecalled data!
