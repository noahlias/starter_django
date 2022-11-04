docker build . --file Dockerfile --tag 'latest'
docker run -p 3000:80 -d 