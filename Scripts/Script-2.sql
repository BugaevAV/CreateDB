CREATE TABLE IF NOT EXISTS сhief (
	id SERIAL primary key,
	name VARCHAR(60) not null
);

CREATE TABLE IF NOT EXISTS employee (
	id SERIAL primary key,
	name VARCHAR(60) not null,
	department_name VARCHAR(80) not null,
	сhief_id INTEGER not null references сhief(id)
);
