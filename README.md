# docker-nginx-with-status

This is a Docker image for nginx, based on the official alpine image (see [official repository](https://github.com/nginxinc/docker-nginx)), but with [stub_status module](https://nginx.org/en/docs/http/ngx_http_stub_status_module.html) configured.

## How it works

Add stub_status to the nginx.vh.default.status.conf file to enable checking of Active connections. (This has already been added to the repository file.)
![nginx-adc-basics-and-best-practices-51-2048](https://github.com/Bullishman/docker-nginx-with-status/assets/42830393/a4ced561-93bc-4a51-83e8-e21acfb8c0ea)

Use Docker command to build image and upload to Docker Hub.
```
docker build -t nginx_connection:latest . // Build the image
docker tag nginx_connection deapark123/nginx_connection // Attach a tag
docker push deapark123/nginx_connection // Upload to Docker Hub
```

For the AKS pricing tier, choose Standard to allow for the maximum number of nodes.
![AKS_1_updated](https://github.com/Bullishman/docker-nginx-with-status/assets/42830393/995aa01a-4dab-4fea-99f2-0dfbe9770020)

If there is no existing node pool, click the Add node pool button to add a new node pool.
Select an appropriate node size from Node Size.
Since the number of nodes is currently adjusted dynamically based on the value of Nginx's Active connections, select Manual for the Scale method.
Since we plan to start with one node, select 1 for Node count.
![AKS_2_updated](https://github.com/Bullishman/docker-nginx-with-status/assets/42830393/98b916cc-13ff-42e0-94d1-4102c3cdc31d)
![AKS_3_updated](https://github.com/Bullishman/docker-nginx-with-status/assets/42830393/5cf2fccd-602f-4d6a-ad54-8bee1eb119ae)
