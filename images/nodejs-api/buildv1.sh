# Build image
docker build -t pisckitama/nodejs-restapi:1.1 .

# Push container
docker push pisckitama/nodejs-restapi:1.1

# Create container
docker container create --name nodejs-restapi:1.1 pisckitama/nodejs-restapi:1.1

# Start container
docker container start nodejs-restapi:1.1

# See container logs
docker container logs nodejs-restapi:1.1

# Stop container
docker container stop nodejs-restapi:1.1

# Remove container
docker container rm nodejs-restapi:1.1