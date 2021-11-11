export IP=$(wget -qO- https://ipecho.net/plain)
sudo -E bash -c 'docker-compose up'
