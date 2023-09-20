# Use an official Apache base image from Docker Hub
FROM httpd:latest

# Optionally, set environment variables if needed
# ENV APACHE_LOG_DIR /var/log/apache2

# Copy your application files into the container's web root directory
COPY . /usr/local/apache2/htdocs/

# You can also copy additional configuration files if needed
# COPY ./your_apache_config.conf /usr/local/apache2/conf/httpd.conf

# Expose port 80 to the outside world (default HTTP port for Apache)
EXPOSE 80

# Start the Apache web server when the container starts
CMD ["httpd", "-D", "FOREGROUND"]
