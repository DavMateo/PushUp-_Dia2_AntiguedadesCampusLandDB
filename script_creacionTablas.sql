DROP DATABASE IF EXISTS antiguedades;
CREATE DATABASE IF NOT EXISTS antiguedades;
USE antiguedades;



CREATE TABLE IF NOT EXISTS pais(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50) NOT NULL,
	prefijo CHAR(4) NOT NULL,
	sufijo CHAR(5) NOT NULL,
	moneda CHAR(2) NOT NULL,
	PRIMARY KEY pk_pais(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE
);


CREATE TABLE IF NOT EXISTS inventario(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_pais INT UNSIGNED NOT NULL,
	nombre_pieza VARCHAR(100) NOT NULL,
	descripcion TEXT NULL,
	precio DOUBLE(10,2) UNSIGNED NOT NULL,
	dimensiones VARCHAR(25) NOT NULL,
	origen VARCHAR(255) NOT NULL,
	epoca VARCHAR(25) NOT NULL,
	PRIMARY KEY pk_inventario(id, id_pais),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	UNIQUE INDEX id_pais_UNIQUE(id_pais ASC) VISIBLE,
	CONSTRAINT fk_inventario_id_pais FOREIGN KEY(id_pais) REFERENCES pais(id)
);


CREATE TABLE IF NOT EXISTS estado_conservacion(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nombre_estado VARCHAR(45) NOT NULL,
	PRIMARY KEY pk_estado_conservacion(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE
);


CREATE TABLE IF NOT EXISTS inventario_has_estado_conservacion(
	id_inventario INT UNSIGNED NOT NULL,
	id_estado_conservacion INT UNSIGNED NOT NULL,
	fecha_estado DATETIME NOT NULL,
	PRIMARY KEY pk_inventario_has_estado_conservacion(id_inventario, id_estado_conservacion),
	INDEX fk_inventario_has_estado_conservacion_id_estado_conservacio_idx(id_estado_conservacion ASC) VISIBLE,
	UNIQUE INDEX id_inventario_UNIQUE(id_inventario ASC) VISIBLE,
	UNIQUE INDEX id_estado_conservacion_UNIQUE(id_estado_conservacion ASC) VISIBLE,
	CONSTRAINT fk_inventario_has_estado_conservacion_id_inventario FOREIGN KEY(id_inventario) REFERENCES inventario(id),
	CONSTRAINT fk_inventario_has_estado_conservacion_id_estado_conservacion FOREIGN KEY(id_estado_conservacion) REFERENCES estado_conservacion(id)
);


CREATE TABLE IF NOT EXISTS catalogo(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_inventario INT UNSIGNED NOT NULL,
	categoria VARCHAR(45) NOT NULL,
	PRIMARY KEY pk_catalogo(id, id_inventario),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	INDEX fk_catalogo_id_inventario_idx(id_inventario ASC) VISIBLE,
	UNIQUE INDEX id_inventario_UNIQUE(id_inventario ASC) VISIBLE,
	CONSTRAINT fk_catalogo_id_inventario FOREIGN KEY(id_inventario) REFERENCES inventario(id)
);


CREATE TABLE IF NOT EXISTS fotografia(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	link VARCHAR(255) NOT NULL,
	informacion VARCHAR(255) NULL,
	PRIMARY KEY pk_fotografia(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	CONSTRAINT fk_fotografia_id_inventario FOREIGN KEY(id) REFERENCES inventario(id)
);


CREATE TABLE IF NOT EXISTS disponibilidad(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	PRIMARY KEY pk_disponibilidad(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE
);


CREATE TABLE IF NOT EXISTS inventario_has_disponibilidad(
	id_inventario INT UNSIGNED NOT NULL,
	id_disponibilidad INT UNSIGNED NOT NULL,
	fecha_estado DATETIME NOT NULL,
	PRIMARY KEY pk_inventario_has_disponibilidad(id_inventario, id_disponibilidad),
	INDEX fk_inventario_has_disponibilidad_id_disponibilidad_idx(id_disponibilidad ASC) VISIBLE,
	UNIQUE INDEX id_inventario_UNIQUE(id_inventario ASC) VISIBLE,
	UNIQUE INDEX id_disponibilidad_UNIQUE(id_disponibilidad ASC) VISIBLE,
	CONSTRAINT fk_inventario_has_disponibilidad_id_inventario FOREIGN KEY(id_inventario) REFERENCES inventario(id),
	CONSTRAINT fk_inventario_has_disponibilidad_id_disponibilidad FOREIGN KEY(id_disponibilidad) REFERENCES disponibilidad(id)
);


CREATE TABLE IF NOT EXISTS direccion(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	tipo_via VARCHAR(40) NOT NULL,
	nombre_via VARCHAR(100) NOT NULL,
	numero_residencia VARCHAR(20) NOT NULL,
	piso_o_apt VARCHAR(20) NOT NULL,
	indicacion_adicional VARCHAR(255) NOT NULL,
	PRIMARY KEY pk_direccion(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE
);


CREATE TABLE IF NOT EXISTS contacto(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	numero_celular BIGINT UNSIGNED NOT NULL,
	correo_electronico VARCHAR(100) NOT NULL,
	PRIMARY KEY pk_contacto(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE
);


CREATE TABLE IF NOT EXISTS tipo_documento(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	PRIMARY KEY pk_tipo_documento(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE
);


CREATE TABLE IF NOT EXISTS rol(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nombre_rol VARCHAR(60) NOT NULL,
	PRIMARY KEY pk_rol(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE
);


CREATE TABLE IF NOT EXISTS usuario(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_tipo_documento INT UNSIGNED NOT NULL,
	id_rol INT UNSIGNED NOT NULL,
	id_direccion INT UNSIGNED NOT NULL,
	id_pais INT UNSIGNED NOT NULL,
	id_contacto INT UNSIGNED NOT NULL,
	primer_nombre VARCHAR(20) NOT NULL,
	segundo_nombre VARCHAR(20) NULL,
	primer_apellido VARCHAR(20) NOT NULL,
	segundo_apellido VARCHAR(20) NULL,
	fecha_nacimiento DATETIME NOT NULL,
	profesion VARCHAR(45) NOT NULL,
	docIdentidad BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY pk_usuario(id, id_tipo_documento, id_rol, id_direccion, id_pais, id_contacto),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	UNIQUE INDEX id_tipo_documento_UNIQUE(id_tipo_documento ASC) VISIBLE,
	UNIQUE INDEX id_rol_UNIQUE(id_rol ASC) VISIBLE,
	UNIQUE INDEX id_pais_UNIQUE(id_pais ASC) VISIBLE,
	UNIQUE INDEX id_direccion_UNIQUE(id_direccion ASC) VISIBLE,
	UNIQUE INDEX docIdentidad_UNIQUE(docIdentidad ASC) VISIBLE,
	UNIQUE INDEX id_contacto_UNIQUE(id_contacto ASC) VISIBLE,
	CONSTRAINT fk_usuario_id_direccion FOREIGN KEY(id_direccion) REFERENCES direccion(id),
	CONSTRAINT fk_usuario_id_contacto FOREIGN KEY(id_contacto) REFERENCES contacto(id),
	CONSTRAINT fk_usuario_id_tipo_documento FOREIGN KEY(id_tipo_documento) REFERENCES tipo_documento(id),
	CONSTRAINT fk_usuario_id_rol FOREIGN KEY(id_rol) REFERENCES rol(id),
	CONSTRAINT fk_usuario_id_pais FOREIGN KEY(id_pais) REFERENCES pais(id)
);


CREATE TABLE IF NOT EXISTS historial_activos(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_inventario INT UNSIGNED NOT NULL,
	id_usuario INT UNSIGNED NOT NULL,
	PRIMARY KEY pk_historial_activos(id, id_inventario, id_usuario),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	UNIQUE INDEX id_inventario_UNIQUE(id_inventario ASC) VISIBLE,
	UNIQUE INDEX id_usuario_UNIQUE(id_usuario ASC) VISIBLE,
	CONSTRAINT fk_historial_activos_id_inventario FOREIGN KEY(id_inventario) REFERENCES inventario(id),
	CONSTRAINT fk_historial_activos_id_usuario FOREIGN KEY(id_usuario) REFERENCES usuario(id)
);


CREATE TABLE IF NOT EXISTS compra(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  fecha_vencimiento DATETIME NOT NULL,
  fecha_emision DATETIME NOT NULL,
  PRIMARY KEY pk_compra(id),
  UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE
);


CREATE TABLE IF NOT EXISTS pagos(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	metodo_pago VARCHAR(30) NOT NULL,
	is_digital TINYINT UNSIGNED NOT NULL,
	id_compra INT UNSIGNED NOT NULL,
	PRIMARY KEY pk_pagos(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	CONSTRAINT fk_pagos_id_compra FOREIGN KEY(id_compra) REFERENCES compra(id)
);


CREATE TABLE IF NOT EXISTS historial_activos_has_compra(
	id_historial_activos INT UNSIGNED NOT NULL,
	id_compra INT UNSIGNED NOT NULL,
	cantidad SMALLINT UNSIGNED NOT NULL,
	precio_total DOUBLE(10,2) UNSIGNED NOT NULL,
	PRIMARY KEY pk_historial_activos_has_compra(id_historial_activos, id_compra),
	UNIQUE INDEX id_historial_activos_UNIQUE(id_historial_activos ASC) VISIBLE,
	UNIQUE INDEX id_compra_UNIQUE(id_compra ASC) VISIBLE,
	CONSTRAINT fk_historial_activos_has_compra_id_historial_activos FOREIGN KEY(id_historial_activos) REFERENCES historial_activos(id),
	CONSTRAINT fk_historial_activos_has_compra_id_compra FOREIGN KEY(id_compra) REFERENCES compra(id)
);


CREATE TABLE IF NOT EXISTS venta(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_historial_activos INT UNSIGNED NOT NULL,
	fecha_venta DATETIME NOT NULL, -- Agrega un campo para registrar la fecha de venta
	PRIMARY KEY pk_venta(id, id_historial_activos),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	UNIQUE INDEX id_historial_activos_UNIQUE(id_historial_activos ASC) VISIBLE,
	CONSTRAINT fk_venta_id_historial_activos FOREIGN KEY(id_historial_activos) REFERENCES historial_activos(id)
);


CREATE TABLE IF NOT EXISTS estado_articulo(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(25) NOT NULL,
	PRIMARY KEY pk_estado_articulo(id),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE
);


CREATE TABLE IF NOT EXISTS venta_has_estado_articulo(
	id_venta INT UNSIGNED NOT NULL,
	id_estado_articulo INT UNSIGNED NOT NULL,
	fecha_estado DATETIME NOT NULL,
	PRIMARY KEY pk_venta_has_estado_articulo(id_venta, id_estado_articulo),
	UNIQUE INDEX id_venta_UNIQUE(id_venta ASC) VISIBLE,
	UNIQUE INDEX id_estado_articulo_UNIQUE(id_estado_articulo ASC) VISIBLE,
	CONSTRAINT fk_venta_has_estado_articulo_id_venta FOREIGN KEY(id_venta) REFERENCES venta(id),
	CONSTRAINT fk_venta_has_estado_articulo_id_estado_articulo FOREIGN KEY(id_estado_articulo) REFERENCES estado_articulo(id)
);


CREATE TABLE IF NOT EXISTS region(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_pais INT UNSIGNED NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY pk_region(id, id_pais),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	UNIQUE INDEX id_pais_UNIQUE(id_pais ASC) VISIBLE,
	CONSTRAINT fk_region_id_pais FOREIGN KEY(id_pais) REFERENCES pais(id)
);


CREATE TABLE IF NOT EXISTS ciudad(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_region INT UNSIGNED NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY pk_ciudad(id, id_region),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	UNIQUE INDEX id_region_UNIQUE(id_region ASC) VISIBLE,
	CONSTRAINT fk_ciudad_id_region FOREIGN KEY(id_region) REFERENCES region(id)
);


CREATE TABLE IF NOT EXISTS codigo_postal(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_ciudad INT UNSIGNED NOT NULL,
	codigo VARCHAR(15) NOT NULL,
	PRIMARY KEY pk_codigo_postal(id, id_ciudad),
	UNIQUE INDEX id_UNIQUE(id ASC) VISIBLE,
	UNIQUE INDEX id_ciudad_UNIQUE(id_ciudad ASC) VISIBLE,
	CONSTRAINT fk_codigo_postal_id_ciudad FOREIGN KEY(id_ciudad) REFERENCES ciudad(id)
);


SHOW TABLES;