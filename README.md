Mi proyecto se centra en una aplicación donde te da asistencia mecánica , esta aplicación cuenta también con venta de carros y de autopartes , me gustaría hacer como un tipo mapa donde piques un botón y llegue el mecánico más cerca que esta de ti para poder darle servicio a tu carro.

Este proyecto se me hace muy prometedor ya que para mi parecer no hay nada similar entonces tendría un buen impacto y respuesta si es que se logra popularizar.

# API RESTful con Node.js

Proyecto de demostración para clases de desarrollo de APIs utilizando Node.js,
con implementación en contenedores de Docker.

## Tabla de contenido

- [API RESTful con Node.js](#api-restful-con-nodejs)
  - [Tabla de contenido](#tabla-de-contenido)
  - [Requisitos de instalación](#requisitos-de-instalación)
  - [Instrucciones para la instalación](#instrucciones-para-la-instalación)
  - [Documentación detallada](#documentación-detallada)
  - [Enlaces externos](#enlaces-externos)

## Requisitos de instalación

Asegúrate de tener instalado y configurado Docker antes de comenzar.

- [Docker](https://www.docker.com)

## Instrucciones para la instalación

1. Clonar el repositorio en la máquina local:
   
   ```sh
   git clone https://github.com/PekeEspn/node-rest-l14
   ```

2. Navegar al directorio del proyecto:
   
   ```sh
   cd node-restful
   ```

3. Ejecutar el siguiente comando para iniciar los contenedores:

    ```sh
    docker-compose up -d
    ```

    > **IMPORTANTE**
    >
    > Debe estar iniciado el Docker engine para ejecutar el comando anterior,
    > si no lo está, se devolverá un mensaje de error indicando que no se
    > encontró el docker daemon.

4. La API estará disponible en `http://localhost:3100`.

## Documentación detallada

Para obtener información detallada sobre los endpoints y cómo utilizar la API,
consulta la [documentación detallada](./docs/README.md).

## Enlaces externos

- [Node.js](https://www.nodejs.org)
- [Docker](https://www.docker.com)
