# Download database dump from S3.
make database

# Download images and start the docker environment.
make up

# Install composer dependencies.
make composer install

# Update local environment configuration
make drush deploy
