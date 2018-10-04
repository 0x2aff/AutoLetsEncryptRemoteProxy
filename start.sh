docker network create webproxy
docker network create webservices
curl https://raw.githubusercontent.com/jwilder/nginx-proxy/master/nginx.tmpl > nginx.tmpl
docker-compose pull
docker-compose up -d
exit 0