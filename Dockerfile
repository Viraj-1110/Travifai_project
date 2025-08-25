# Use official Nginx image
FROM nginx:alpine

# Copy website files to Nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
