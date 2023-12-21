FROM nginx
COPY dist/. /usr/share/nginx/html/
#RUN apt install vim
RUN apt update -y && apt install vim -y 
RUN touch application.yaml
WORKDIR /app 
# => mkdir /app && cd /app
EXPOSE 80
#Port d'ecoute dans le conteneur