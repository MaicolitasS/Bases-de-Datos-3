use e_shop;

select nombre, categoria, sum(cantidad) as Cantidad_Total_Vendida from productos, compras group by nombre, categoria, cantidad order by Cantidad_Total_Vendida desc limit 1;
select c.nombre, c.direccion, count(cantidad) as Cantidad_Compras from  clientes c, compras co where c.id_cliente = co.id_cliente group by c.nombre, c.direccion order by cantidad_compras desc;
select nombre, categoria, precio from productos where categoria = 'Dispositivo Electrónico';
select c.nombre, p.nombre, t.cantidad, t.fecha from productos p, clientes c, compras t where t.id_cliente = c.id_cliente order by fecha desc;
select nombre, direccion, correo from clientes where direccion = 'Mayorca';
select nombre, (select sum(precio) from productos where id_cliente = clientes.id_cliente) as Total_De_Compras from clientes;
select clientes.nombre, productos.nombre, productos.categoria, productos.precio from clientes, productos;