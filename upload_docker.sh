# Step 1:
# Set variables
dockerpath=anandnk90/udacitycapstone
imageid=docker images -q udacitycapstone/app
version=v1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat $DOCKERPASSWD | docker login --username anandnk90 --password-stdin
docker tag $imageid $dockerpath:$version

# Step 3:
# Push image to a docker repository
docker push $dockerpath