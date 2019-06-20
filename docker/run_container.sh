docker volume create knocat_html
docker volume create knocat_cgi-bin
docker volume create knocat_logs
docker volume create knocat_conf
docker run -d --name=knocat --network=jamnet  --hostname=knocat --restart=always \
--volume knocat_html:/var/www/html \
--volume knocat_cgi-bin:/var/www/cgi-bin \
--volume knocat_logs:/var/log/httpd \
--volume knocat_conf:/etc/httpd \
localhost:5000/scsuk.net/knocat:1.0
