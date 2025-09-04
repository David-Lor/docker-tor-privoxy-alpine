# tor-privoxy-alpine

The smallest (**15 MB**) docker image with Tor and Privoxy on Alpine Linux.

```
docker run -d -p 8118:8118 -p 9050:9050 ghcr.io/david-lor/tor-privoxy:latest

# Get public IP without proxy
curl https://api.ipify.org

# Get public IP with proxy
curl --proxy localhost:8118 https://api.ipify.org
```

And that's it! Read the accompanying [blog post](https://medium.com/@rdsubhas/docker-image-with-tor-privoxy-and-a-process-manager-under-15-mb-c9e344111b61) for more details.

## Fork details

The changes of this fork compared with the original repository are limited to:

- Having a recent build of the Docker image, with updated Alpine baseimage and Tor client (which is installed from the Alpine repositories).
- Add curl.
