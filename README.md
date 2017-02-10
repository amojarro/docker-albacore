# Docker-Albacore for ONT
Docker automated build for Oxford Nanopore Albacore offline basecalling software

## Getting Started

1. Download & install Docker - https://www.docker.com/
2. Start Docker
3. Save Dockerfile to your directory
4. Edit Dockerfile with up-to-date Albacore software and links
5. ```$ cd to/your/directory```
6. ```$ docker build -t <name-your-image> .```

## Usage

1. Start Docker
2. Arrange your your raw, uncalled fast5 nanopore read data as follows:
    ```~/usr/data/your_sample_name/raw``` 
    
3. Edit the albacore_basecaller.sh to mirror your directory
    ```DataFolder="~/data/"
       Sample="$DataFolder/your_sample_name"
	``` 
    
4. Insert your Docker image 
	```Container="your-image"```
    
5. Edit the number of threads and kit </br>
	```Cmd="$DockerOptions read_fast5_basecaller.py -i $DockerPath/raw -s $DockerPath/basecalled -t <# of threads> -c <you-kit>"
	```
    
6. Run the scripts 
	```./albacore_basecaller.sh
	```
    
7. Analyse basecalled data!
