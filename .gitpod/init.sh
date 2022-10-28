# Install acl and do magic with permissions.
sudo apt install acl -y
sudo setfacl -dR -m u:$(whoami):rwX -m u:1000:rwX .
sudo setfacl -R -m u:$(whoami):rwX -m u:1000:rwX  .

# Download database dump from S3.
make database

# Download images and start the docker environment.
make up

# Install composer dependencies.
make composer install

# Update local environment configuration
make drush deploy

# Stop environment and get ready for workspace to start it.
make stop
