-- auto-generated definition
create table dtmetadata_organization
(
    dtmetadata_organization_id              bigint       not null comment 'Identificador autoincremental de la tabla'
        primary key,
    dtmetadata_organization_version         int          null comment 'Columna de relleno generada por pentaho antiguo',
    dtmetadata_organization_date_from       datetime     null comment 'Columna de relleno generada por pentaho antiguo',
    dtmetadata_organization_date_to         datetime     null comment 'Columna de relleno generada por pentaho antiguo',
    dtmetadata_organization_organization_id varchar(255) null comment 'Identificador unico de OrganizationtypeEntity generado en el CMI',
    dtmetadata_organization_sic_id_paquete  int          null comment 'Identificador del paquete del sistema SIC',
    dtmetadata_organization_paquete_nombre  varchar(255) null comment 'Nombre del paquete obtenido del sistema SIC',
    dtmetadata_organization_nombre_completo varchar(255) null comment 'Nombre completo de la organizacion',
    dtmetadata_organization_sic_id          varchar(255) null comment 'Identificador unico del sistema SIC',
    dtmetadata_organization_alias           varchar(255) null comment 'Alias principal de la institucion'
);

create index idx_dtmetadata_organization_lookup
    on dtmetadata_organization (dtmetadata_organization_organization_id);

create index idx_dtmetadata_organization_tk
    on dtmetadata_organization (dtmetadata_organization_id);

