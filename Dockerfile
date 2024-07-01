FROM nginx:latest

# Copy the nginx configuration file
COPY configs/nginx.conf /etc/nginx/nginx.conf

# Copy the password file
COPY passwd /etc/nginx/passwd

# Make www directory in home
RUN mkdir /home/www

# Copy the template files
COPY templates /home/www/.templates

CMD ["nginx", "-g", "daemon off;"]
