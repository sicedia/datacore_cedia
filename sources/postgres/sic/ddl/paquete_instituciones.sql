-- auto-generated definition
create table paquete_instituciones
(
    id                      serial
        primary key,
    nombre                  varchar(255) not null,
    descripcion             varchar(255),
    nombre_alternativo      varchar(255),
    tipo                    varchar(255) not null,
    created_by              integer,
    updated_by              integer,
    created_at              timestamp with time zone default CURRENT_TIMESTAMP,
    updated_at              timestamp with time zone default CURRENT_TIMESTAMP,
    institucione            integer,
    capacidad_paquete_cloud integer
);

comment on column paquete_instituciones.id is 'Identificador unico del paquete';

alter table paquete_instituciones
    owner to strapi;

