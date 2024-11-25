# Use the official Nginx image as the base image
FROM public.ecr.aws/nginx/nginx:alpine


# Install Git
RUN apk add --no-cache git

# Remove all files from /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*

# Clone the Git repository into /usr/share/nginx/html
RUN git clone https://github.com/vishnukothuri0404/harsha_cloud.git /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

