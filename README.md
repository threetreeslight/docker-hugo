# docker-hugo

hugo work in docker

## Usage

build you own site

```
docker run -it --rm -v $PWD:/site threetreeslight/docker-hugo hugo
```

Run hugo server with your site

```
docker run -it --rm -v $PWD:/site threetreeslight/docker-hugo hugo server --baseURL=http://localhost:1313 --bind=0.0.0.0
```
