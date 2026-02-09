-- auto-generated definition
create table OrganizationTypeEntity
(
    address           varchar(255)     null comment 'Direccion de la institucion',
    alias             varchar(255)     null comment 'Alias principal de la institucion',
    contactName       varchar(255)     null comment 'Nombre de personal de concacto',
    email             varchar(255)     null comment 'Email de personal de concacto',
    phone             varchar(255)     null comment 'Telefono de personal de concacto',
    website           varchar(255)     null comment 'Sitio web de la institucion',
    id                varchar(255)     not null comment 'Identificador unico de la institucion generado por el CMI'
        primary key,
    numIdentificacion varchar(255)     null comment 'Ruc de la institucion',
    tipo_institucion  int              null,
    status            bit default b'0' null comment 'Estado actual de la institucion, 1 activo; 0 inactivo',
    constraint FK_f10ttuupoq90fkaedqnxnsb1t
        foreign key (id) references PartitionTypeEntity (id),
    constraint fk_OrganizationTypeEntity_type
        foreign key (tipo_institucion) references Tipo_institucion (idTipo_institucion)
);

create index fk_OrganizationTypeEntity_type_idx
    on OrganizationTypeEntity (tipo_institucion);

grant select, show view on table OrganizationTypeEntity to veeam_user;

