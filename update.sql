---aircraft---

update aircraft set capacity = 150,
update aircraft set capacity > 200;
update aircraft set capacity < 500;
update aircraft set capacity = 544 where id = 5;
update aircfrat set capacity >= 200 where id = 18;
update aircraft set capacity = null where id > 44;
update aircfart as acf set capacity = 233;
update aircfrat set aircraft_model = null where id = 22;
update aircraft set deleted = null;
update aircraft set deleted where id in (3,4,5,6);

---airport---

update airport set country = 'UK';
update airport set country = 'Italy';
update airport set country = 'UK' where city = 'London';
update airport set city = null where country = 'Rusia';
update airport set city = 'ist' where country = 'Turkey';
update airport set country = null where city = 'Milan';
update airport as AP set country = 'WORLD';
update airport set id = null where country = 'Spain';
update airport set deleted = true where id = 15;
update airport set deleted = false where country like 'a%';

---crew---

update crew set name = 'John Snow';
update crew set position = 'Captain' where id <22;
update crew set position = 'Co Pilot' where id <34;
update crew set position = 'First Officer' where id between 10 and 34;
update crew set aircraft_id = 10 where id = 5;
update crew set name = 'Joan Smith' where id = 7;
update crew set aircraft_id = null where id >= 15;
update crew set position = 'Engineer' where id in (20, 21, 22, 23);
update crew set position = 'Senior' where id = 1;
update crew set aircraft_id = null where position = 'Engineer';

---flight---

update flight set aircraft_id = 20 where destination = 'New York';
update flight set destination = null where id = 33;
update flight set deleted = false;
update flight set deleted = false where airport_id > 20;
update flight set aircraft_id ASC; 
update flight set airport_id = null where id >19;
update flight set destination as dst where id >= 12;
update flight set destination = 'TM' where id = 50;
update flight set airport_id = 0 where aircraft_id >12;
update flight set destination = 'Exclusive' where destination = 'Singapore';

---passanger---

update passenger set name = 'AAAAAA' where id = 5;
update passenger set name = 'IDK' where flight_id > 20;
update passenger set name = null where id >= 14;
update passenger set deleted = true;
update passenger set deleted = false where fight_id = 49;
update passenger set deleted = true where e_mail like 'gmail.com%';
update passenger set deleted = false where e_mail like 'yahoo.com%';
update passenger as s where id = 22;
update passenger set phone_number = 'vodafone' where aircraft_id > 33;
update passenger set aircraft_id DESC;

---route---

update route set id = null where distance > 1000;
update route set id = 0 where distance between 500 and 1500;
update route set duration = 2 where distance > 1000;
update route set id = 200 where distance > 5000;
update route set distance = '50000 km';
update route set id = 0 where duration between 2 and 4;
update route set distance = 10;
update route set duration = 4 where id > 5;
update route set distance = '444433 km' where id = 4;
update route set id = 100;

---seat---

update seat set seat_number = '20A';
update seat set seat_number = '112K' where passenger_id = 5;
update seat set seat_number = '112K' where passenger_id > 20;
update seat set seat_number = '112K' where passenger_ id <2;
update seat set flight_id = 2;
update seat set flight_id = 11 where seat_number = '2C';
update seat set passenger_id > 19 where flight_id < 14;
update seat as s;
update seat as st where flight_id > 15;
update seat set passenger_id = 30;

---ticket---

update ticket as tk;
update ticket set id = 12 where price > 200;
update ticket set seat_id > 30 where flight_id < 4;
update ticket set id = 22 where destination = 'New York';
update ticket set destination = null where flight_id > 5;
update ticket set price = '2000$';
update ticket set price = '100$' where passenger_id > 20;
update ticket set price > 100 where destination = 'Singapore';
update ticket set seat_id < 10 where flight_id >33;
update ticket set destiantion = 'Timbuktu' where id >7;