-- auto-generated definition
create table etl_service_snapshot_run
(
    snapshot_date  date                                                            not null comment 'Fecha cuando se cuando se ejecuto el proceso',
    service_id     int                                                             not null comment 'Identificador del servicio',
    status         enum ('PENDING', 'RUNNING', 'DONE', 'FAILED') default 'PENDING' not null comment 'Estado actual del proceso',
    attempt        int unsigned                                  default 0         not null comment 'Cantidad de intentos registrados',
    started_at     timestamp                                                       null comment 'Fecha y hora de inicio',
    finished_at    timestamp                                                       null comment 'Fecha y hora de fin',
    last_error     text                                                            null comment 'Ultimo error registrado',
    last_worker    varchar(128)                                                    null comment 'Ultimo worker de ejecucion',
    last_heartbeat timestamp                                                       null comment 'Ultima revision de estado',
    primary key (snapshot_date, service_id),
    constraint fk_run_service
        foreign key (service_id) references `cedia-ps`.services (id)
            on update cascade
);

create index idx_service_date
    on etl_service_snapshot_run (service_id, snapshot_date);

create index idx_status_date
    on etl_service_snapshot_run (snapshot_date, status);

