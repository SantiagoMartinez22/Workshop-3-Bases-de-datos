create database workshop3;
use workshop3;

create table clientes(
codigo_cliente int PRIMARY KEY auto_increment,
nombre_cliente varchar(100),
nombre_contacto varchar(100),
apellido_contacto varchar(100),
telefono varchar (100),
fax varchar(100),
direccion1 varchar(100),
direccion2 varchar(100),
ciudad varchar(100),
region varchar(100),
pais varchar(100),
codigo_postal int,
limite_credito long,
codigo_empleado int
 
);
alter table clientes add foreign key (codigo_empleado) references empleados(codigo_empleado);


create table pedidos(
codigo_pedido int primary key auto_increment,
codigo_cliente int,
fecha_pedido date,
fecha_esperada date,
fecha_entregada date,
estado varchar(50),
comentarios varchar(200),
FOREIGN KEY (codigo_cliente)REFERENCES clientes(codigo_cliente)
);

create table pago(
id_transaccion int primary key auto_increment,
codigo_cliente int,
forma_pago varchar(100),
fecha_pago date,
total_x_pago double,
FOREIGN KEY (codigo_cliente)REFERENCES clientes(codigo_cliente)
);

create table empleados(
codigo_empleado int primary key auto_increment,
cod_oficina int,
nombre_empleado varchar(100),
apellido1_empleado varchar(100),
apellido2_empleado varchar(100),
extension_empleado int,
email_empleado varchar(100),
foreign key(cod_oficina) references oficinas (codigo_oficina),
codigo_jefe int,
puesto_empleado varchar(100)

);



create table oficinas(
codigo_oficina int primary key auto_increment,
ciudad_oficina varchar(100),
pais_oficina varchar(100),
region_oficina varchar(100),
codigo_postal int,
telefono varchar(100),
direccion varchar(100)

);
ALTER TABLE oficinas
MODIFY COLUMN telefono VARCHAR(255);

create table productos(
codigo_producto int primary key auto_increment,
nombre_producto varchar(100),
gama_producto varchar(100),
checkdimensiones int,
provedor_producto varchar(100),
descripcion varchar(255),
cantidad_stock int,
precio_venta double,
precio_provedor double


);
alter table productos
modify column gama_producto int;
alter table productos
modify column descripcion varchar(500);

create table gamas(
 codigo_gama int primary key auto_increment,
 descripcion varchar(100),
 imagen_gama varchar(100)
 );
 
 
 CREATE TABLE DetallesPedidos (
 codigo_detalle_pedido int primary key auto_increment,
  cantidad INT,
  precio_unitario double,
  codigo_pedido int,
  codigo_producto int,
  FOREIGN KEY (codigo_pedido) REFERENCES Pedidos(codigo_pedido),
  FOREIGN KEY (codigo_producto) REFERENCES Productos(codigo_producto));
  
  



  
  
  
  
  


