USE antiguedades;


INSERT INTO pais (nombre, prefijo, sufijo, moneda) VALUES
('España', '+34', 'ES', 'EU'),
('Francia', '+33', 'FR', 'EU'),
('Italia', '+39', 'IT', 'EU'),
('Alemania', '+49', 'DE', 'EU'),
('Reino Unido', '+44', 'UK', 'GB'),
('Estados Unidos', '+1', 'US', 'US'),
('Canadá', '+1', 'CA', 'CA'),
('México', '+52', 'MX', 'MX'),
('Brasil', '+55', 'BR', 'BR'),
('Argentina', '+54', 'AR', 'AR'),
('Japón', '+81', 'JP', 'JP'),
('China', '+86', 'CN', 'CN'),
('Australia', '+61', 'AU', 'AU'),
('India', '+91', 'IN', 'IN'),
('Rusia', '+7', 'RU', 'RU');


INSERT INTO inventario (id_pais, nombre_pieza, descripcion, precio, dimensiones, origen, epoca) VALUES
(1, 'Jarrón de Sevilla', 'Jarrón de cerámica pintado a mano', 1500.00, '30x20x20 cm', 'Sevilla, España', 'Siglo XIX'),
(2, 'Pintura impresionista', 'Paisaje de Monet', 250000.00, '80x60 cm', 'París, Francia', 'Siglo XIX'),
(3, 'Estatua de mármol', 'Replica de David de Miguel Ángel', 5000.00, '180x60x60 cm', 'Florencia, Italia', 'Siglo XX'),
(4, 'Reloj de cuco', 'Reloj tradicional de la Selva Negra', 800.00, '30x20x15 cm', 'Baviera, Alemania', 'Siglo XX'),
(5, 'Tetera de plata', 'Tetera de la época victoriana', 1200.00, '20x15x15 cm', 'Londres, Reino Unido', 'Siglo XIX'),
(6, 'Guitarra vintage', 'Guitarra Fender Stratocaster', 3500.00, '100x30x5 cm', 'California, Estados Unidos', 'Siglo XX'),
(7, 'Tótem nativo', 'Tótem tallado en madera', 2000.00, '200x50x50 cm', 'Columbia Británica, Canadá', 'Siglo XIX'),
(8, 'Máscara azteca', 'Máscara ceremonial de jade', 10000.00, '25x20x10 cm', 'Ciudad de México, México', 'Siglo XV'),
(9, 'Hamaca artesanal', 'Hamaca tejida a mano', 150.00, '250x150 cm', 'Bahía, Brasil', 'Siglo XXI'),
(10, 'Mate de plata', 'Mate tradicional con detalles en plata', 500.00, '15x10x10 cm', 'Buenos Aires, Argentina', 'Siglo XX'),
(11, 'Kimono de seda', 'Kimono tradicional pintado a mano', 3000.00, '150x130 cm', 'Kioto, Japón', 'Siglo XX'),
(12, 'Jarrón de la dinastía Ming', 'Jarrón de porcelana azul y blanca', 50000.00, '40x20x20 cm', 'Pekín, China', 'Siglo XV'),
(13, 'Bumerán aborigen', 'Bumerán tallado y pintado a mano', 300.00, '30x5x2 cm', 'Territorio del Norte, Australia', 'Siglo XX'),
(14, 'Tapiz de seda', 'Tapiz con motivos del Taj Mahal', 2000.00, '150x100 cm', 'Agra, India', 'Siglo XX'),
(15, 'Huevo Fabergé', 'Réplica de huevo imperial', 15000.00, '10x6x6 cm', 'San Petersburgo, Rusia', 'Siglo XX');


INSERT INTO estado_conservacion (nombre_estado) VALUES
('Excelente'),
('Muy bueno'),
('Bueno'),
('Regular'),
('Necesita restauración'),
('Restaurado'),
('Dañado'),
('Muy dañado'),
('En restauración'),
('Perdido'),
('Robado'),
('Recuperado'),
('En préstamo'),
('En exhibición'),
('En almacenamiento');



