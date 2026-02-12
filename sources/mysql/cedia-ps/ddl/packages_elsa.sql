-- auto-generated definition
create table packages_elsa
(
    package_elsa_id          int auto_increment comment 'Identificador unico de la tabla'
        primary key,
    package_elsa_type        varchar(100)     not null comment 'Tipo de Institucion',
    package_elsa_name        varchar(100)     not null comment 'Nombre del paquete',
    package_elsa_unidad      varchar(100)     not null comment 'Unidad de valor del paquete (Usuarios, Gb)',
    package_elsa_valor       double default 0 not null comment 'Valor de la unidad de medida del paquete',
    package_elsa_id_sic      int    default 0 not null comment 'Identificador unico del paquete del sistema SIC',
    package_elsa_description varchar(100)     not null comment 'Descripcion de la unidad de medida'
);

