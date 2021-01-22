# Build image
docker build -t pisckitama/nodejs-restapi .

# Push container
docker push pisckitama/nodejs-restapi

# Create container
docker container create --name nodejs-restapi pisckitama/nodejs-restapi

# Start container
docker container start nodejs-restapi

# See container logs
docker container logs nodejs-restapi

# Stop container
docker container stop nodejs-restapi

# Remove container
docker container rm nodejs-restapi