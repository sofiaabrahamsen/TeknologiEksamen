FROM openjdk:latest
COPY snap.jar /usr/src/snap.jar
CMD java -jar /usr/src/snap.jar

#Explanation of the 3 lines:
#Line 1: Downloads the Docker image "openjdk" from dockerhub.com, because Java is needed to run the .jar file.
#Line 2: Copies snap.jar into the image, to the folder /usr/src. This file was created with Maven in IntelliJ, and then transferred to EC2 using an FTP client such as Filezilla
#Line 3: Tells Docker to execute the commmand "java -jar /usr/src/snap.jar" which will start up the Spring project.

