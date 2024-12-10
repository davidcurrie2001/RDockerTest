# Container image of R development build
FROM rocker/drd:latest

# Install testthat from CRAN
RUN R -e "install.packages('testthat',dependencies=TRUE, repos='http://cran.rstudio.com/')"

# Copy test files to container
RUN mkdir -p /Tests
COPY Tests.R /Tests/Tests.R

# Run the tests
CMD Rscript /Tests/Tests.R
