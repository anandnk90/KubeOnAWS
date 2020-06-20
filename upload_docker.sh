#to run: ./upload_docker.sh <<dockerpath>> <<version number>> <<docker image>>

# Step 1:
# Create dockerpath
#dockerpath=anandnk90/udacitycapstone
dockerpath=${1}
version=${2}

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "Logging in using password file"
cat dockerpasswd.txt | docker login --username anandnk90 --password-stdin
docker tag ${3} $dockerpath:$version

# Step 3:
# Push image to a docker repository
docker push $dockerpath