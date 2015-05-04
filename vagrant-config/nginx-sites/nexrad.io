server {
  client_max_body_size 20M;
  server_name www.nexrad.io;
  location / {
    proxy_pass http://127.0.0.1:3000;
    proxy_set_header   Host             $host;
    proxy_set_header   X-Real-IP        $remote_addr;
    proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
  }
}

server {
  client_max_body_size 20M;
  server_name nexrad.io;
  location / {
    proxy_pass http://127.0.0.1:3000;
    proxy_set_header   Host             $host;
    proxy_set_header   X-Real-IP        $remote_addr;
    proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
  }
}