-- Poblar la tabla CLIENTE
INSERT INTO CLIENTE (Dni, Nombre, Apellido, Sexo, Nacionalidad, FechaNacimiento, Telefono, CorreoElectronico, Ciudad, NombreCalle, NroCalle)
VALUES
('30456789', 'Juan', 'Pérez', 'M', 'Argentino', '1985-07-15', '381-1234567', 'juan.perez@mail.com', 'San Miguel de Tucumán', 'Rivadavia', '1234'),
('29876543', 'María', 'González', 'F', 'Argentina', '1990-03-22', '381-7654321', 'maria.gonzalez@mail.com', 'Yerba Buena', 'San Martín', '5678'),
('31234567', 'Carlos', 'Rodríguez', 'M', 'Argentino', '1988-11-10', '381-1122334', 'carlos.rodriguez@mail.com', 'San Miguel de Tucumán', 'Belgrano', '9101'),
('32123456', 'Ana', 'Fernández', 'F', 'Argentina', '1975-01-30', '381-2233445', 'ana.fernandez@mail.com', 'San Miguel de Tucumán', 'Sarmiento', '1112'),
('30543210', 'Marta', 'López', 'F', 'Argentina', '1992-09-05', '381-3344556', 'marta.lopez@mail.com', 'Tafí Viejo', 'Av. Mitre', '1314');
INSERT INTO cliente (Dni, Nombre, Apellido, Sexo, Nacionalidad, FechaNacimiento, Telefono, CorreoElectronico, Ciudad, NombreCalle, NroCalle)
VALUES
('12345678', 'Juan', 'Pérez', 'Masculino', 'Argentina', '1990-05-01', '381-1234567', 'juanperez@mail.com', 'San Miguel de Tucumán', 'Calle Ficticia', '123'),
('87654321', 'María', 'López', 'Femenino', 'Argentina', '1985-07-15', '381-7654321', 'maria@mail.com', 'San Miguel de Tucumán', 'Calle Real', '456');


-- Poblar la tabla SPONSOR
INSERT INTO SPONSOR (CUIT, Nombre, CorreoElectronico, Telefono)
VALUES
('20345678901', 'Empresa ABC', 'contacto@empresaabc.com', '+54 381 1234567'),
('20398765432', 'Global Solutions', 'info@globalsolutions.com', '+54 381 7654321'),
('20312345678', 'Innovatech', 'support@innovatech.com', '+54 381 3456789'),
('20365478901', 'TechCorp', 'sales@techcorp.com', '+54 381 4567890'),
('20378901234', 'Green Ventures', 'hello@greenventures.com', '+54 381 5678901');
INSERT INTO sponsor (CUIT, Nombre, CorreoElectronico, Telefono) VALUES
('30-44444444-4', 'Sponsor Música', 'musica@sponsor.com', '381-1234567'),
('30-55555555-5', 'Sponsor Tech', 'tech@sponsor.com', '381-7654321'),
('30-66666666-6', 'Sponsor Deportes', 'deportes@sponsor.com', '381-5678910');


-- Poblar la tabla INTERMEDIARIO 
INSERT INTO INTERMEDIARIO (CUIT, Nombre, Telefono, CorreoElectronico, SitioWeb)
VALUES
('30711016054', 'Bureau', '+54 381 4216042', 'gerente@tucumanbureau.com.ar', 'www.bureautucuman.com.ar');

-- Poblar la tabla EVENTO
INSERT INTO EVENTO (Nombre, Fecha_Inicio, Fecha_Fin, INTERMEDIARIO_CUIT)
VALUES
('Congreso Internacional de Tecnología', '2024-05-15', '2024-05-20', '30711016054'),
('Feria del Libro', '2024-06-01', '2024-06-07', NULL),
('Expo Agroindustria', '2024-07-10', '2024-07-14', NULL),
('Jornadas de Energías Renovables', '2024-08-25', '2024-08-27', '30711016054'),
('Encuentro Nacional de Emprendedores', '2024-09-15', '2024-09-17', '30711016054'),
('Desafío MTB Aconquija', '2024-04-15', '2024-04-18', '30711016054');
INSERT INTO EVENTO (Nombre, Fecha_Inicio, Fecha_Fin, INTERMEDIARIO_CUIT)
VALUES
('Desafío MTB en Tafí del Valle', '2024-08-15', '2024-08-15', NULL);
INSERT INTO evento (Nombre, Fecha_Inicio, Fecha_Fin, INTERMEDIARIO_CUIT) VALUES
('Festival de Música', '2024-12-10', '2024-12-12', '20-11111111-1'),
('Expo Tecnología', '2024-12-15', '2024-12-17', '20-22222222-2'),
('Maratón Anual', '2024-12-20', '2024-12-20', '20-33333333-3');


