# Recreate the docker environment.
make up

# Install composer dependencies.
make composer install

# Update local environment configuration
make drush deploy

# Get a one-time login URL
make drush uli
