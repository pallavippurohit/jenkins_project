# Use an existing Ubuntu image as a base
FROM ubuntu:latest

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# Expose port 80 for HTTP traffic
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]