-- Poblar la tabla Paquete
INSERT INTO paquete (IdPAQUETE, Nombre, Descripcion, IdEVENTO) VALUES
(190, 'Paquete Cultural', 'Incluye eventos musicales y tecnológicos', 8),
(200, 'Paquete Deportivo', 'Incluye maratones y deportes extremos', 10);

-- Poblar la tabla Patrocina
INSERT INTO patrocina (CUIT_sponsor, IdEVENTO) VALUES
('30-44444444-4', 8), -- Sponsor para el Festival de Música
('30-55555555-5', 9), -- Sponsor para la Expo Tecnología
('30-66666666-6', 10); -- Sponsor para la Maratón Anual
INSERT INTO patrocina (CUIT_sponsor, IdEVENTO) VALUES
('30-55555555-5', 8); -- Sponsor para la Expo Tecnología

-- Poblar la tabla CIRCUITO
INSERT INTO CIRCUITO (Nombre, Descripcion)
VALUES
('Circuito Yungas', 'Este circuito atraviesa selvas subtropicales con senderos, miradores y reservas naturales.'),
('Circuito Valle Calchaquí', 'Recorrido por paisajes montañosos, Tafí del Valle y las Ruinas de Quilmes.'),
('Circuito Valle de Choromoro', 'Incluye San Pedro de Colalao, esculturas del Indio y turismo rural.'),
('Circuito Sur', 'Explora Simoca y Concepción con su historia cultural y religiosa.'),
('Circuito Histórico de San Miguel de Tucumán', 'Incluye visitas a la Casa Histórica de la Independencia, la Plaza Independencia, la Catedral de Nuestra Señora de la Encarnación, y la Basílica de Nuestra Señora de la Merced.'),
('Circuito Norte', 'Incluye diversos atractivos naturales, como Tafí del Valle, un popular destino turístico conocido por su belleza natural, y El Mollar, donde se encuentra la Laguna de los Patos');
INSERT INTO CIRCUITO (IdCIRCUITO, Nombre, Descripcion)
VALUES
(20,'Circuito Histórico de San Miguel de Tucumán', 'Incluye visitas a la Casa Histórica de la Independencia, la Plaza Independencia, la Catedral de Nuestra Señora de la Encarnación, y la Basílica de Nuestra Señora de la Merced.'),
(6,'Circuito Norte', 'Incluye diversos atractivos naturales, como Tafí del Valle, un popular destino turístico conocido por su belleza natural, y El Mollar, donde se encuentra la Laguna de los Patos');


-- Poblar la tabla LUGAR
INSERT INTO LUGAR (Nombre, Departamento, Localidad, NombreCalle, NroCalle, Coordenadas_Gps, IdEVENTO, IdCIRCUITO)
VALUES
-- Lugares en San Miguel de Tucumáneventoevento
('Plaza Independencia', 'Capital', 'San Miguel de Tucumán', 'San Martín', '240', '-26.8341, -65.2042', 5, 20),
('Casa Histórica de la Independencia', 'Capital', 'San Miguel de Tucumán', 'Congreso', '151', '-26.8361, -65.2082', 0, 20),
-- Lugares en Tafí del Valle
('Museo Jesuítico La Banda', 'Tafí del Valle', 'Tafí del Valle', 'Av. Gobernador Campero', 's/n', '-26.8605, -65.7092', 0, 2),
('Dique La Angostura', 'Tafí del Valle', 'El Mollar', NULL, NULL, '-26.9061, -65.7164', 0, 2),
-- Lugares en el Valle Calchaquí
('Ruinas de Quilmes', 'Colalao del Valle', 'Amaicha del Valle', NULL, NULL, '-26.4786, -66.0178', 3, 3),
('Museo Pachamama', 'Colalao del Valle', 'Amaicha del Valle', 'Ruta Nacional 40', 'km 4380', '-26.5614, -65.9252', 0, 3),
-- Otros lugares destacados
('Feria de Simoca', 'Simoca', 'Simoca', 'Av. Mitre', '101', '-27.2632, -65.3529', 0, 4),
('Reserva Experimental Horco Molle', 'Yerba Buena', 'Yerba Buena', 'Camino a Villa Nougués', 's/n', '-26.7838, -65.3233', 0, 1),
('Cordillera de Aconquija', 'Tucumán', 'El Mollar', 'Ruta Provincial 307', 'Km 52', '27.0178° S, 65.5053° W', 6, 6),
-- Lugar que no pertenece a un circuito
('Tafí del Valle', 'Tucumán', 'Tafí del Valle', 'Ruta Nacional 38', 'Km 54', '26.9989° S, 65.7892° W', 7, 0);

