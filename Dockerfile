# Base Image.
FROM ubuntu:16.04

# Owner Name
MAINTAINER Kajal Gupta <guptakajal1806@gmail.com>

# Update APT Repo
RUN apt-get update

# Install Apache Packages
RUN apt-get install apache2 -y 

# Custom Index Page
RUN echo "HELLO WORLD.!!!" > /var/www/html/hello.html

#Add my file
Copy sample.html /var/www/html/

# EXPOSE the PORT 
EXPOSE 80

# Start Apache Service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
