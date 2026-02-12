-- auto-generated definition
create table organization_packages
(
    organization_packages_id                         int auto_increment comment 'Identificador unico de la tabla'
        primary key,
    organization_packages_sic_id_paquete             varchar(255) null comment 'Identificador unico del Paquete',
    organization_packages_paquete_nombre             varchar(255) null comment 'Nombre del Paquete',
    organization_packages_paquete_descripcion        varchar(255) null comment 'Descripcion del Paquete',
    organization_packages_paquete_tipo               varchar(255) null comment 'Tipo de Paquete',
    organization_packages_paquete_nombre_alternativo varchar(255) null comment 'Nombre alternativo del Paquete',
    organization_packages_nombre_completo            varchar(255) null comment 'Mombre completo de la institucion',
    organization_packages_organization_id            varchar(255) null comment 'Identificador unico de la organizacion obtenido del sistema CMI ',
    organization_packages_alias                      varchar(100) null comment 'Alias de la organizacion',
    organization_packages_activo                     int          null comment 'Estado actual de la institucion',
    organization_packages_sic_id                     int          null comment 'Identificador unico de la institucion del sistema SIC'
);

