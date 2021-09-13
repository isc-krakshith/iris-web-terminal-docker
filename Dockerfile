ARG IMAGE=containers.intersystems.com/intersystems/iris-community:2021.1.0.215.0
FROM $IMAGE

USER root

# prepare durability
RUN	mkdir -p /external/data && \
	chown -R ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /external && \
	chmod -R g+w /external

WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp
USER ${ISC_PACKAGE_MGRUSER}

COPY  Installer.cls .
COPY  src /opt/irisapp
COPY iris.script /tmp/iris.script

# run iris and initial 
RUN iris start $ISC_PACKAGE_INSTANCENAME \
	&& iris session $ISC_PACKAGE_INSTANCENAME < /tmp/iris.script \
	&& iris stop $ISC_PACKAGE_INSTANCENAME quietly
