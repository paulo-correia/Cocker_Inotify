# Inotify on Docker (Alpine Linux Image)

## Save Dockerfile on a folder Ex: Inotify
**Caution: Only one dockerfile per folder**

### Generate image

docker build -t `<name>` .

`<name>` = Ex: apache or your_docker_hub_name/inotify:1.0

### Running Container

docker run -it `<name>` /bin/sh

### If don't generate image, get from docker hub

docker run -it paulocorreia/alpine_inotify:1.0 /bin/sh

### Testing

inside your container
Call inotify:

inotifywait -e create,delete,modify,move -mrq /inotify &

Create a file inside /inotify folder, Ex: touch /inotify/a.txt if yoo see /inotify/ CREATE a.txt is OK 