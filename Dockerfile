# Container image of R development build
FROM rocker/drd:latest

# Copies your code file from your action repository to the filesystem path `/` of the container
RUN mkdir -p /Tests
COPY Tests.R /Tests/Tests.R
#RUN chmod +x /entrypoint.sh 

# Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]
CMD Rscript /Tests/Tests.R
