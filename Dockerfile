FROM node:8                          # to make 'nginx' available to have HTTP REQUESTS 
FROM nginx:alpine                    # to attach on nginx:alpine
RUN rm -rf /usr/share/nginx/html/*  # to eliminate default nginx server public folder 
COPY . /usr/share/nginx/html         # to send docker.compose file in /websources,that is my local, out of docker nginx server. compose public folder
EXPOSE 80                            # to open 80 

