
# DISPLAY CONTAINERS
    docker ps -a

# DISPLAY IMAGES
    docker images -a

# BUILD IMAGE
    docker build -t i-ssl .

    
# GET INTO CONTAINER
    docker exec -it c-ssl /bin/bash
    cd /etc/apache2/sites-available/
    
# STOP AND DELETE CONTAINER
    $ docker stop c-ssl

    or, stop and remove all 
    $ docker stop $(docker ps -aq)
    $ docker rm $(docker ps -aq)

# DELETE IMAGE
    $ docker rmi i-ssl

    or
    $ docker rmi $(docker images -q)
    $ docker rmi $(docker images -f "dangling=true" -q)

# RUN CONTAINER
    docker run --rm -d -p 80:80 -p 443:443  --name c-ssl i-ssl
    
###########################
    service apache2 reload
    sudo certbot --apache
