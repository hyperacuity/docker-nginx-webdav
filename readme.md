# docker-nginx-webdav

Alpine container with nginx providing webdav access

## Usage

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
- Paste the provided `docker-compose.yaml` in the editor
- Add credentials to environment variables
- Modify domains, names, labels, networks, volumes, ...
- Hit `Deploy`
3. Info
- If you want to make modifications to the default `/etc/nginx/nginx.conf`,
copy it to the host, mount it inside the container, and restart!
- Make sure the same user/group from the `nginx.conf` owns the mounted directory using:
`sudo chown -R nobody:root [path]`