# volley-ball-league
added data base of volley balll league

#creating the table  

create table team
(
    team_name varchar(50) not null primary key,
    city varchar(50),
    conference char
);
INSERT INTO team VALUES('Lakers', 'Los Angeles', 'W');
INSERT INTO team VALUES('Raptors', 'Toronto', 'E');
INSERT INTO team VALUES('Celtics', 'Boston', 'E');
INSERT INTO team VALUES('Bulls', 'Chicago', 'E');
INSERT INTO team VALUES('Warriors', 'San Francisco', 'W');
INSERT INTO team VALUES('Knicks', 'New York', 'E');
INSERT INTO team VALUES('Heat', 'Miami', 'E');
INSERT INTO team VALUES('Mavericks', 'Dallas', 'W');
INSERT INTO team VALUES('Nuggets', 'Denver', 'W');
INSERT INTO team VALUES('Pistons', 'Detroit', 'E');
INSERT INTO team VALUES('Rockets', 'Houston', 'W');
INSERT INTO team VALUES('Pacers', 'Indiana', 'E');
INSERT INTO team VALUES('Clippers', 'Los Angeles', 'W');
INSERT INTO team VALUES('Grizzlies', 'Memphis', 'W');
INSERT INTO team VALUES('Bucks', 'Milwaukee', 'E');
INSERT INTO team VALUES('Timberwolves', 'Minnesota', 'W');
INSERT INTO team VALUES('Pelicans', 'New Orleans', 'W');
INSERT INTO team VALUES('76ers', 'Philadelphia', 'E');
INSERT INTO team VALUES('Suns', 'Phoenix', 'W');
INSERT INTO team VALUES('Trail Blazers', 'Portland', 'W');
INSERT INTO team VALUES('Kings', 'Sacramento', 'W');
INSERT INTO team VALUES('Spurs', 'San Antonio', 'W');
INSERT INTO team VALUES('Thunder', 'Oklahoma City', 'W');
INSERT INTO team VALUES('Jazz', 'Utah', 'W');
INSERT INTO team VALUES('Wizards', 'Washington', 'E');
INSERT INTO team VALUES('Hawks', 'Atlanta', 'E');
INSERT INTO team VALUES('Hornets', 'Charlotte', 'E');
INSERT INTO team VALUES('Magic', 'Orlando', 'E');

create table player
(
    player_id int not null primary key,
    height float,
    weight float,
    first_name varchar(20),
    last_name varchar(20) not null,
    dob date,
    pos varchar(2),
    nationality varchar(20),
    salary int,
    team_name varchar(50),
    foreign key (team_name) references team(team_name)
);
INSERT INTO player VALUES    (1, 1.80, 79.0, 'Luka', 'Doncic',date '1999-02-28', 'PG', 'Slovenian', 8640000, 'Mavericks');
INSERT INTO player VALUES    (2, 2.01, 104.3, 'LeBron', 'James',date '1984-12-30', 'PF', 'USA', 350000, 'Lakers');
INSERT INTO player VALUES    (3, 2.11, 115.2, 'Joel', 'Embiid',date '1994-03-16', 'C', 'Cameroon', 200000, '76ers');
INSERT INTO player VALUES    (4, 1.98, 98.7, 'Kawhi', 'Leonard',date '1991-06-29', 'SF', 'USA', 450000, 'Clippers');
INSERT INTO player VALUES    (5, 1.93, 87.5, 'Steph', 'Curry',date '1988-03-14', 'PG', 'USA', 400000, 'Warriors');
INSERT INTO player VALUES    (6, 2.08, 109.1, 'Nikola', 'Jokic',date '1995-02-19', 'C', 'Serbia', 150000, 'Nuggets');


