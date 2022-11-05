docker stop my_django
docker rm my_django
docker build . --file Dockerfile --tag 'starter_django:latest'
docker run --name my_django -p 8000:8000 -d starter_django:latest