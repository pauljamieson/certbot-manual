FROM node
COPY run.sh /
RUN git clone https://github.com/pauljamieson/certbot-manual.git
ENTRYPOINT ["/run.sh"]