create table match
(
    match_id int not null primary key,
    match_date date,
    hmp int,
    awp int,
    home_team varchar(50),
    away_team varchar(50),
    referee varchar(30),
    revenue int,
    tickets_sold int,
    court_name varchar(50)
);
INSERT INTO matchh VALUES (1,date '2023-05-20', 98, 87, 'Lakers', 'Warriors', 'John Smith', 150000, 12000, 'Staples Center');
INSERT INTO matchh VALUES (2,date '2023-05-22', 105, 100, 'Heat', 'Bulls', 'Sarah Johnson', 100000, 8000, 'AmericanAirlines Arena');
INSERT INTO matchh VALUES (3,date '2023-05-24', 92, 85, 'Raptors', 'Celtics', 'Kevin Lee', 80000, 6000, 'Scotiabank Arena');
INSERT INTO matchh VALUES (4,date '2023-05-26', 100, 95, 'Knicks', 'Spurs', 'Mike Davis', 120000, 10000, 'Madison Square Garden');
INSERT INTO matchh VALUES (5,date '2023-05-28', 97, 102, 'Nuggets', 'Rockets', 'Jessica Chen', 90000, 7000, 'Ball Arena');
INSERT INTO matchh VALUES (6,date '2023-05-30', 88, 91, 'Clippers', 'Grizzlies', 'David Kim', 70000, 5000, 'Staples Center');
INSERT INTO matchh VALUES (7,date '2023-06-01', 93, 96, 'Mavericks', 'Pacers', 'Alex Lee', 80000, 6000, 'American Airlines Center');
INSERT INTO matchh VALUES (8,date '2023-06-03', 101, 99, 'Bucks', 'Timberwolves', 'Daniel Wang', 110000, 9000, 'Fiserv Forum');
INSERT INTO matchh VALUES (9,date '2023-06-05', 94, 101, 'Pelicans', '76ers', 'Samantha Smith', 75000, 5500, 'Smoothie King Center');
INSERT INTO matchh VALUES (10,date '2023-06-07', 89, 92, 'Suns', 'Trail Blazers', 'James Lee', 85000, 6500, 'Phoenix Suns Arena');

create table plays
(
    match_id int,
    foreign key(match_id) references matchh(match_id),
    team_name varchar(50),
    foreign key(team_name) references team(team_name)
);
INSERT INTO plays VALUES(1, 'Lakers');
INSERT INTO plays VALUES(1, 'Warriors');
INSERT INTO plays VALUES(2, 'Heat');
INSERT INTO plays VALUES(2, 'Bulls');
INSERT INTO plays VALUES(3, 'Raptors');
INSERT INTO plays VALUES(3, 'Celtics');
INSERT INTO plays VALUES(4, 'Knicks');
INSERT INTO plays VALUES(4, 'Spurs');
INSERT INTO plays VALUES(5, 'Nuggets');
INSERT INTO plays VALUES(5, 'Rockets');

create table team_sponser
(
    sponser varchar(50) not null primary key,
    team_name varchar(50),
    foreign key(team_name) references team(team_name)
);
INSERT INTO team_sponser VALUES('Nike', 'Lakers');
INSERT INTO team_sponser VALUES('Adidas', 'Warriors');
INSERT INTO team_sponser VALUES('Under Armour', 'Heat');
INSERT INTO team_sponser VALUES('Puma', 'Bulls');
INSERT INTO team_sponser VALUES('New Balance', 'Raptors');

