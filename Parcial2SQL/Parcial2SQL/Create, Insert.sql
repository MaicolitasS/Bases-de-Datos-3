create database E_Shop;

use E_Shop;

create table productos (
	id_producto int primary key,
    nombre varchar(200),
    categoria varchar(50),
    precio decimal(10,2)
);

create table clientes (
	id_cliente int primary key,
    nombre varchar(100),
    correo varchar(100),
    direccion varchar (200)
);

create table compras (
	id_compra int primary key,
    id_producto int,
    id_cliente int,
    fecha date,
    cantidad int,
    foreign key (id_producto) references productos(id_producto),
    foreign key (id_cliente) references clientes(id_cliente)
);

insert into productos (id_producto, nombre, categoria, precio) values
(1, 'Samsung S25', 'Dispositivo Electrónico', 500.00),
(2, 'Camiseta Polo', 'Ropa', 200.00),
(3, 'Manilla Led', 'Accesorios', 100.00),
(4, 'Alexa', 'Dispositivo Electrónico', 250.00),
(5, 'Escoba', 'Articulo Hogar', 50.00);

insert into clientes (id_cliente, nombre, correo, direccion) values
(1, 'Juan', 'juan@example.com', 'Mayorca'),
(2, 'María', 'maria@example.com', 'Molinos'),
(3, 'Carlos', 'carlos@example.com', 'Niquia'),
(4, 'Miguel', 'miguel@example.com', 'Santa Fé'),
(5, 'Samanta', 'samanta@example.com', 'Premium Plaza');

insert into compras (id_compra, id_cliente, id_producto, cantidad, fecha) values
(1, 1, 1, 2, '2024-01-01'),
(2, 1, 3, 1, '2024-04-02'),
(3, 2, 2, 1, '2024-03-03'),
(4, 3, 5, 3, '2024-04-04'),
(5, 1, 4, 2, '2024-05-05');


    