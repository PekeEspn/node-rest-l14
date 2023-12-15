# Endpoint: `GET /Servicios`
 Permite añadir un nuevo registro en la tabla de usuarios

## Ejemplo de Servicios
```http
POST /Servicios
```

## Respuesta Exitosa (Código 200 OK)
```json
[
    {
        "id_servicio": 1,
        "id_usuario": 2,
        "tipo_servicio": "reparacion de frenos",
        "descripcion": "Fallo en los frenos delanterps",
        "fecha_solicitud": "2023-12-11T00:00:00.000z",
        "estado":"Pendiente"
    }
    {
         {
    "status": 201,
    "message": "Created"
}
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