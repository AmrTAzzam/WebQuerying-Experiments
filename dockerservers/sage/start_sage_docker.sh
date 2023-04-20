#!/bin/bash
docker run -d --name sage-server -v ${PWD}:/opt/data/ -v /opt/Srv/jetty/data/:/opt/Srv/jetty/data/ -p 8890:8890 callidon/sage sage /opt/data/dbPedia2015.yaml -w 4 -p 8890

