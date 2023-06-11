# Use the OpenJDK 11 image as the base image
FROM openjdk:11

# Create a new app directory
RUN mkdir /provAPI

# create input/output folders
#RUN mkdir data
# Copy the app files from host machine to image filesystem
COPY provAPI/ /provAPI

# Set the directory for executing future commands
WORKDIR /provAPI

# Run the main class
CMD java -jar mobispaces_provAPI.jar 

# if we do not run the main class by default, we reside on the -it option
# run with: docker run -p 9090:8080 --rm <image-name-or-id>
# test service using $ curl -G --output results.txt --data-urlencode '@test.json' http://<host>:9090/q=
