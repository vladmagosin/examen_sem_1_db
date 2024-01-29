create table if not exists aircraft(
	id serial not null,
	aircraft_model varchar(50) not null,
	capacity integer not null,
	primary key(id)
);

create table if not exists crew(
	id serial not null,
	name text not null,
	position text not null, 
	aircraft_id integer not null,
	primary key(id),
	foreign key(aircraft_id) references aircraft(id)
);

create table if not exists airport(
	id serial not null,
	airport_name varchar(100) not null,
	country varchar(100) not null,
	city varchar(100) not null,
	primary key(id)
);

create table if not exists flight(
	id serial not null,
	departure date not null,
	arrival date not null,
	destination varchar(100) not null,
	aircraft_id integer not null,
	airport_id integer not null,
	primary key(id),
	foreign key(aircraft_id) references aircraft(id),
	foreign key(airport_id) references airport(id)
);

create table if not exists flight_crew(
    id serial not null,
    flight_id integer not null,
    crew_id integer not null,
    primary key(id),
    foreign key(flight_id) references flight(id),
    foreign key(crew_id) references crew(id)
);


create table if not exists route(
	id serial not null,
	distance varchar(100) not null,
	duration varchar(100) not null,
	flight_id integer not null,
	primary key(id),
	foreign key(flight_id) references flight(id)
);

create table if not exists passenger(
	id serial not null,
	name varchar(100) not null,
	e_mail varchar(200) not null,
	phone_number integer not null,
	aircraft_id integer not null,
	flight_id integer not null,
	primary key(id),
	foreign key(aircraft_id) references aircraft(id),
	foreign key(flight_id) references flight(id)
);

create table if not exists flight_passenger(
    id serial not null,
    flight_id integer not null,
    passenger_id integer not null,
    primary key(id),
    foreign key(flight_id) references flight(id),
    foreign key(passenger_id) references passenger(id)
);


create table if not exists seat(
	id serial not null,
	seat_number varchar(10) not null,
	flight_id integer not null,
	passenger_id integer not null,
	primary key(id),
	foreign key(flight_id) references flight(id),
	foreign key(passenger_id) references passenger(id)
);

create table if not exists flight_seat(
    id serial not null,
    flight_id integer not null,
    seat_id integer not null,
    primary key(id),
    foreign key(flight_id) references flight(id),
    foreign key(seat_id) references seat(id)
);


create table if not exists ticket(
	id serial not null,
	destination varchar(200) not null,
	price varchar(50) not null,
	passenger_id integer not null,
	flight_id integer not null,
	seat_id integer not null,
	primary key(id),
	foreign key(passenger_id) references passenger(id),
	foreign key(flight_id) references flight(id),
	foreign key(seat_id) references seat(id)
);

create table if not exists flight_ticket(
    id serial not null,
    flight_id integer not null,
    ticket_id integer not null,
    primary key(id),
    foreign key(flight_id) references flight(id),
    foreign key(ticket_id) references ticket(id)
);
