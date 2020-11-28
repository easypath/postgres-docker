# postgres-docker
[PostgreSQL](https://www.postgresql.org/) running on Docker.

> :warning: *For development use only*

## Usage:
- Copy the sample config file:
  ```
  cp .env.sample .env
  ```

- Edit the config file and set the following values:
  ```
  POSTGRES_USER=db_user
  POSTGRES_PASSWORD=db_password
  POSTGRES_DB=db_name
  ```

- Launch the container:
  ```
  ./start-container.sh
  ```

- Verify the database is up by connecting to it using an external client, i.e. [Postico](https://eggerapps.at/postico/)

- To stop the container and delete the associated volume:
  ```
  docker-compose down --volumes
  ```
  ***Note: this will delete the database***


## Miscellaneous
- This docker-compose file creates a private Docker network locally called `db-network-private` - you can connect other containers directly to this network and the database will be available using the following connection string:
  ```
  postgresql://username:password@postgres-db:5432/database
  ```

- Install `psql` client on macOS:
  ```bash
  brew install libpq
  brew link --force libpq

  # Connect to the database:
  psql --host localhost --username=db_user --dbname=db_name
  ```

- To connect directly to the container's shell:
  ```bash
  # Find container ID
  docker ps -a
  
  # Connect to container:
  docker exec -it CONTAINER_ID bash
  ```
