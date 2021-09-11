#####################################################################################
# THIS DOCKERFILE PICKS THE ALREADY COMPILED APP AND PUTS IT INTO A CONTAINER
# IT'S A FASTER APPROACH AND THE PREFERRED FOR CI/CD TOOLS
#####################################################################################
FROM nginx as final
WORKDIR /usr/share/nginx/html
COPY bin/Debug/net5.0/publish/wwwroot /usr/local/webapp/html
COPY nginx.conf /etc/nginx/nginx.conf


