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
  docker-compose up -d
  ```

- Verify the database is up by connecting to it using an external client, i.e. [Postico](https://eggerapps.at/postico/)

- To stop the container and delete the associated volume:
  ```
  docker-compose down --volumes
  ```
  ***Note: this will delete the database***


## Miscellaneous
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