INSERT INTO inventario_has_estado_conservacion (id_inventario, id_estado_conservacion, fecha_estado) VALUES
(1, 2, '2023-01-15 10:30:00'),
(2, 1, '2023-02-20 14:45:00'),
(3, 6, '2023-03-10 09:15:00'),
(4, 3, '2023-04-05 11:00:00'),
(5, 2, '2023-05-12 16:30:00'),
(6, 4, '2023-06-18 13:20:00'),
(7, 3, '2023-07-22 10:45:00'),
(8, 1, '2023-08-30 15:00:00'),
(9, 5, '2023-09-14 12:10:00'),
(10, 2, '2023-10-25 14:30:00'),
(11, 1, '2023-11-05 09:45:00'),
(12, 6, '2023-12-19 11:20:00'),
(13, 3, '2024-01-07 10:00:00'),
(14, 4, '2024-02-14 13:15:00'),
(15, 2, '2024-03-20 15:40:00');


INSERT INTO catalogo (id_inventario, categoria) VALUES
(1, 'Cerámica'),
(2, 'Pintura'),
(3, 'Escultura'),
(4, 'Relojería'),
(5, 'Platería'),
(6, 'Instrumentos musicales'),
(7, 'Arte nativo'),
(8, 'Artefactos precolombinos'),
(9, 'Textiles'),
(10, 'Utensilios tradicionales'),
(11, 'Indumentaria'),
(12, 'Porcelana'),
(13, 'Armas y herramientas'),
(14, 'Tapicería'),
(15, 'Joyería');


INSERT INTO fotografia (id, link, informacion) VALUES
(1, 'https://example.com/fotos/jarron_sevilla.jpg', 'Vista frontal del jarrón de Sevilla'),
(2, 'https://example.com/fotos/pintura_monet.jpg', 'Paisaje impresionista de Monet'),
(3, 'https://example.com/fotos/estatua_david.jpg', 'Réplica de David en mármol'),
(4, 'https://example.com/fotos/reloj_cuco.jpg', 'Reloj de cuco tradicional alemán'),
(5, 'https://example.com/fotos/tetera_victoriana.jpg', 'Tetera de plata de época victoriana'),
(6, 'https://example.com/fotos/guitarra_fender.jpg', 'Guitarra Fender Stratocaster vintage'),
(7, 'https://example.com/fotos/totem_nativo.jpg', 'Tótem nativo canadiense'),
(8, 'https://example.com/fotos/mascara_azteca.jpg', 'Máscara ceremonial azteca de jade'),
(9, 'https://example.com/fotos/hamaca_brasil.jpg', 'Hamaca artesanal brasileña'),
(10, 'https://example.com/fotos/mate_plata.jpg', 'Mate argentino con detalles en plata'),
(11, 'https://example.com/fotos/kimono_seda.jpg', 'Kimono japonés de seda pintado a mano'),
(12, 'https://example.com/fotos/jarron_ming.jpg', 'Jarrón de la dinastía Ming'),
(13, 'https://example.com/fotos/bumeran_aborigen.jpg', 'Bumerán aborigen australiano'),
(14, 'https://example.com/fotos/tapiz_india.jpg', 'Tapiz de seda con motivos del Taj Mahal'),
(15, 'https://example.com/fotos/huevo_faberge.jpg', 'Réplica de huevo Fabergé');


INSERT INTO disponibilidad (nombre) VALUES
('En stock'),
('Agotado'),
('Próximamente'),
('Bajo pedido'),
('Edición limitada'),
('Descontinuado'),
('En tránsito'),
('Reservado'),
('En subasta'),
('En exposición'),
('En restauración'),
('Vendido'),
('Retirado'),
('En préstamo'),
('Personalizable');


