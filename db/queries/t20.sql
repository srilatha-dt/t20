create database t20_world_cup;
use t20_world_cup;
create table teams(id int AUTO_INCREMENT, name varchar(30) NOT NULL, country varchar(30) NOT NULL, founded year, PRIMARY KEY(id), UNIQUE(name)); 
select * from teams;
select * from teams where name = 'Team A';
select * from teams where founded < 1915;
insert into teams (name, country, founded) values ('Team K', 'India', 1947);
update teams set country = 'Canada' where name = "Team H";
delete from teams where name = "Team C";