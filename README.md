railsdemoapp
============

Pre-requisite:

Following stuff are installed
1) Rails 3.1
2) Ruby 1.9.3
3) Bundler

railsdemoapp
============
- Clone the repo
git clone https://github.com/ketansoni/railsdemoapp.git

- Inside the Rails App Demo dir run
bundle install--path=.bundle

- Install postgres on local box
brew install postgres

-Start the PostGres Server
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

-Create a local user and database using postgres user
psql postgres

postgres=# create user foo
postgres-# create database bar
postgres-# GRANT ALL PRIVILEGES ON DATABASE bar to foo

- Make the appropriate changes in database.yml as follows for development environment
development:
  adapter: postgresql
  database: bar
  username: foo
  host: localhost
  pool: 5
  timeout: 5000


- Start the Rails Server and enjoy
bundle exec rails s