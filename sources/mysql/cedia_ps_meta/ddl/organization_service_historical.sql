-- auto-generated definition
create table organization_service_historical
(
    snapshot_date   date                                      not null comment 'Fecha de ejecucion del proceso ',
    organization_id varchar(255)                              not null comment 'Identificador de la institucion obtenido del sistema CMI',
    service_id      int                                       not null comment 'Identificador unico del servicio',
    used_flag       tinyint                                   not null comment 'Bandera de uso: 1=used;0=not used',
    evidence_count  bigint unsigned default 0                 not null comment 'Campo de auditoria, validacion de uso',
    computed_at     timestamp       default CURRENT_TIMESTAMP not null comment 'Fecha de ultima ejecucion ',
    primary key (snapshot_date, organization_id, service_id)
)
    charset = utf8mb4;

create index idx_org_date
    on organization_service_historical (organization_id, snapshot_date);

create index idx_srv_date
    on organization_service_historical (service_id, snapshot_date);

