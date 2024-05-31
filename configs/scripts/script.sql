create table tickets
(
    id             bigint not null
        constraint tickets_pkey
            primary key,
    description    varchar(2014),
    sale           integer,
    release_date   integer,
    name           varchar(1024),
    status         integer,
    movie_duration integer,
    age_limit      integer,
    director       varchar(255),
    actor          varchar(1024),
    producer       varchar(1024),
    price          double precision,
    movie_type     varchar(1024),
    created_at     integer,
    updated_at     integer
);

alter table tickets
    owner to postgres;

create table file_storages
(
    id         bigint not null
        constraint file_storages_pkey
            primary key,
    ticket_id  bigint,
    url        varchar(255),
    created_at integer
);

alter table file_storages
    owner to postgres;

create table orders
(
    id              bigint not null
        constraint orders_pkey
            primary key,
    show_time_id    bigint,
    release_date    integer,
    email           varchar(255),
    otp             bigint,
    description     varchar(2014),
    status          integer,
    price           numeric(10, 2),
    seats           varchar(1024),
    sale            integer,
    movie_time      integer,
    address_details text,
    cinema_name     varchar(1024),
    movie_name      varchar(1024),
    created_at      integer,
    updated_at      integer
);

alter table orders
    owner to postgres;

create table customers
(
    id           bigint not null
        constraint customers_pkey
            primary key,
    user_name    varchar(255),
    address      varchar(255),
    age          integer,
    email        varchar(255),
    phone_number varchar(20),
    otp          bigint,
    avatar_url   varchar(255),
    password     varchar(510),
    is_active    boolean default false,
    expired_time integer,
    role         integer,
     created_at   integer,
    updated_at   integer
);

alter table customers
    owner to postgres;

create table cinemas
(
    id               bigint not null
        constraint cinemas_pkey
            primary key,
    cinema_name      varchar(255),
    description      varchar(255),
    conscious        varchar(255),
    district         varchar(255),
    commune          varchar(255),
    address_details  varchar(255),
    width_container  integer,
    height_container integer
);

alter table cinemas
    owner to postgres;

create table show_times
(
    id              bigint not null
        constraint show_times_pkey
            primary key,
    movie_time      integer,
    cinema_name     varchar(255),
    selected_seat   varchar(1024),
    quantity        integer,
    ticket_id       bigint,
    original_number integer,
    price           double precision,
    status          integer,
    discount        integer,
        created_at      integer,
    updated_at      integer
);

alter table show_times
    owner to postgres;

create table movie_types
(
    id              bigint not null
        constraint movie_types_pkey
            primary key,
    movie_type_name varchar(1024)
);

alter table movie_types
    owner to postgres;

create table carts
(
    id             bigint not null
        constraint carts_pkey
            primary key,
    user_name      varchar(255),
    show_time_id   bigint,
    seats_position varchar(1024),
    price          double precision,
    created_at     integer,
    updated_at     integer
);

alter table carts
    owner to postgres;

create table shifts
(
    id          bigint not null
        constraint shifts_pkey
            primary key,
    shift_name  varchar(155),
    salary      numeric(10, 2),
    shift_start integer,
    shift_end   integer
);

alter table shifts
    owner to postgres;

create table users
(
    id          bigint not null
        constraint users_pkey
            primary key,
    user_name   varchar(255),
    shift_names varchar(1024),
    cinema_name varchar(1024),
    age         integer,
    address     varchar(255),
    role        integer,
    created_at  integer,
    updated_at  integer
);

alter table users
    owner to postgres;


