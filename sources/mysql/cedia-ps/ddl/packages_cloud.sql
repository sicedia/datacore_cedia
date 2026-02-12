-- auto-generated definition
create table packages_cloud
(
    package_id               int auto_increment comment 'Identificador unico de la tabla'
        primary key,
    package_type             varchar(100)  not null comment 'Tipo de paquete',
    package_name             varchar(100)  not null comment 'Nombre del paquete',
    package_cpu              int default 0 not null comment 'Capacidad de CPU del paquete',
    package_ram              int default 0 not null comment 'Capacidad de RAM del paquete',
    package_disco            int default 0 not null comment 'Capacidad de DISCO del paquete',
    package_virtual_machines int default 0 not null comment 'Capacidad de maquinas virtuales del paquete',
    package_id_sic           int           not null comment 'Identificador unico del paquete del sistema SIC'
);

