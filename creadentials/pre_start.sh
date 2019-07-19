#!/bin/bash -ex
NGINX_DIR=/var/vcap/data/nginx/document_root
if [ ! -d $NGINX_DIR ]; then
  mkdir -p $NGINX_DIR
  cd $NGINX_DIR
  cat > index.shtml <<EOF
    <html><head><title>BOSH on IPv6</title>
    </head><body>
    <h2>Welcome to BOSH's nginx Release</h2>
    <h2>
    My hostname/IP: <b><!--# echo var="HTTP_HOST" --></b><br />
    Your IP: <b><!--# echo var="REMOTE_ADDR" --></b>
    </h2>
    </body></html>
EOF
fi