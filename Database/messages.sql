CREATE TABLE messages (
     id numeric not null,
     processed char(1) not null,
     receiver numeric not null,
     message varchar(255),
     primary key (id)
);