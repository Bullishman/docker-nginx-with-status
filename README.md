# docker-nginx-with-status

This is a Docker image for nginx, based on the official alpine image (see [official repository](https://github.com/nginxinc/docker-nginx)), but with [stub_status module](https://nginx.org/en/docs/http/ngx_http_stub_status_module.html) configured.

## How it works

Please refer to the [official image documentation](https://hub.docker.com/_/nginx/). The only difference here is you can access the URI `/basic_status` to get the basic status information, provided by the [stub_status module](https://nginx.org/en/docs/http/ngx_http_stub_status_module.html).