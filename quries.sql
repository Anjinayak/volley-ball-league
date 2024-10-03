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