INSERT INTO inventario_has_disponibilidad (id_inventario, id_disponibilidad, fecha_estado) VALUES
(1, 1, '2024-03-01 09:00:00'),
(2, 10, '2024-03-02 10:30:00'),
(3, 1, '2024-03-03 11:45:00'),
(4, 5, '2024-03-04 14:15:00'),
(5, 1, '2024-03-05 16:00:00'),
(6, 8, '2024-03-06 09:30:00'),
(7, 1, '2024-03-07 11:00:00'),
(8, 9, '2024-03-08 13:45:00'),
(9, 4, '2024-03-09 15:30:00'),
(10, 1, '2024-03-10 10:00:00'),
(11, 14, '2024-03-11 12:15:00'),
(12, 1, '2024-03-12 14:30:00'),
(13, 3, '2024-03-13 16:45:00'),
(14, 1, '2024-03-14 09:15:00'),
(15, 5, '2024-03-15 11:30:00');


INSERT INTO direccion (tipo_via, nombre_via, numero_residencia, piso_o_apt, indicacion_adicional) VALUES
('Calle', 'Gran Vía', '56', '4ºA', 'Cerca del Teatro Lope de Vega'),
('Avenue', 'Champs-Élysées', '120', '5ème étage', 'Près de l''Arc de Triomphe'),
('Via', 'del Corso', '302', 'Piano 3', 'Vicino a Piazza Venezia'),
('Straße', 'Unter den Linden', '77', '2. Stock', 'Nahe dem Brandenburger Tor'),
('Street', 'Baker', '221B', 'Flat B', 'Next to Speedy''s Cafe'),
('Avenue', '5th', '725', '25th floor', 'Near Central Park'),
('Rue', 'Sainte-Catherine', '1500', 'Suite 300', 'Près de la Place des Arts'),
('Avenida', 'Reforma', '222', 'Piso 10', 'Cerca del Ángel de la Independencia'),
('Avenida', 'Paulista', '1578', 'Andar 15', 'Próximo ao MASP'),
('Avenida', '9 de Julio', '1000', 'Piso 7', 'Cerca del Obelisco'),
('東京都', '渋谷区', '神南1-23-45', '6階', 'ハチ公前交差点近く'),
('北京市', '东城区', '王府井大街88号', '15层', '近天安门广场'),
('Street', 'George', '123', 'Level 7', 'Near Sydney Opera House'),
('Road', 'M.G.', '54', '3rd Floor', 'Near Gateway of India'),
('Улица', 'Тверская', '7', '4 этаж', 'Рядом с Кремлем');


INSERT INTO contacto (numero_celular, correo_electronico) VALUES
(34612345678, 'contact1@example.es'),
(33612345678, 'contact2@example.fr'),
(39312345678, 'contact3@example.it'),
(49151234567, 'contact4@example.de'),
(447123456789, 'contact5@example.co.uk'),
(12125551234, 'contact6@example.com'),
(14165551234, 'contact7@example.ca'),
(525512345678, 'contact8@example.mx'),
(5511987654321, 'contact9@example.com.br'),
(541112345678, 'contact10@example.com.ar'),
(81312345678, 'contact11@example.jp'),
(8612345678901, 'contact12@example.cn'),
(61412345678, 'contact13@example.com.au'),
(919876543210, 'contact14@example.in'),
(79161234567, 'contact15@example.ru');


INSERT INTO tipo_documento (nombre) VALUES
('DNI'),
('Pasaporte'),
('Licencia de conducir'),
('Tarjeta de residencia'),
('Cédula de identidad'),
('Carné de extranjería'),
('Green Card'),
('Documento Nacional de Identidad'),
('Registro Civil'),
('Carteira de Identidade'),
('マイナンバーカード'),
('居民身份证'),
('Medicare Card'),
('Aadhaar Card'),
('Внутренний паспорт');


INSERT INTO rol (nombre_rol) VALUES
('Administrador'),
('Vendedor'),
('Cliente'),
('Restaurador'),
('Curador'),
('Fotógrafo'),
('Tasador'),
('Transportista'),
('Guía de museo'),
('Investigador'),
('Conservador'),
('Archivista'),
('Gerente de marketing'),
('Asistente de ventas'),
('Gerente de logística');


