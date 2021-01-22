# Build image
docker build -t pisckitama/nodejs-web .

# Push container
docker push pisckitama/nodejs-web

# Create container
docker container create --name nodejs-web pisckitama/nodejs-web

# Start container
docker container start nodejs-web

# See container logs
docker container logs nodejs-web

# Stop container
docker container stop nodejs-web

# Remove container
docker container rm nodejs-web