# Step 1:
# Set variables
echo $DOCKERPASSWD | docker login --username anandnk90 --password-stdin

# Step 3:
# Push image to a docker repository
docker push udacitycapstone/app:latest
