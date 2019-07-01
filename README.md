## Run the app locally; try outs

    cd into k8s-demo-colour and then
    $ sudo npm install http-server -g
    $ export K8S_DEMO_COLOR_BACKGROUND=green
    $ node webapp/webserver.js
    
## Build the image 'k8s-demo-color:1.0.0'

    $ docker build --tag k8s-demo-colour:1.0.0 .

## Run the container

    $ docker run --publish 8080:8080 --env COLOR_BACKGROUND=yellow k8s-demo-colour:1.0.0