# README

To run periconto from docker do the following. This was tested on Ubuntu 24.04.

* build docker image
```docker build -t periconto .```

* allow X11 forwarding
```xhost +```

* run docker container that runs periconto
```docker run --rm --name testing -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY periconto python3 PeriConto.py```