create table standings
(
    wins int,
    losses int,
    matches_played int,
    net_rating float,
    streak int,
    team_name varchar(50) primary key,
    foreign key(team_name) references team(team_name)
);
INSERT INTO standings VALUES(35, 17, 52, 6.2, 4, 'Lakers');
INSERT INTO standings VALUES(29, 23, 52, 2.1, 2, 'Warriors');
INSERT INTO standings VALUES(28, 24, 52, 0.8, -1, 'Heat');
INSERT INTO standings VALUES(26, 26, 52, -1.3, -3, 'Bulls');
INSERT INTO standings VALUES(22, 30, 52, -3.5, -1, 'Raptors');
INSERT INTO standings VALUES(43, 9, 52, 9.7, 5, 'Jazz');
INSERT INTO standings VALUES(40, 12, 52, 8.5, 3, 'Suns');
INSERT INTO standings VALUES(38, 14, 52, 7.6, -1, 'Clippers');
INSERT INTO standings VALUES(34, 18, 52, 5.2, 2, 'Bucks');
INSERT INTO standings VALUES(28, 24, 52, 1.9, -1, 'Mavericks');
INSERT INTO standings VALUES(26, 26, 52, 0.8, -2, 'Trail Blazers');
INSERT INTO standings VALUES(25, 27, 52, -0.5, -3, 'Grizzlies');
INSERT INTO standings VALUES(20, 32, 52, -4.8, -4, 'Kings');
INSERT INTO standings VALUES(45, 7, 52, 10.9, 4, 'Nuggets');
INSERT INTO standings VALUES(33, 19, 52, 5.1, -1, 'Celtics');
INSERT INTO standings VALUES(29, 23, 52, 2.8, 2, 'Hawks');
INSERT INTO standings VALUES(27, 25, 52, 1.2, -1, 'Knicks');
INSERT INTO standings VALUES(25, 27, 52, -0.9, -3, 'Pacers');
INSERT INTO standings VALUES(22, 30, 52, -3.4, -2, 'Hornets');
INSERT INTO standings VALUES(19, 33, 52, -5.8, -5, 'Magic');
INSERT INTO standings VALUES(17, 35, 52, -7.1, -1, 'Pistons');
INSERT INTO standings VALUES(16, 36, 52, -7.6, -2, '76ers');
INSERT INTO standings VALUES(13, 39, 52, -9.8, -3, 'Rockets');
INSERT INTO standings VALUES(12, 40, 52, -10.6, -5, 'Timberwolves');


create table stats
(
    last_name varchar(20),
    ppg float,
    rpg float,
    apg float,
    spg float,
    bpg float,
    fgper float,
    threeptper float,
    ftper float,
    mins int,
    player_id int,
    foreign key(player_id) references player(player_id),
    primary key(player_id)
);
INSERT INTO stats VALUES ('Doncic', 20.5, 7.8, 5.2, 1.2, 0.7, 0.485, 0.398, 0.821, 34, 1);
INSERT INTO stats VALUES ('James', 16.3, 5.1, 3.6, 0.9, 0.3, 0.423, 0.354, 0.754, 28, 2);
INSERT INTO stats VALUES ('Embiid', 11.7, 8.9, 2.3, 0.6, 1.1, 0.527, 0.000, 0.632, 24, 3);
INSERT INTO stats VALUES ('Leonard', 14.2, 4.6, 6.7, 1.4, 0.5, 0.416, 0.355, 0.806, 32, 4);
INSERT INTO stats VALUES ('Curry', 18.6, 6.2, 4.1, 1.5, 0.6, 0.493, 0.409, 0.882, 36, 5);
INSERT INTO stats VALUES ('Jokic', 9.8, 3.1, 2.5, 0.7, 0.2, 0.371, 0.297, 0.712, 22, 6);



create table general_manager
(
    gm_id int primary key,
    capspace int,
    gmname varchar(50),
    salary int,
    dob date,
    team_name varchar(50),
    foreign key(team_name) references team(team_name)
);
INSERT INTO general_manager VALUES    (1, 50000000, 'David Griffin', 1000000,date '1990-01-01', 'Lakers');
INSERT INTO general_manager VALUES    (2, 30000000, 'Jalen Doe', 800000,date '1985-05-02', 'Warriors');
INSERT INTO general_manager VALUES    (3, 40000000, 'Bob Johnson', 1200000,date '1983-12-25', 'Rockets');
INSERT INTO general_manager VALUES    (4, 25000000, 'Sam Brown', 900000,date '1995-06-10', 'Timberwolves');
INSERT INTO general_manager VALUES    (5, 20000000, 'Mike Lee', 700000,date '1992-09-15', '76ers');
INSERT INTO general_manager VALUES    (6, 35000000, 'Jake Davis', 1100000,date '1988-03-22', 'Bucks');
INSERT INTO general_manager VALUES    (7, 45000000, 'Tom Wilson', 1500000,date '1980-11-17', 'Heat');
INSERT INTO general_manager VALUES    (8, 15000000, 'Darvin Chen', 600000,date '1997-04-05', 'Raptors');
INSERT INTO general_manager VALUES    (9, 5000000, 'David Garcia', 500000,date '1998-07-20', 'Celtics');
INSERT INTO general_manager VALUES    (10, 10000000, 'Steven Martinez', 750000,date '1994-02-14', 'Suns');

