# Step 1:
# Set variables
cat $DOCKERPASSWD | docker login --username anandnk90 --password-stdin

# Step 3:
# Push image to a docker repository
docker push $dockerpath
