# Build image
docker build -t pisckitama/nodejs-writer .

# Push image
docker push pisckitama/nodejs-writer

# Create container
docker container create --name nodejs-writer pisckitama/nodejs-writer

# Start container
docker container start nodejs-writer

# See container logs
docker container logs nodejs-writer

# Stop container
docker container stop nodejs-writer

# Remove container
docker container rm nodejs-writer