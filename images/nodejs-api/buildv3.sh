# Build image
docker build -t pisckitama/nodejs-restapi:1.3 .

# Push container
docker push pisckitama/nodejs-restapi:1.3

# Create container
docker container create --name nodejs-restapiv13 pisckitama/nodejs-restapi:1.3

# Start container
docker container start nodejs-restapiv13

# See container logs
docker container logs nodejs-restapiv13

# Stop container
docker container stop nodejs-restapiv13

# Remove container
docker container rm nodejs-restapiv13