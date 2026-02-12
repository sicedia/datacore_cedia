-- auto-generated definition
create table service_usage_rule
(
    service_id   int                                                                   not null comment 'Identificadorde servicio '
        primary key,
    sql_template longtext                                                              not null comment 'Plantilla Sql para obtener los datos de las tablas',
    semantics    enum ('DAILY_ACTIVITY', 'CUMULATIVE_STATE') default 'DAILY_ACTIVITY'  not null comment 'Tipo de ejecucion',
    is_active    tinyint                                     default 1                 not null comment 'Estado de la configuracion',
    version      int unsigned                                default 1                 not null comment 'Version de la configuracion',
    updated_by   varchar(128)                                                          null comment 'Ultima actualizacion registrada',
    updated_at   timestamp                                   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment 'Ultimo usuario que actualizo ',
    constraint fk_rule_service
        foreign key (service_id) references `cedia-ps`.services (id)
            on update cascade
);

create index idx_active
    on service_usage_rule (is_active);

