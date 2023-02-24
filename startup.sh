#/bin/sh

echo "Creating and seeding database..."
rails db:setup

echo "Migrating database..."
rails db:migrate

# Run the container
exec "$@"