create table coach
(
    coach_id int not null primary key,
    coach_name varchar(50),
    salary int,
    experience int,
    dob date,
    team_name varchar(50),
    foreign key(team_name) references team(team_name)
);
INSERT INTO coach VALUES    (1, 'Steve Kerr', 8000000, 10,date '1965-09-27', 'Warriors');
INSERT INTO coach VALUES    (2, 'Doc Rivers', 7000000, 20,date '1961-10-13', '76ers');
INSERT INTO coach VALUES    (3, 'Gregg Popovich', 9000000, 25,date '1949-01-28', 'Spurs');
INSERT INTO coach VALUES    (4, 'Erik Spoelstra', 6000000, 12,date '1970-11-01', 'Heat');
INSERT INTO coach VALUES    (5, 'Tyronn Lue', 5000000, 6,date '1977-05-03', 'Clippers');
INSERT INTO coach VALUES    (6, 'Mike Budenholzer', 6500000, 15,date '1969-08-06', 'Bucks');
INSERT INTO coach VALUES    (7, 'Darvin Ham', 5500000, 8,date '1973-06-21', 'Lakers');
INSERT INTO coach VALUES    (8, 'Nick Nurse', 7500000, 5,date '1967-07-24', 'Raptors');
INSERT INTO coach VALUES    (9, 'Nate McMillan', 4500000, 18,date '1964-08-03', 'Hawks');
INSERT INTO coach VALUES    (10, 'Monty Williams', 4000000, 9,date '1971-10-08', 'Suns');

create table court
(
    court_name varchar(50) primary key,
    no_of_seata int,
    city_name varchar(50),
    team_name varchar(50),
    foreign key(team_name) references team(team_name)
);
INSERT INTO court VALUES    ('Madison Square Garden', 20000, 'New York City', 'Knicks');
INSERT INTO court VALUES    ('Staples Center', 19068, 'Los Angeles', 'Lakers');
INSERT INTO court VALUES    ('United Center', 20917, 'Chicago', 'Bulls');
INSERT INTO court VALUES    ('Chase Center', 18064, 'San Francisco', 'Warriors');
INSERT INTO court VALUES    ('American Airlines Arena', 19600, 'Miami', 'Heat');
INSERT INTO court VALUES    ('Toyota Center', 18055, 'Houston', 'Rockets');
INSERT INTO court VALUES    ('Scotiabank Arena', 19800, 'Toronto', 'Raptors');
INSERT INTO court VALUES    ('Amway Center', 18846, 'Orlando', 'Magic');
INSERT INTO court VALUES    ('Moda Center', 19441, 'Portland', 'Trail Blazers');

 #main values to dispaly the table values 

select p.team_name,s.ppg,s.rpg,s.apg from player p,stats s where p.player_id=5 and s.player_id=5;
select coach_name, experience,team_name from coach order by experience desc;
select match_date,tickets_sold from matchh where match_id in (select match_id from plays where team_name='Heat');
select gmname,salary from general_manager where capspace>5000000 and capspace<30000000;
select court_name,city_name,no_of_seats from court where court_name in (select court_name from matchh where match_id in (select 
match_id from plays where team_name in
(select team_name from team_sponser where sponser='Puma')));
select p.team_name,s.ppg,s.rpg,s.apg from player p,stats s where p.player_id=5 and s.player_id=5;
select coach_name, experience,team_name from coach order by experience desc;
select match_date,tickets_sold from matchh where match_id in (select match_id from plays where team_name='Heat');
select gmname,salary from general_manager where capspace>5000000 and capspace<30000000;
select court_name,city_name,no_of_seats from court where court_name in (select court_name from matchh where match_id in (select match_id from plays where team_name in
(select team_name from team_sponser where sponser='Puma')));





