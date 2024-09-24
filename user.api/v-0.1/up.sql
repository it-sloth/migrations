create schema user_api;

CREATE
EXTENSION "uuid-ossp";

create table users
(
    id           uuid primary key     default uuid_generate_v4(),
    login        varchar(25) not null,
    nick         varchar(25) not null,
    password     varchar(50) not null,
    created_at   date        not null default now(),
    activated_at date
);
