#FROM scratch en el caso de que tengamos el código compilidado de forma estática
FROM alpine
WORKDIR /app
#copiamos la carpeta src de nuestro proyecto a la carpeta app del contenedor
COPY src .
RUN apk add php 
#php index.php
ENTRYPOINT ["/usr/bin/php"]                                                                  
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
