# Jekyll CentOS 7 Docker image

## Introduction

This is used for testing github.io and other Jekyll sites in Docker container quickly.  CentOS 7 base image is used for this container, and follow as close to official install and basic usage guides as possible.

Please see: [Official Jekyll installation guide](https://jekyllrb.com/docs/installation/)
Please see: [Official Jekyll basic usage guide](https://jekyllrb.com/docs/usage/)
- [Jekyll](http://jekyllrb.com/)

## Usage notes

Just attach the source folder to the docker run command as appropriate.  The source folder will then be generated into ./_site, and any new changes to the source folder will be regenerated automatically. 

## Variable

- **INPUTDIR** : Source folder (Default: /opt)

## Volumes

- /opt

## Complete Example

```bash
sudo docker build -t uqwhsu/jekyll --rm=true --force-rm=true .

sudo docker run --detach \
    --hostname jekyll.example.com \
    --publish 80:80 \
    --name jekyll \
    -e INPUTDIR=/opt \
    --volume /srv/jekyll/github.io:/opt \
    uqwhsu/jekyll
```
After starting the container you can visit <http://localhost/> or <http://192.168.59.103> if you use boot2docker.

---

## Additional Information

Please see Jekyll project page: [Jekyll](http://jekyllrb.com/)

