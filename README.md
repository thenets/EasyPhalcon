# Easy Phalcon
Easiest way to setup an environment for Phalcon Framework.

## Who should use?
This project is destinated for developers. Deploy for production maybe need more features, like load balancer, compression, etc.
For more features, use the official [Phalcon Dockerfiles](https://github.com/phalcon/dockerfiles).

## How to install?

### Install Docker
You need the "curl" to install Docker:
```
# Run as root

# For Debian/Ubuntu
apt install -y curl

# For Fedora
dnf install curl
```

Now you need to run the Docker installer:
```
# Run as root
curl -sSL https://get.docker.io | sh
adduser -aG docker your-user
```

I recommend you to restart your computer, or maybe you need to run docker commands below using an root user.


### Create an Phalcon application skeletion
Create an application from composer:
```
# Create your app dir
$ mkdir ~/my_app

# Enter on Phalcon container
$ docker run --rm -it -v ~/my_app:/home/phalcon/html thenets/phalcon /bin/bash

# Create a project skeletion
$ phalcon create-project
```

## Start server for development

You need to replace `~/my_app` with your application diretory.
```
$ docker run --rm -it -p 80:8080 -v ~/my_app:/home/phalcon/html thenets/phalcon
```

## Using Phalcon CLI

You need to enter on container, set your application dir at `~/my_app` and nothing more. Example:
```
$ docker run --rm -it -v ~/my_app:/home/phalcon/html thenets/phalcon /bin/bash
$ phalcon --version
```

You can find the full Phalcon CLI documentation at [offical website](https://olddocs.phalconphp.com/en/3.0.0/reference/cli.html).


## Build my own Docker image
It's not necessary.

Requeriments:
- Git
- Docker

Clone this project and build using `make`:

```
$ git clone https://github.com/thenets/EasyPhalcon
$ cd EasyPhalcon
$ make
```