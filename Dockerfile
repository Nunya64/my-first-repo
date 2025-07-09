# Use a small official nginx image
FROM nginx:alpine

# Replace the default HTML with ours
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (not mandatory but good practice)
EXPOSE 80
