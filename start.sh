docker stop my_django
docker rm my_django
docker build . --file Dockerfile --tag 'starter_django:latest'
docker run -p 1313:8000 -d --name my_django starter_django:latest