# docker-nginx-webdav

This repository contains a [Docker](https://www.docker.com/) container built on [Alpine](https://www.alpinelinux.org/) Linux\
providing [WebDAV](http://www.webdav.org/) access using [Nginx](https://nginx.org/en/) (and optionally [Traefik](https://traefik.io/)+[Portainer](https://www.portainer.io/))

## Installation

### Using Traefik and Portainer

1. Image
- In Portainer, go to *Images > Build new Image*
- Enter `nginx-webdav:latest` as image-name
- Click on the `URL` method
- Enter `https://github.com/hyperacuity/docker-nginx-webdav.git` (or your own fork)
- Click `Build`

2. Stack
- Navigate to *Stacks > Add Stack*
- Enter e.g. `webdav` as stack-name
- Paste the content of the `docker-compose.yaml` file [from this repo](https://raw.githubusercontent.com/hyperacuity/docker-nginx-webdav/main/docker-compose.yaml) in the editor
- Add credentials to environment variables
- Modify domains, names, labels, networks, volumes, ...
- Hit `Deploy`

3. Info
- If you want to make modifications to the default `/etc/nginx/nginx.conf`,
copy it to the host (from this repo), \
mount it inside the container, and restart!
- Make sure the same user/group from the `nginx.conf` owns the mounted directory using e.g.:\
`sudo chown -R nobody:root [host-path]`
- The native Webdav client from **Microsoft Windows** (File Explorer) **is non-compliant** and not supported by Nginx (yet).\
Please use an alternative client like [WinSCP](https://winscp.net/)

