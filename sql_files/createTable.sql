use welpbook_db;

drop table if exists rating;
drop table if exists joinActivity;
drop table if exists recommendation;
drop table if exists activity;
drop table if exists user;

create table user (
    uid int not null, 
    username varchar(20) not null,
    email varchar(40) not null,
    password varchar(30) not null,
    primary key (uid)
)
ENGINE = InnoDB; 

create table activity (
    aid int not null, -- auto_increment,
    name varchar(60) not null,
    time datetime not null,
    postedby int not null, 
    location varchar(100) not null,
    distance int not null,
    type enum("Dining", "Shopping", "Movie", "Other", "Outdoors", "Spiritual", "Studying", "Party", "Exercising"),
    budget float,
    numberOfParticipants int,
    primary key (aid),
    foreign key (postedby) references user(uid)
        on update cascade
        on delete cascade
)
ENGINE = InnoDB; 

create table recommendation (
    rid int not null, -- auto_increment,
    name varchar(60) not null,
    location varchar(100) not null,
    distance int not null,
    type enum("Dining", "Shopping", "Movie", "Other", "Outdoors", "Spiritual", "Studying", "Party", "Exercising"),
    budget float,
    primary key (rid)
)
ENGINE = InnoDB; 

create table joinActivity (
    activity int not null,
    foreign key (activity) references activity (aid)
        on update cascade
        on delete cascade,
    usr int not null,
    foreign key (usr) references user (uid)
        on update cascade
        on delete cascade
)
ENGINE = InnoDB;

create table rating (
    usr int not null,
    foreign key (usr) references user (uid)
        on update cascade
        on delete cascade,
    recId int not null,
    foreign key (recId) references recommendation (rid)
        on update cascade
        on delete cascade,
    comment varchar(250),
    img longblob,
    rating enum('1', '2', '3', '4', '5')
)
ENGINE = InnoDB;