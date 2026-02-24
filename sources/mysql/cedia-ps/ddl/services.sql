-- auto-generated definition
create table services
(
    id         int auto_increment
        primary key,
    service    text          not null comment 'Nombre del Servicio',
    core       int default 1 null,
    category   varchar(255)  null comment 'Categoria del Servicio',
    percentage float         null comment 'Porcentaje ponderado del Servicio',
    status     tinyint       null comment '1 = active; 0 = inactive',
    code       varchar(10)   null comment 'Codigo del Servicio'
)
    charset = utf8mb4;

