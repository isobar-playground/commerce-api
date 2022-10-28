# Start the docker environment.
make start

# Install composer dependencies.
make composer install

# Update local environment configuration
make drush deploy

# Get a one-time login URL
make drush uli
