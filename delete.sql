---aircraft---

delete from aircraft where id = 1;
delete from aircraft where aircraft_model = 'Airbus A200';
delete from aircraft where capacity = 150;
delete from aircraft where capacity <150;
delete from aircraft where id between 12 and 22;

---airport---

delete from airport where id = 22;
delete from airport where country = 'Spain';
delete from airport where city = 'Tokyo';
delete from airport where country = 'Italy';
delete from airport where id > 23;

---crew---

delete from crew where id_aircraft = 47;
delete from crew where position = 'Pilot';
delete from crew where id between 32 and 44;
delete from crew where position = 'Co Pilot';
delete from crew where name like 'Smith%';

---flight---

delete from flight where departure = '2024-02-23';
delete from flight where arrival = '2024-03-11';
delete from flight where destination = 'Lima';
delete from flight where aircraft_id = 7;
delete from flight where airport_id >19;

---passenger---

delete from passenger where name like 'Hill%';
delete from passenger where id < 23;
delete from passenger where e_mail like 'gmail.com%';
delete from passenger where e_mail like 'yahoo.com%';
delete from passenger where flight_id > 44;

---route---

delete from route where distance > 1200;
delete from route where id = 22;
delete from route where distance between 2000 and 6000;
delete from route where duration > 5;
delete from route where flight_id = 33;

---seat---

delete from seat where seat_number = '5C';
delete from seat where seat_number like 'C%';
delete from seat where flight_id > 5;
delete from seat where passenger_id < 10;
delete from seat where id = 33;

---ticket---

delete from ticket where destination = 'New York';
delete from ticket where destination = ('Lisbon', 'Dubai');
delete from ticket where price = '220$';
delete from ticket where price > 300;
delete from ticket where seat_id between 12 and 33;
