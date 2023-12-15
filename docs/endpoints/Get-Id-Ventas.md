
# Endpoint: `GET /ventas/[Id]`

Permite añadir un nuevo registro en la tabla de usuarios

## Parámetros de URL
- sin parametros

## Ejemplo de Solicitud
```http
GET /Ventas/4
```

## Respuesta Exitosa (Código 200 OK)
```json
[   {
    "id_venta":1,
    "id_usuario_comprador":3,
    "id_usuario_vendedor":1,
    "id_vehiculo":4,
    "Fecha_Venta": "20023-12-20t00:00:00.000z",
    "monto":"18000.00"


}
{
    "status": 201
    "message": "Created"

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