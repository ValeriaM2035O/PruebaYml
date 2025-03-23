CREATE DATABASE Tienda;
USE Tienda;

CREATE TABLE Clientes(
    id_cliente int primary key auto_increment,
    nombre varchar(100) not null,
    telefono varchar(15) unique not null
);

CREATE TABLE Pedidos(
    id_pedido int primary key auto_increment,
    id_cliente int not null,
    fecha_pedido date not null,
    total_compra decimal(10,2) not null,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) ON DELETE CASCADE
);
CREATE TABLE Productos(
     id_producto int primary key auto_increment,
     nombre varchar(100) not null,
     precio decimal(10,2) not null
);