INSERT INTO usuario (id_tipo_documento, id_rol, id_direccion, id_pais, id_contacto, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, profesion, docIdentidad) VALUES
(1, 2, 1, 1, 1, 'María', 'Carmen', 'García', 'López', '1985-03-15', 'Vendedora de antigüedades', 12345678),
(2, 3, 2, 2, 2, 'Jean', 'Pierre', 'Dubois', NULL, '1990-07-22', 'Coleccionista', 87654321),
(3, 5, 3, 3, 3, 'Giulia', NULL, 'Rossi', 'Bianchi', '1988-11-30', 'Curadora de museo', 56789012),
(4, 1, 4, 4, 4, 'Hans', 'Jürgen', 'Schmidt', NULL, '1982-05-10', 'Administrador de galería', 34567890),
(5, 4, 5, 5, 5, 'Elizabeth', 'Anne', 'Smith', 'Jones', '1993-09-18', 'Restauradora', 23456789),
(6, 6, 6, 6, 6, 'John', NULL, 'Brown', NULL, '1987-01-25', 'Fotógrafo de arte', 45678901),
(7, 7, 7, 7, 7, 'Marie', 'Claire', 'Tremblay', NULL, '1991-06-12', 'Tasadora', 78901234),
(8, 8, 8, 8, 8, 'Carlos', 'Alberto', 'González', 'Rodríguez', '1986-04-05', 'Transportista especializado', 89012345),
(9, 9, 9, 9, 9, 'Ana', 'Luiza', 'Silva', 'Santos', '1994-08-20', 'Guía de museo', 90123456),
(10, 10, 10, 10, 10, 'Diego', NULL, 'Martínez', 'Fernández', '1989-12-03', 'Investigador de arte', 12345670),
(11, 11, 11, 11, 11, 'Yuki', NULL, 'Tanaka', NULL, '1992-02-14', 'Conservadora', 23456781),
(12, 12, 12, 12, 12, 'Li', 'Wei', 'Zhang', NULL, '1984-10-08', 'Archivista', 34567892),
(13, 13, 13, 13, 13, 'Sarah', 'Jane', 'Johnson', NULL, '1990-03-27', 'Gerente de marketing', 45678903),
(14, 14, 14, 14, 14, 'Rahul', NULL, 'Patel', NULL, '1993-07-19', 'Asistente de ventas', 56789014),
(15, 15, 15, 15, 15, 'Olga', 'Ivanovna', 'Petrova', NULL, '1988-11-11', 'Gerente de logística', 67890125);


INSERT INTO historial_activos (id_inventario, id_usuario) VALUES
(1, 2), 
(2, 3), 
(3, 4), 
(4, 5), 
(5, 6),
(6, 7), 
(7, 8), 
(8, 9), 
(9, 10), 
(10, 11),
(11, 12), 
(12, 13), 
(13, 14), 
(14, 15), 
(15, 1);


INSERT INTO compra (fecha_vencimiento, fecha_emision) VALUES
('2024-04-15', '2024-03-15'), 
('2024-05-22', '2024-04-22'), 
('2024-06-30', '2024-05-30'),
('2024-07-10', '2024-06-10'), 
('2024-08-18', '2024-07-18'), 
('2024-09-25', '2024-08-25'),
('2024-10-12', '2024-09-12'), 
('2024-11-05', '2024-10-05'), 
('2024-12-20', '2024-11-20'),
('2025-01-03', '2024-12-03'), 
('2025-02-14', '2025-01-14'), 
('2025-03-08', '2025-02-08'),
('2025-04-27', '2025-03-27'), 
('2025-05-19', '2025-04-19'), 
('2025-06-11', '2025-05-11');


INSERT INTO pagos (metodo_pago, is_digital, id_compra) VALUES
('Tarjeta de crédito', 1, 1), 
('PayPal', 1, 2), 
('Transferencia bancaria', 1, 3),
('Efectivo', 0, 4), 
('Cheque', 0, 5), 
('Criptomoneda', 1, 6),
('Tarjeta de débito', 1, 7), 
('Apple Pay', 1, 8), 
('Google Pay', 1, 9),
('Financiamiento', 1, 10), 
('Giro postal', 0, 11), 
('Contra reembolso', 0, 12),
('Transferencia SWIFT', 1, 13), 
('WeChat Pay', 1, 14), 
('Alipay', 1, 15);


