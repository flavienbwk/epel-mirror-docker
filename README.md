# epel-mirror-docker

<p align="center">
    <a href="https://travis-ci.com/github/flavienbwk/epel-mirror-docker" target="_blank">
        <img src="https://travis-ci.com/flavienbwk/epel-mirror-docker.svg?branch=main&status=passed"/>
    </a>
</p>
<p align="center">Status : tested & working :heavy_check_mark:</p>

## Downloading & updating

1. Setup your EPEL version and releases in `mirror.sh`

2. Run the `mirror` container :

    ```bash
    docker-compose build
    docker-compose up mirror
    ```

> Tips: We recommend you downloading the mirror from [a cloud provider](https://www.scaleway.com/en/) and then transfer the files to your computer.

## Serving

1. Check your mirroring succeeded in `./mirror/*` or typing `du -sh ./mirror` to check the volume

    The default configuration should make you download _49 G_

2. Run the server :

    ```bash
    docker-compose up -d server
    ```

    Server will run on [`localhost:8080`](http://localhost:8080)  

## Client configuration

To point your EPEL clients to your mirror, create a `/etc/yum.repos.d/local-epel-mirror.repo` file as follow :

_TO DO_

:point_right: Please cite my work if you're using it !
:point_right: Feel free to send **pull requests** as well !
