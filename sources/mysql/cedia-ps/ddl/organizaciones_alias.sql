-- auto-generated definition
create table organizaciones_alias
(
    orgalias_id     bigint auto_increment comment 'Identificador autoincremental de la tabla'
        primary key,
    orgalias_alias  varchar(255) not null comment 'Alias alternos de la institucion',
    organizacion_id varchar(255) null comment 'Identificador de organizacion unico cmi',
    constraint FK_oisviaupuorh0n0htkv8orvnv
        foreign key (organizacion_id) references OrganizationTypeEntity (id)
);

