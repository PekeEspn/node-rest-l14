CREATE DATABASE IF NOT EXISTS Geizel;

USE Geizel;
-- Tabla de Usuarios
CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    email VARCHAR(50),
    direccion VARCHAR(100)
);

-- Tabla de Servicios
CREATE TABLE Servicios (
    id_servicio INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    tipo_servicio VARCHAR(50),
    descripcion TEXT,
    fecha_solicitud DATE,
    estado VARCHAR(20),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);


-- Tabla de Vehículos
CREATE TABLE Vehiculos (
    id_vehiculo INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    año INT,
    placa VARCHAR(10),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);


-- Tabla de Ventas
CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario_comprador INT,
    id_usuario_vendedor INT,
    id_vehiculo INT,
    fecha_venta DATE,
    monto DECIMAL(10, 2),
    FOREIGN KEY (id_usuario_comprador) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_usuario_vendedor) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_vehiculo) REFERENCES Vehiculos(id_vehiculo)
);

-- Inserts  para Usuarios
INSERT INTO Usuarios (nombre, telefono, email, direccion)
VALUES 
    ('María López', '987654321', 'maria@example.com', 'Avenida Principal 456'),
    ('Carlos Martínez', '555444333', 'carlos@example.com', 'Calle Secundaria 789'),
    ('Laura García', '111222333', 'laura@example.com', 'Boulevard Central 102'),
    ('Pedro Ramirez', '777888999', 'pedro@example.com', 'Avenida Norte 789'),
    ('Ana González', '333222111', 'ana@example.com', 'Calle Este 567'),
    ('Sofía Rodríguez', '999888777', 'sofia@example.com', 'Calle Oeste 345'),
    ('Diego Hernández', '666777888', 'diego@example.com', 'Avenida Sur 678'),
    ('Julia Perez', '222333444', 'julia@example.com', 'Calle 10, Ciudad Vieja'),
    ('Miguel Sánchez', '888999111', 'miguel@example.com', 'Bulevar Costero 234'),
    ('Elena Castro', '444555666', 'elena@example.com', 'Calle 25, Zona Industrial');

-- Inserts  para Servicios
INSERT INTO Servicios (id_usuario, tipo_servicio, descripcion, fecha_solicitud, estado)
VALUES 
    (2, 'Reparación de frenos', 'Fallo en los frenos delanteros', '2023-12-10', 'Pendiente'),
    (3, 'Asistencia en carretera', 'Neumático pinchado', '2023-12-11', 'Pendiente'),
    (4, 'Mantenimiento general', 'Cambio de aceite y filtros', '2023-12-12', 'En proceso'),
    (5, 'Reparación de motor', 'Problemas de arranque', '2023-12-13', 'Pendiente'),
    (6, 'Inspección técnica', 'Revisión de sistema eléctrico', '2023-12-14', 'Pendiente'),
    (7, 'Reemplazo de batería', 'Batería descargada', '2023-12-15', 'En proceso'),
    (8, 'Reparación de transmisión', 'Problemas de cambios', '2023-12-16', 'Pendiente'),
    (9, 'Instalación de accesorios', 'Montaje de parachoques', '2023-12-17', 'Pendiente'),
    (10, 'Revisión de suspensión', 'Ruidos extraños al pasar baches', '2023-12-18', 'Pendiente'),
    (1, 'Reparación de avería eléctrica', 'Luces intermitentes', '2023-12-19', 'En proceso');

-- Inserts  para Vehículos
INSERT INTO Vehiculos (id_usuario, marca, modelo, año, placa)
VALUES 
    (2, 'Ford', 'Focus', 2016, 'XYZ789'),
    (3, 'Chevrolet', 'Spark', 2019, 'LMN456'),
    (4, 'Honda', 'Civic', 2017, 'PQR123'),
    (5, 'Volkswagen', 'Golf', 2020, 'STU456'),
    (6, 'Hyundai', 'Elantra', 2015, 'UVW789'),
    (7, 'Mazda', '3', 2018, 'OPQ012'),
    (8, 'Toyota', 'Yaris', 2021, 'RST345'),
    (9, 'Nissan', 'Sentra', 2014, 'IJK678'),
    (10, 'Kia', 'Rio', 2019, 'GHI901'),
    (1, 'Mercedes-Benz', 'Clase C', 2017, 'ABC123');

-- Inserts  para Ventas
INSERT INTO Ventas (id_usuario_comprador, id_usuario_vendedor, id_vehiculo, fecha_venta, monto)
VALUES 
    (3, 1, 4, '2023-12-20', 18000.00),
    (5, 2, 6, '2023-12-21', 15000.00),
    (7, 3, 8, '2023-12-22', 20000.00),
    (9, 4, 10, '2023-12-23', 17000.00),
    (2, 5, 2, '2023-12-24', 12000.00),
    (4, 6, 4, '2023-12-25', 19000.00),
    (6, 7, 6, '2023-12-26', 16000.00),
    (8, 8, 8, '2023-12-27', 21000.00),
    (10, 9, 10, '2023-12-28', 17500.00),
    (1, 10, 1, '2023-12-29', 22000.00);
