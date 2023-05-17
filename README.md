# docker-terraform

## Step.1

Modify the variable if you want to change

| variable          | value             |
| :---------------- | :---------------- |
| terraform_version | terraform version |

docker build
```bash
$ podman build -t terraform:latest .
```

## Step.2　　（Podmanの場合は不要です？）

docker-compose.yml

Edit [Your terraform project path]
```yml
version: '3'
services:
  web_container:
    image: alpine-terraform
    restart: always
    container_name: terraform_container
    volumes:
      - /home/user/docker-terraform :/terraform
    tty: true
```

docker-compose
```bash
$ docker-compose up -d
```

## step.3
Access the container

```bash
× docker exec -it terraform_container /bin/sh
podman run --rm localhost/terraform:latest version
podman run -it --rm -v $(pwd):/data:z localhost/terraform:latest init
podman run -it --rm -v $(pwd):/data:z localhost/terraform:latest plan
podman run -it --rm -v $(pwd):/data:z localhost/terraform:latest apply
```

**Get started with terraform**
