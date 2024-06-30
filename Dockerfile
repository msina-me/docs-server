FROM nginx:latest

# Copy the nginx configuration file
COPY configs/nginx.conf /etc/nginx/nginx.conf

# Copy the password file
COPY passwd /etc/nginx/pass/passwd

CMD ["nginx", "-s", "reload"]
