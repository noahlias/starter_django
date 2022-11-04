docker build . --file Dockerfile --tag 'starter-django:latest'
docker run -p 3000:80 -d starter-django:latest