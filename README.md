# Expunge-in-a-box

The docker configuration parts of a containerized version of mhollander's Expungement Generator.

The database initializes with a sigle admin user, admin@example.fake, password admin. __Change this before using your site for anything.__.

## Run to test

Set up one container running the EG frontend and another container with a brand new mysql database.

Run with `docker-compose -f eg-compose.yml up --build`.

## Run with another database

Edit the `docker-compose` file to have the credentials for connecting with the database that already exists.

You need to use `network_mode: "host"` to connect to the host machine.
