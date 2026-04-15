
ARG ALMA_VERSION
FROM almalinux: ${ALMA_VERSION}

## we will get the values from the build time and set it as env variable and use it in the run time
## pass like value 9 or 8 [FROM almalinux: ${ALMA_VERSION} else FROM almalinux: ${ALMA_VERSION:9}] we did not get the value of ALMA_VERSION as env variable we need to set it as env variable using ARG and ENV

ARG cource="DevOps" \
    auther="Maruthiraok"

ENV courceEnv=${cource} \
    autherEnv=${auther}

RUN echo "this is the courceList: ${courceEnv}" && \
    echo "this is the auther: ${autherEnv}"
CMD ["sleep", "10"]

## Execute this command to build
## docker build -t arg:v1 --build-arg ALMA_VERSION=8 .
## docker build -t arg:v1 --build-arg ALMA_VERSION=8 --build-arg COURCE=DevOps .
