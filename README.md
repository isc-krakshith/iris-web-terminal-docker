# iris-web-terminal
InterSystems Web Terminal installer v4.9.3 from https://intersystems-community.github.io/webterminal/#downloads is integrated into a container build using image at containers.intersystems.com/intersystems/iris-community:2021.1.0.215.0.

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation 

Clone/git pull the repo into any local directory

```
$ git clone https://github.com/isc-krakshith/iris-web-terminal-docker.git
```

Open the terminal in this directory and run:

```
$ docker-compose build
```

3. Run the IRIS container with your project:

```
$ docker-compose up -d
```

4. Open Web Terminal
```
http://localhost:9092/terminal/
```

5. Open Management Portal (_SYSTEM/SYS) and see Web Terminal classes in IRISAPP Namespace. Web application cofiguration is called '/terminal'
```
http://localhost:/9092/csp/sys/utilhome.csp
```
...