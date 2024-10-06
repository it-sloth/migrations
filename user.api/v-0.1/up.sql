create schema user_api;

create extension "uuid-ossp";

create table "user"
(
    id           uuid primary key     default uuid_generate_v4(),
    login        varchar(25) not null,
    nick         varchar(25) not null,
    password     varchar(50) not null,
    role         int         not null,
    created_at   date        not null default now(),
    activated_at date
);

create table role (
                      id serial primary key,
                      name varchar(50) not null unique
);

alter table user_api.user add constraint user_fk_i foreign key (role) references role (id)
