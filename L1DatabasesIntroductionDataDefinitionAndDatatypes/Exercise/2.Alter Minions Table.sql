Alter table minions add town_id INT;
Alter table minions add Constraint town_id foreign key (town_id) references towns(id);