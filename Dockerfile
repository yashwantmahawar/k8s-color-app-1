# Our base image with OS
FROM node:carbon

RUN /usr/local/bin/npm install http-server -g --only=production && \
    useradd --create-home --home-dir /app appuser && \
    chown -R appuser:appuser /app

# Copy our app
COPY app /app

# Work here
WORKDIR /app

# Our webapp listens to this port.
EXPOSE 8080

ENV COLOR_BACKGROUND="white"
ENV COLOR_PORT="8080"

# run as
USER appuser

CMD ["/usr/local/bin/node", "/app/webserver.js"]
