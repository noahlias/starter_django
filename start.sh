docker stop starter-django:latest
docker rm starter-django:latest
docker build . --file Dockerfile --tag 'starter-django:latest'
docker run -p 80:3000 -d starter-django:latest