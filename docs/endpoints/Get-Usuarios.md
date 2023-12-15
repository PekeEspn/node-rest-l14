# Endpoint: `GET /usuarios`

Permite obtener información sobre los usuarios.

## Ejemplo de Solicitud
```http
GET /usuarios
```

## Respuesta Exitosa (Código 201 OK)
```json
[
    {
        "id": 1,
        "nombre": "Maria Lopez",
        "Telefono": "987654321",
        "email": "maria@example.com"
        "direccion": "Avenida Principal 456"
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