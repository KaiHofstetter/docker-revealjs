# docker-revealjs
[reveal.js](https://github.com/hakimel/reveal.js) Docker image of the HTML presentation framework.

## How to use it
1. Run node web server with revael.js

    ```
    docker run --name my-presentation -v $PWD/index.html:/reveal.js/index.html:ro -p 80:8000 -d kaihofstetter/docker-revealjs
    ```
2. Access presentation

    ```
    http://localhost
    ```