-- Poblar la tabla RESTAURANTE
INSERT INTO RESTAURANTE (Nombre, Direccion, Telefono, Tipo_Comida, Tipo_Bebida, Carac_Especial, IdLUGAR)
VALUES
('Casa Criolla', 'Av. Mate de Luna 3150', '381-4578309', 'Regional', 'Vinos', 'Ambiente familiar', 1),
('La Pizzada', 'San Martín 345', '381-4231234', 'Pizzas', 'Cervezas artesanales', 'Horno de leña', 2),
('La Casona', '25 de Mayo 758, San Miguel de Tucumán', '381-4872341', 'Tradicional', 'Malbec', 'Carnes a la leña', 3),
('Restó 9', 'Av. Aconquija 1432', '381-4909321', 'Gourmet', 'Cócteles', 'Vista panorámica', 4),
('Los Nogales', ' Ruta 307, El Mollar', '381-4239412', 'Tradicional', 'Tragos', 'Jardín exterior', 5);
INSERT INTO RESTAURANTE (Nombre, Direccion, Telefono, Tipo_Comida, Tipo_Bebida, Carac_Especial, IdLUGAR)
VALUES
('La Casa de las Empanadas', 'Av. Alem 1234, San Miguel de Tucumán', '381-4556789', 'Empanadas', 'Vino blanco', 'Ambiente tradicional', 0),
('Humitas del Valle', 'Calle 9 de Julio 245, San Miguel de Tucumán', '381-4367890', 'Humitas y Tamales', 'Malbec', 'Comida típica regional', 0),
('La Empanada de Oro', 'Calle La Prensa 456, Yerba Buena', '381-4435678', 'Empanadas y carnes', 'Cervezas artesanales', 'Ambiente rústico', 0),
('Sabores del Norte', 'Calle Rivadavia 789, San Miguel de Tucumán', '381-4301234', 'Humitas, empanadas y locro', 'Cócteles', 'Decoración colonial', 0);

-- Poblar la tabla Alojamiento
INSERT INTO alojamiento (Nombre, Tipo, Direccion, Horario_Entrada, Horario_Salida, Estrellas, NroPiso, NroHabitacion, Tipo_Servicio, Telefono, IdLUGAR)
VALUES
('Sheraton Tucumán Hotel', 'Hotel', 'Av. Soldati 440, San Miguel de Tucumán', '2024-11-24 14:00:00', '2024-11-25 11:00:00', 5, 8, 120, 'Piscina, SPA', '381-4567890', 201),
('Hotel Garden', 'Hotel', 'Av. Sarmiento 789, Yerba Buena', '2024-11-24 15:00:00', '2024-11-25 12:00:00', 5, 12, 200, 'Restaurante Gourmet', '381-9876543', 202),
('Hostería Tafí', 'Hostería', 'Av. Belgrano 500, Tafí del Valle', '2024-11-24 13:00:00', '2024-11-25 10:00:00', 3, 2, 25, 'Desayuno incluido', '381-7654321', 203),
('Posada La Soñada', 'Posada', 'Ruta 307, El Mollar', '2024-11-24 16:00:00', '2024-11-25 10:00:00', 2, 1, 10, 'Estacionamiento gratuito', '381-1112222', 204),
('Cabañas del Valle', 'Cabañas', 'Camino del Valle, Tafí del Valle', '2024-11-24 14:00:00', '2024-11-25 11:00:00', 3, 1, 15, 'Parrilla, WiFi', '381-3334444', 205);
INSERT INTO alojamiento (Nombre, Tipo, Direccion, Horario_Entrada, Horario_Salida, Estrellas, NroPiso, NroHabitacion, Tipo_Servicio, Telefono, IdLUGAR)
VALUES 
('Hotel Tucumán', 'Hotel', 'Av. Rivadavia 123', '2024-12-07 14:00:00', '2024-12-10 10:00:00', 4, 2, 101, 'Desayuno incluido', '381-5555555', 1),
('Hostel Sol', 'Hostel', 'Av. Belgrano 456', '2024-12-07 12:00:00', '2024-12-14 12:00:00', 2, 1, 205, 'Sin desayuno', '381-6666666', 2);

