docker build -t i-letssl .

docker run -it --rm -d -v ./letsencrypt:/etc/letsencrypt/ -p 80:80 --name c-letssl i-letssl 

docker exec -it c-letssl /bin/bash

certbot certonly

exit

docker stop c-letssl

docker rmi i-letssl