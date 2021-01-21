# Build image
docker build -t pisckitama/cronjob-nodejs .

# Push container
docker push pisckitama/cronjob-nodejs

# Create container
docker container create --name cronjob-nodejs pisckitama/cronjob-nodejs

# Start container
docker container start cronjob-nodejs

# See container logs
docker container logs -f cronjob-nodejs

# Stop container
docker container stop cronjob-nodejs

# Remove container
docker container rm cronjob-nodejs