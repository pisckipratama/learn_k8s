# Build image
docker build -t pisckitama/nodejs-env .

# Push container
docker push pisckitama/nodejs-env

# Create container
docker container create --name nodejs-env pisckitama/nodejs-env

# Start container
docker container start nodejs-env

# See container logs
docker container logs nodejs-env

# Stop container
docker container stop nodejs-env

# Remove container
docker container rm nodejs-env