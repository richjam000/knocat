# Example docker build command
docker build -t localhost:5000/scsuk.net/knocat:1.0 -f docker/Dockerfile https://gitlab.scsuk.net/rich/knocat.git#master
docker push localhost:5000/scsuk.net/knocat:1.0
