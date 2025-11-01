# Use the official lightweight Nginx image
FROM nginx:alpine

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static website files to the default Nginx public folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

LABEL org.opencontainers.image.source=https://github.com/megamouj/under-maintenance

ENV TZ="Asia/Tehran"