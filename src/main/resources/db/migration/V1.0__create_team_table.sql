create table if not exists Team (
	id serial not null primary key,
	name text not null, 
	hall_id integer
);
