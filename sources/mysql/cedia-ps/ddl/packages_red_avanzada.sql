-- auto-generated definition
create table packages_red_avanzada
(
    package_red_avanzada_id          int auto_increment comment 'Identificador unico de la tabla'
        primary key,
    package_red_avanzada_valor       int          null comment 'Valor de la unidad de medida',
    package_red_avanzada_unidad      varchar(100) null comment 'Unidad de medida del paquete',
    package_red_avanzada_name        varchar(100) null comment 'Nombre del paquete',
    package_red_avanzada_type        varchar(100) null comment 'Tipo de paquete',
    package_red_avanzada_id_sic      int          null comment 'Identificador unico del paquete obtenido del sistema SIC',
    package_red_avanzada_description varchar(255) null comment 'Descripcion de la unidad de medida'
);

