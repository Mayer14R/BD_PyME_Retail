
-- =========================================
-- Creación de la Base de Datos
-- =========================================
CREATE DATABASE RetailPyME;
GO

USE RetailPyME;
GO

-- =========================================
-- Tabla: Productos
-- =========================================
CREATE TABLE Productos (
    id_producto INT PRIMARY KEY IDENTITY(1,1), -- Identificador único del producto
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

-- =========================================
-- Tabla: Clientes
-- =========================================
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY IDENTITY(1,1), -- Identificador único del cliente
    nombre VARCHAR(100) NOT NULL,
    direccion TEXT,
    telefono VARCHAR(20),
    email VARCHAR(100)
);

-- =========================================
-- Tabla: Ventas
-- =========================================
CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY IDENTITY(1,1), -- Identificador único de la venta
    id_cliente INT NOT NULL, -- FK hacia Clientes
    fecha DATETIME DEFAULT GETDATE(), -- Fecha y hora automática
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- =========================================
-- Tabla: Detalle de Venta (Relación N:M entre Ventas y Productos)
-- =========================================
CREATE TABLE DetalleVenta (
    id_detalle INT PRIMARY KEY IDENTITY(1,1),
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- =========================================
-- Insertar algunos datos de prueba
-- =========================================
INSERT INTO Clientes (nombre, direccion, telefono, email)
VALUES 
('Carlos Pérez', 'Calle 123, Ciudad', '555-1234', 'carlos@email.com'),
('Laura Gómez', 'Avenida 45, Ciudad', '555-5678', 'laura@email.com');

INSERT INTO Productos (nombre, descripcion, precio, stock)
VALUES 
('Laptop HP 15', 'Laptop con 8GB RAM y 512GB SSD', 15000.00, 10),
('Mouse Logitech', 'Mouse inalámbrico óptico', 350.00, 50);

-- =========================================
-- Simular una venta con 2 productos
-- =========================================
INSERT INTO Ventas (id_cliente) VALUES (1); -- Venta para Carlos

INSERT INTO DetalleVenta (id_venta, id_producto, cantidad, precio_unitario)
VALUES 
(1, 1, 1, 15000.00), -- 1 Laptop
(1, 2, 2, 350.00);   -- 2 Mouse

-- =========================================
-- Consultar detalles de la venta
-- =========================================
SELECT 
    v.id_venta,
    c.nombre AS cliente,
    p.nombre AS producto,
    dv.cantidad,
    dv.precio_unitario,
    v.fecha
FROM DetalleVenta dv
JOIN Ventas v ON dv.id_venta = v.id_venta
JOIN Productos p ON dv.id_producto = p.id_producto
JOIN Clientes c ON v.id_cliente = c.id_cliente;
