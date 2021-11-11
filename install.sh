curl -fsSL https://get.docker.com -o get-docker.sh       # download docker install script
DRY_RUN=1 sh ./get-docker.sh                             # preview the script
sudo sh get-docker.sh                                    # install

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose      # download docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
