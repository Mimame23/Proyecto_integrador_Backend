-- aqui empieza usuarios
INSERT INTO `pattsberry`.`usuarios` (`idusuarios`,`Nombre`, `Contraseña`, `Correo`, `Telefono`,`Administrador`)
VALUES (1,'Alon Talon','Contraseña123.','+52 5561803741','alonszo07@gmail.com',0);
INSERT INTO `pattsberry`.`usuarios` (`idusuarios`,`Nombre`, `Contraseña`, `Correo`, `Telefono`,`Administrador`)
VALUES (2,'Carlos Verum','Contraseña123.','+52 3313312774','vsgrimoire@gmail.com',False);
INSERT INTO `pattsberry`.`usuarios` (`idusuarios`,`Nombre`, `Contraseña`, `Correo`, `Telefono`,`Administrador`)
VALUES (3,'Gaby Pattitas suaves','Postreybebida123.','+52 2225804248','gcortespatino@gmail.com',False);
INSERT INTO `pattsberry`.`usuarios` (`idusuarios`,`Nombre`, `Contraseña`, `Correo`, `Telefono`,`Administrador`)
VALUES (4,'Juan Michael Horizon','Mewtwo123.','+52 5502035489','horizonJuan@gmail.com',False);
INSERT INTO `pattsberry`.`usuarios` (`idusuarios`,`Nombre`, `Contraseña`, `Correo`, `Telefono`,`Administrador`)
VALUES (5,'Tannya Miyabi guayabi','Miya123.','+52 5531728565','guayabicannabi@gmail.com',False);

-- aqui empieza datosEntrega
INSERT INTO `pattsberry`.`datosdeentrega` (`noOrden`,`calle`, `colonial`, `municipio`, `estado`,`codigopostal`,`usuarios_idusuarios`)
VALUES (1,'RioYaqui00', 'San Manuel','Puebla','Puebla','72570',1);
INSERT INTO `pattsberry`.`datosdeentrega` (`noOrden`,`calle`, `colonial`, `municipio`, `estado`,`codigopostal`,`usuarios_idusuarios`)
VALUES (2,'RioYaqui01', 'San Manuel','Puebla','Puebla','72570',2);
INSERT INTO `pattsberry`.`datosdeentrega` (`noOrden`,`calle`, `colonial`, `municipio`, `estado`,`codigopostal`,`usuarios_idusuarios`)
VALUES (3,'RioYaqui02', 'San Manuel','Puebla','Puebla','72570',3);
INSERT INTO `pattsberry`.`datosdeentrega` (`noOrden`,`calle`, `colonial`, `municipio`, `estado`,`codigopostal`,`usuarios_idusuarios`)
VALUES (4,'RioYaqui03', 'San Manuel','Puebla','Puebla','72570',4);
INSERT INTO `pattsberry`.`datosdeentrega` (`noOrden`,`calle`, `colonial`, `municipio`, `estado`,`codigopostal`,`usuarios_idusuarios`)
VALUES (5,'RioYaqui04', 'San Manuel','Puebla','Puebla','72570',5);

-- aqui empieza productos
INSERT INTO `pattsberry`.`productos` (`idProductos`,`Nombre`, `Descripcion`, `Imagen`, `precio`,`Tamaño`,`SKU`,`Pedidos_IdPedido`,`Pedidos_usuarios_idusuarios`)
VALUES (1,'Aguacate', 'Dos aguacates cosidos','aguacate.jpg',300,'15 Cm','AM0001',1,1);
INSERT INTO `pattsberry`.`productos` (`idProductos`,`Nombre`, `Descripcion`, `Imagen`, `precio`,`Tamaño`,`SKU`,`Pedidos_IdPedido`,`Pedidos_usuarios_idusuarios`)
VALUES (2,'Spyderman', 'Un spyderman cosido','Spiderman.jpg',200,'15 Cm','AM0002',2,2);
INSERT INTO `pattsberry`.`productos` (`idProductos`,`Nombre`, `Descripcion`, `Imagen`, `precio`,`Tamaño`,`SKU`,`Pedidos_IdPedido`,`Pedidos_usuarios_idusuarios`)
VALUES (3,'Libreta pink floyd', 'Libreta cosida rayada de 100 hojas','pinkfloyd.jpg',150,'media carta','LP0001',3,3);
INSERT INTO `pattsberry`.`productos` (`idProductos`,`Nombre`, `Descripcion`, `Imagen`, `precio`,`Tamaño`,`SKU`,`Pedidos_IdPedido`,`Pedidos_usuarios_idusuarios`)
VALUES (4,'Libreta gato alicia', 'Libreta cosida rayada de 100 hojas','gatoalicia.jpg',150,'media carta','LP0002',4,4);
INSERT INTO `pattsberry`.`productos` (`idProductos`,`Nombre`, `Descripcion`, `Imagen`, `precio`,`Tamaño`,`SKU`,`Pedidos_IdPedido`,`Pedidos_usuarios_idusuarios`)
VALUES (5,'Monkey', 'Un changuito cosido','Monkey.jpg',200,'15 Cm','AM0003',5,5);

-- aqui empieza pedidos
INSERT INTO `pattsberry`.`pedidos` (`idPedido`,`cantidad`, `total`, `usuarios_idusuarios`)
VALUES (1,2,600,1);
INSERT INTO `pattsberry`.`pedidos` (`idPedido`,`cantidad`, `total`, `usuarios_idusuarios`)
VALUES (2,4,800,2);
INSERT INTO `pattsberry`.`pedidos` (`idPedido`,`cantidad`, `total`, `usuarios_idusuarios`)
VALUES (3,1,150,3);
INSERT INTO `pattsberry`.`pedidos` (`idPedido`,`cantidad`, `total`, `usuarios_idusuarios`)
VALUES (4,3,450,4);
INSERT INTO `pattsberry`.`pedidos` (`idPedido`,`cantidad`, `total`, `usuarios_idusuarios`)
VALUES (5,2,400,5);