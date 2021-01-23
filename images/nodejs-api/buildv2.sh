# Build image
docker build -t pisckitama/nodejs-restapi:1.2 .

# Push container
docker push pisckitama/nodejs-restapi:1.2

# Create container
docker container create --name nodejs-restapiv12 pisckitama/nodejs-restapi:1.2

# Start container
docker container start nodejs-restapiv12

# See container logs
docker container logs nodejs-restapiv12

# Stop container
docker container stop nodejs-restapiv12

# Remove container
docker container rm nodejs-restapiv12