---aircraft---

select * from aircraft;
select aircraft_model from aircraft;
select 'ATR 42' from aircraft;
select *, 4+5 from aircraft;
select aircraft_model, capacity>5  as "peste_5" from aircraft;
select aircraft_model as "am" from aircraft;
select 'Airbus A200' , 4;
select capacity>350 from aircraft;
select capacity>350 as "false" from aircraft;
select id=10 from aircraft;

---airport---

select * from airport;
select * from airport where id>25;
select * from airport where country='UK';
select distinct city from airport;
select * from airport where city='London';
select * from airport where city like 'London';
select * from airport where not city='London';
select country as cy from airport;
select * from airport order by id ASC;
select * from airport order by id DESC;

---crew---

select * from crew;
select *, 7+8 from crew;
select name as "Name" from crew;
select * from crew where position = 'Pilot' and aircraft_id > 15;
select * from crew where position like 'Pilot';
select * from crew where position like '%Pilot%';
select * from crew where id between 4 and 33;
select MAX(aircraft_id) from crew;
select MIN(aircraft_id) from crew;
select count(*) from crew;

---flight---

select * from flight;
select * from flight order by departure ASC;		
select * from flight order by arrival DESC;
select * from flight 
		where destination IN('Singapore', 'London');
select * from flight where aircraft_id > 19;
select * from flight where NOT destination = 'Vienna';
select arrival as "ARRIVAL" from flight;
select departure as "dp" from flight;
select count(*) from flight;
select * from flight where destination like 'Vienna';

---passanger---

select * from passenger;
select * from passenger as "Passng";
select * from passenger where id = 7;
select * from passenger where name like '%Wright%';
select * from passenger where e_mail like '%gmail.com%';
select * from passenger order by phone_number ASC;
select distinct name from passenger;
select * from passenger where aircraft_id between 10 and 39;
select aircraft_id from passenger where aircraft_id between 10 and 39;
select * from passenger where phone_number = '21';

---route---

select * from route;
select * from route where distance like '%00 km%';
select * from route where id = 7;
select * from route where duration > '2h';
select * from route where distance < '1000km';
select * from route order by distance ASC;
select distinct duration from route;
select MAX(duration) as "Numar mediu de ore" from route;
select MIN(distance) from route;
select flight_id, count(*) from route
group by flight_id;

---seat---

select * from seat;
select * from seat order by  seat_number ASC;
select seat_number as "seatnr" from seat;
select * from seat where flight_id > 20;
select * from seat where passenger_id < 32;
select * from seat where seat_number = '2C' OR seat_number = '12E';
select seat_number, count(seat_number) from seat
group by seat_number;
select distinct id from seat;
select * from seat where seat_number not like '2C';
select * from seat as s;

---ticket---

select * from ticket;
select * from ticket as "Tkt";
select * from ticket where id = 7;
select MAX(price) as "Max Price" from ticket;
select MIN(price) from ticket;
select passenger_id, count(*) from ticket
group by passenger_id;
select * from ticket where destination not like '%New York%';
select * from ticket where price > '100';
select passenger_id from ticket where price < '200'; 
select * from ticket where price not like '50%';