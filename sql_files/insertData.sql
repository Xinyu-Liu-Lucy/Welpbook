use welpbook_db;

-- users
insert into user (uid, username, email, password)
values (0, 'HarryPotter', 'harrypotter@hogwarts.edu', '666666');

insert into user (uid, username, email, password)
values (1, 'RonWeasley', 'RonWeasley@hogwarts.edu', '888888');

-- recommendations
insert into recommendation (rid,name, location, distance, type, budget)
values (0,"Quidditch", "Arena", 50, "Outdoors", 5);

insert into recommendation (rid,name, location, distance, type, budget)
values (1,"Butter beer drinking", "HogsMeade", 10, "Dining", 20);

-- activities
insert into activity (aid, name, time, postedby, location, distance, type, budget, numberOfParticipants)
values (0, "Pset", "20210321 6:00:00 PM", 0, "Library", 36, "Studying", 0, 3);

insert into activity (aid, name, time, postedby, location, distance, type, budget, numberOfParticipants)
values (1, "Swimming", "20210401 3:00:00 AM", 1, "BlackLake", 36, "Outdoors", 0, 6);

-- joins
insert into joinActivity (activity, usr)
values (0, 1);

insert into joinActivity (activity, usr)
values (1, 0);

-- rates
insert into rating (usr, recId, comment, img, rating)
values (0, 0, "Makes you fall in love with exercising!", null, "5");

insert into rating (usr, recId, comment, img, rating)
values (1, 1, "Delish but high calory!", null, "4");






