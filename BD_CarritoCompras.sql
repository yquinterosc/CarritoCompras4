CREATE DATABASE catalogo2;
/* USE catalotogo2;*/
/*--Crear la tabla productos*/
CREATE TABLE `productos` ( 
`codigo` INT NOT NULL , 
`NombreProd` VARCHAR(100), 
`StockProd` INT(4), 
`PrecioVenta` DECIMAL(7), 
PRIMARY KEY (`codigo`)) ENGINE = InnoDB;

/* --Insertar registros en la tabla*/
INSERT INTO `productos` (`codigo`, `NombreProd`, `StockProd`, `PrecioVenta`) 
VALUES ('1', 'Notebook HP  Core i7 3.0Ghz HD 500Gb SSD, RAM 16Gb, 15.6 ','10', '5050');

INSERT INTO `productos` (`codigo`, `NombreProd`, `StockProd`, `PrecioVenta`) 
VALUES ('2', 'Impresora HP 2022', '20', '350');

/*--Seleccionar los registros de la tabla productos*/
SELECT * FROM productos;

 CREATE TABLE clientes(
 Codigo INT PRIMARY KEY AUTO_INCREMENT,
 Nombre VARCHAR(255),
 Direccion VARCHAR(255),
 Correo VARCHAR(100) UNIQUE,
 Clave VARCHAR(150)); 
 
 /*
 --SELECT pp.Codigo_Pedido, pp.Codigo_Producto, p.NombreProd, pp.Cantidad, pp.Precio_Unitario 
 --FROM pedido_producto  pp JOIN productos  p ON pp.Codigo_Producto = p.codigo 
 --WHERE pp.Codigo_Pedido='"+codigo_pedido+"'");
 */
 
 CREATE TABLE pedidos(
 Codigo INT PRIMARY KEY AUTO_INCREMENT,
 Codigo_Cliente INT,
 Fecha_Pedido DATE,
 Estado_pedido VARCHAR(10),
 Monto_Total DECIMAL,
 CONSTRAINT Cliente_FK FOREIGN KEY (Codigo_Cliente) REFERENCES clientes(Codigo)
 );
 
CREATE TABLE pedido_producto(
Codigo_Pedido INT NOT NULL,
Codigo_Producto INT NOT NULL,
Cantidad INT,
Precio_Unitario DECIMAL,
PRIMARY KEY (Codigo_Pedido,Codigo_Producto), /* Clave primaria compuesta*/
FOREIGN KEY (Codigo_Pedido) REFERENCES pedidos(Codigo),
FOREIGN KEY (Codigo_Producto) REFERENCES productos(codigo));
 
 
 
 