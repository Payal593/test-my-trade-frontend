FROM nginx:latest

# Remove default Nginx HTML files and copy all website files
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
