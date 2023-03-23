# README
Prerequisites:
- have docker installed
- have ruby 2.7.6 installed


Deployment steps
- clone this repo
- build a docker image with running `docker compose build`
- run `docker compose up` (this will start a container for both rails and postgres)
- we need to build the postgres db, so open a new terminal and run `docker compose run web rake db:create`
- grab the id for the running web app docker container, get into it with a bash terminal (`docker exec -ti <id> bash`)
- run the migration files (`bundle exec rails db:migrate`)
(with the migrations up and a rails server running, you should now see a rails app exposed on localhost 3002, connected to the postgres container)
- run the seed file (`bundle exec rake db:seed`)
