#
# BudgetTracker Dockerfile for UI
#
FROM nginx:latest
MAINTAINER chaitanya bagalkoti "Chaitanya.bagalkoti@ibigroup.com"


# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf


COPY ./index.html /usr/share/ngnix/html/index.html


# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 90

# Set the default command to execute
# when creating a new container
CMD service nginx start
