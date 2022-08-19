FROM node
COPY run.sh /
RUN git clone https://github.com/pauljamieson/certbot-manual.git /certbot-manual
WORKDIR /certbot-manual
RUN npm install
ENTRYPOINT ["/run.sh"]
