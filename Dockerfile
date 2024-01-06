# Use an official nginx runtime as the base image
FROM nginx:alpine

# Copy the static site content to the container
COPY ./public /usr/share/nginx/html

# Expose port 80 for the app
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]