# Ruby Cucumber

This automation requires you to install Docker. Kindly install based on your OS:
`https://www.docker.com/products/docker-desktop`

## Build Docker Image

Run in your terminal `build.sh` to create the docker image. Make sure you have stable internet connection as it will download the required dependencies.

## Run Ruby Cucumber

### Traditional Way

```sh
cucumber -f pretty -f html -o report.html
```

> Run a Specific tag(s)

```sh
cucumber --tags @ready -f pretty -f html -o report.html
cucumber --tags @ready @sprint1 -f pretty -f html -o report.html
```

> Run using the Docker Image

```sh
docker run -v ${PWD}:/myapp rc_engine cucumber --tags @this -f pretty -f html -o report.html -f rerun --out rerun.txt /myapp/features
```

## Instal ImageMagick

```sh
brew install imagemagick
```

## Docker Hub

This automation requires you to install Docker. Kindly install based on your OS:
`https://hub.docker.com/r/fandratt/rubycucumber`