INSERT INTO historial_activos_has_compra (id_historial_activos, id_compra, cantidad, precio_total) VALUES
(1, 1, 1, 1500.00), 
(2, 2, 1, 250000.00), 
(3, 3, 1, 5000.00),
(4, 4, 1, 800.00), 
(5, 5, 1, 1200.00), 
(6, 6, 1, 3500.00),
(7, 7, 1, 2000.00), 
(8, 8, 1, 10000.00), 
(9, 9, 2, 300.00),
(10, 10, 1, 500.00), 
(11, 11, 1, 3000.00), 
(12, 12, 1, 50000.00),
(13, 13, 3, 900.00), 
(14, 14, 1, 2000.00),
(15, 15, 1, 15000.00);


INSERT INTO venta (id_historial_activos, fecha_venta) VALUES
(1, '2024-03-20'), 
(2, '2024-04-25'), 
(3, '2024-06-05'),
(4, '2024-07-15'), 
(5, '2024-08-22'), 
(6, '2024-09-30'),
(7, '2024-10-18'), 
(8, '2024-11-10'), 
(9, '2024-12-25'),
(10, '2025-01-08'), 
(11, '2025-02-19'), 
(12, '2025-03-15'),
(13, '2025-04-30'), 
(14, '2025-05-25'), 
(15, '2025-06-18');


INSERT INTO estado_articulo (nombre) VALUES
('Nuevo'), 
('Como nuevo'), 
('Usado - Excelente'), 
('Usado - Muy bueno'),
('Usado - Bueno'), 
('Usado - Aceptable'), 
('Para restaurar'), 
('Partes o no funciona'),
('Réplica'),
('Antiguo'), 
('Vintage'), 
('Coleccionable'),
('Edición limitada'), 
('Firmado por el artista'), 
('Certificado de autenticidad');


INSERT INTO venta_has_estado_articulo (id_venta, id_estado_articulo, fecha_estado) VALUES
(1, 3, '2024-03-20'), 
(2, 1, '2024-04-25'), 
(3, 6, '2024-06-05'),
(4, 5, '2024-07-15'), 
(5, 2, '2024-08-22'), 
(6, 11, '2024-09-30'),
(7, 10, '2024-10-18'), 
(8, 12, '2024-11-10'), 
(9, 4, '2024-12-25'),
(10, 13, '2025-01-08'), 
(11, 14, '2025-02-19'), 
(12, 15, '2025-03-15'),
(13, 7, '2025-04-30'), 
(14, 9, '2025-05-25'), 
(15, 8, '2025-06-18');


INSERT INTO region (id_pais, nombre) VALUES
(1, 'Andalucía'), 
(2, 'Île-de-France'), 
(3, 'Lazio'),
(4, 'Bavaria'), 
(5, 'Greater London'), 
(6, 'California'),
(7, 'Quebec'), 
(8, 'Ciudad de México'), 
(9, 'São Paulo'),
(10, 'Buenos Aires'), 
(11, 'Kanto'), 
(12, 'Beijing'),
(13, 'New South Wales'), 
(14, 'Maharashtra'), 
(15, 'Moscow Oblast');


INSERT INTO ciudad (id_region, nombre) VALUES
(1, 'Sevilla'), 
(2, 'Paris'), 
(3, 'Rome'),
(4, 'Munich'), 
(5, 'London'), 
(6, 'Los Angeles'),
(7, 'Montreal'), 
(8, 'Mexico City'), 
(9, 'São Paulo'),
(10, 'Buenos Aires'),
(11, 'Tokyo'), 
(12, 'Beijing'),
(13, 'Sydney'), 
(14, 'Mumbai'), 
(15, 'Moscow');


INSERT INTO codigo_postal (id_ciudad, codigo) VALUES
(1, '41001'), 
(2, '75001'), 
(3, '00100'),
(4, '80331'), 
(5, 'SW1A 1AA'), 
(6, '90001'),
(7, 'H2X 1Y6'), 
(8, '06000'), 
(9, '01000-000'),
(10, 'C1001AAB'), 
(11, '100-0001'), 
(12, '100000'),
(13, '2000'), 
(14, '400001'), 
(15, '101000');