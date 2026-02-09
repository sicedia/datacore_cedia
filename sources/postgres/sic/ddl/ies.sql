-- auto-generated definition
create table ies
(
    id                serial
        primary key,
    nombre            varchar(255) not null
        constraint ies_nombre_unique
            unique,
    created_by        integer,
    updated_by        integer,
    created_at        timestamp with time zone default CURRENT_TIMESTAMP,
    updated_at        timestamp with time zone default CURRENT_TIMESTAMP,
    servicios_itt_ies integer,
    grupos_trabajo    integer,
    nombre_completo   varchar(255),
    paquete_cedia     integer,
    activo            boolean,
    alias             varchar(255),
    tipo              varchar(255),
    ciudad            varchar(255),
    zona              varchar(255),
    ejecutivo         varchar(255),
    longitud          varchar(255),
    latitud           varchar(255),
    ruc               varchar(255),
    miembro           boolean,
    "RazonSocial"     varchar(255),
    dominio           varchar(255)
);

comment on column ies.id is 'Identificador unico del sistema SIC';

comment on column ies.nombre is 'Alias de la institucion';

comment on column ies.paquete_cedia is 'Identificador unico del paquete de la instucion';

comment on column ies.activo is 'Estatus actual de la institucion';

alter table ies
    owner to strapi;

