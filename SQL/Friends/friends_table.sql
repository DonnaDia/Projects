-- creating a table
CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);
-- adding data into rows and columns
insert into friends (id, name, birthday)
values (1, 'Jane Doe', '1990-05-30');

insert into friends (id, name, birthday)
values (2, 'Patty Smith', '1990-05-28');

insert into friends (id, name, birthday)
values (3, 'Jonathan Brune', '1995-08-30');

-- updating one record
update friends 
set name = 'Jane Smith'
where id = 1;

-- adding additional columt
alter table friends
add column email;

-- updating emails for every record
update friends 
set email = 'jobrune@codecademy.com'
where id = 3;

update friends 
set email = 'jane@codecademy.com'
where id = 1;

update friends 
set email = 'p_smith@codecademy.com'
where id = 2;

-- removing a redundant record
delete from friends 
where id = 1;

-- verifying db records
select * from friends;
