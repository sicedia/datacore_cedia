-- auto-generated definition
create table packages_backup_service
(
    package_backup_service_id          int auto_increment comment 'Identificador unico de la tabla'
        primary key,
    package_backup_service_type        varchar(100)     not null comment 'Tipo de paquete',
    package_backup_service_name        varchar(100)     not null comment 'Nombre del paquete',
    package_backup_service_unidad      varchar(100)     not null comment 'Unidad de medida del paquete',
    package_backup_service_valor       double default 0 not null comment 'Valor de la unidad de medida',
    package_backup_service_id_sic      int    default 0 not null comment 'Identificador unico del paquete del sistema SIC',
    package_backup_service_description varchar(100)     not null comment 'Descripcion de la unidad de medida'
);

