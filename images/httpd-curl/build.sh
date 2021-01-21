# Build image
docker build -t pisckitama/httpd-curl .

# Push image
docker push pisckitama/httpd-curl

# Create container
docker container create --name httpd-curl pisckitama/httpd-curl

# Start container
docker container start httpd-curl

# See container logs
docker container logs httpd-curl

# Stop container
docker container stop httpd-curl

# Remove container
docker container rm httpd-curl