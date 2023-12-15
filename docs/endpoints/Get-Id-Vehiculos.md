
# Endpoint: `GET /Vehiculos/[Id]`

Permite añadir un nuevo registro en la tabla de usuarios

## Ejemplo de Solicitud
```http
GET /Vehiculos/4
```

## Respuesta Exitosa (Código 200 OK)
```json
[
    {
        "id_vehiculo": 1,
        "id_usuaario": "2",
        "marca": "Ford",
        "Modelo": "Focus",
        "año": "Focus",
        "Placo": "LMN456"
    }
    {
    "status":201,
    "message": "created"
}
]
```

## Respuestas de Errores Posibles
- Código 404 Not Found:

  ```json
  {
    "errno": 404,
    "error": "not_found",
  }
  ```

- Código 400 Bad request:
  ```json
  {
    "errno": 400,
    "error": "bad_request",
  }
  ``` 

## Notas Adicionales

- Asegurate de escribir correctamente la ruta