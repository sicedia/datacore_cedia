-- auto-generated definition
create table packages_videoconferencia
(
    package_videoconferencia_id          int auto_increment comment 'Identificador unico de la tabla'
        primary key,
    package_videoconferencia_type        varchar(100)     not null comment 'Tipo de paquete',
    package_videoconferencia_name        varchar(100)     not null comment 'Nombre del paquete',
    package_videoconferencia_unidad      varchar(100)     not null comment 'Unidad de medida',
    package_videoconferencia_valor       double default 0 not null comment 'Valor de una medida',
    package_videoconferencia_id_sic      int    default 0 not null comment 'Identificador unico del paquete generado del sistema SIC ',
    package_videoconferencia_description varchar(100)     not null comment 'Descripcion de la unidad de media'
);