-- Poblar la tabla alojamiento_proveedor
INSERT INTO alojamiento_proveedor (IdALOJAMIENTO, PROVEEDOR_CUIT)
VALUES 
(6, '20-12345678-9'),
(7, '20-23456789-0');
INSERT INTO alojamiento_proveedor (IdALOJAMIENTO, PROVEEDOR_CUIT)
VALUES 
(2, '20-23456789-0'); -- CUIT DE PROVEEDOR ALOJAMIENTO 2

-- Poblar la tabla Reserva
INSERT INTO reserva (IdALOJAMIENTO, IdCLIENTE, FechaReserva)
VALUES
(6, 6, '2024-12-08'),  -- Cliente 6 reserva en el Hotel Tucumán el 8 de diciembre
(7, 7, '2024-12-09');  -- Cliente 7 reserva en el Hostel Sol el 9 de diciembre
INSERT INTO reserva (IdALOJAMIENTO, IdCLIENTE, FechaReserva)
VALUES
(7, 2, '2024-12-25');  -- Cliente 2 reserva en el Hostel Sol el 25 de diciembre

-- Poblar la tabla Proveedor
INSERT INTO proveedor (CUIT, Nombre, Tipo, Telefono, CorreoElectronico, INTERMEDIARIO_CUIT)
VALUES 
('20-12345678-9', 'Proveedor Alojamiento 1', 'Hotel', '381-1112222', 'contacto@hotel1.com', NULL),
('20-23456789-0', 'Proveedor Alojamiento 2', 'Hostel', '381-2223333', 'contacto@hostel2.com', NULL);

-- Poblar la tabla Galeria
INSERT INTO GALERIA (Nombre, IdEVENTO) VALUES
('Galería Yungas', 0),  -- NO Relacionada con UN Evento
('Galería Calchaquí', 0), -- NO Relacionada con UN Evento
('Galería Choromoro', 0); --  NO Relacionada con UN Evento

-- Poblar la tabla Imagen
INSERT INTO IMAGEN (Nombre, Tipo, IdGALERIA) VALUES
('yungas1.jpg', 'jpg', 1),
('yungas2.png', 'png', 1),
('calchaqui1.jpg', 'jpg', 2),
('choromoro1.png', 'png', 3);

-- Poblar la tabla Galeria_Circuito
INSERT INTO GALERIA_CIRCUITO (IdGALERIA, IdCIRCUITO) VALUES
(1, 1), -- Galería Yungas con Circuito Yungas
(2, 2), -- Galería Calchaquí con Circuito Valle Calchaquí
(3, 3); -- Galería Choromoro con Circuito Valle de Choromoro

--
-- Insertar planes de contingencia
INSERT INTO plan_contigencia (Nombre, IdPaquete)
VALUES
('Plan de Contingencia para Paquete Cultural', 190),  -- Asociado al Paquete Cultural
('Plan de Contingencia para Paquete Deportivo', 200);  -- Asociado al Paquete Deportivo

-- Insertar en tipo_cliente (relacionando planes de contingencia, clientes y eventos)
INSERT INTO tipo_cliente (Nombre, IdCLIENTE, IdPLAN_CONTIGENCIA, IdEVENTO)
VALUES
('Estudiante', 3, 1, 8),  -- Cliente con IdCliente=3 tiene un Plan Cultural asociado al Evento 8
('VIP', 5, 1, 8),  -- Cliente con IdCliente=5 tiene un Plan Cultural asociado al Evento 1
('Jubilado', 2, 2, 5);  -- Cliente con IdCliente=2 tiene un Plan Deportivo asociado al Evento 5


-- Insertar seguros de empresas de turismo
INSERT INTO seguro (CUIT, Nombre, Tipo, Cobertura, Telefono, CorreoElectronico, SitioWeb, IdTIPO_CLIENTE, IdCLIENTE)
VALUES
('20-12345678-9', 'Turismo Seguro S.A.', 'Salud', 'Cobertura de emergencias médicas durante el viaje', '381-5551234', 'contacto@turismoseguro.com', 'www.turismoseguro.com', 1, 3),
('20-23456789-0', 'Aventura Viajes Seguros', 'Cancelación', 'Cobertura en caso de cancelación de viaje', '381-5555678', 'info@aventuraviajess.com', 'www.aventuraviajess.com', 2, 5),
('20-34567890-1', 'Protección Viajera', 'Equipaje', 'Cobertura de pérdida o robo de equipaje', '381-5556789', 'soporte@proteccionviajera.com', 'www.proteccionviajera.com', 3, 2);







