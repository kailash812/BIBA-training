select *from sys.tables;

INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('89354034-20d9-4c3d-8195-3294bfd9dbc5', 'Bellyflop', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('ae91cf1c-f972-42f3-8160-6c04d935699c', 'Snowy', 'Husky', 'White', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('37df3388-b0f4-4f0d-b6ef-0d840923a4d8', 'Princess', 'Pomeranian', 'Black', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('94545432-d27a-4ac8-ab7c-38270d7535f3', 'Cricket', 'Chihuahua', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('a1e7a7fc-b429-41ec-9924-8bb39dd397c8', 'Princess', 'Poodle', 'Purple', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('5138ed53-2ab2-400b-973c-91186f8c673d', 'Spot', 'Dalmation', 'Black and White', 'Male', 0);

SELECT * FROM animals;
SELECT breed FROM animals;
SELECT name FROM animals WHERE gender = 'Female';
SELECT id FROM animals WHERE status = 0;

UPDATE animals SET color = 'Brown' WHERE id = 'a1e7a7fc-b429-41ec-9924-8bb39dd397c8';
UPDATE animals SET color = 'Brown' WHERE name = 'Princess';
UPDATE animals SET color = 'Brown' WHERE color = 'Purple';

DELETE FROM animals WHERE id = '89354034-20d9-4c3d-8195-3294bfd9dbc5';

drop table adoptions;

SELECT* FROM adoption;
CREATE TABLE adoption (animal_id varchar(20) NOT NULL, name char(20), contact char(20), dates date);
INSERT INTO adoption (animal_id, name, contact,dateS) VALUES ('945454', 'Pinocchio', 'realboy', CURRENT_TIMESTAMP);

select * from animals;
UPDATE animals SET status = 1 WHERE id = 'a1e7a7fc-b429-41ec-9924-8bb39dd397c8';
INSERT INTO adoption (animal_id, name, contact, dates) VALUES ('a1', 'Patalie', 'poodlequeen', CURRENT_TIMESTAMP);
UPDATE animals SET status = 1 WHERE id = '5138ed53-2ab2-400b-973c-91186f8c673d';
INSERT INTO adoption (animal_id, name, contact, dates) VALUES ('51', 'Ella', 'ellacrew', CURRENT_TIMESTAMP);

SELECT* FROM adoption;
SELECT * FROM adoption ORDER BY dates DESC;
SELECT * FROM animals WHERE status = 1;

ALTER TABLE animals ADD species varchar(20);

UPDATE animals SET species = 'Dog';

INSERT INTO animals (id, name, species, breed, color, gender, status) VALUES ('11d6fa07-449f-4053-a7cb-ae4ec8570f3f', 'Meowmix', 'Cat', 'Munchkin', 'Yellow', 'Female', 0);
INSERT INTO animals (id, name, species, breed, color, gender, status) VALUES ('4e55860a-ec39-494b-845a-2e0a6496bf9b', 'Ash', 'Cat', 'Persian', 'Gray', 'Female', 0);
INSERT INTO animals (id, name, species, breed, color, gender, status) VALUES ('e80b92e5-98ed-458d-885d-b9e05d0d123e', 'Tiger', 'Cat', 'Bengal', 'Brown', 'Male', 0);

select * from animals;

CREATE TABLE shelters (id INTEGER, name varchar(20), location varchar(20));
INSERT INTO shelters (id, name, location) VALUES (1, 'Animals 4 Homes', 'Red City');
select*from shelters;
ALTER TABLE animals ADD  shelter INTEGER;
UPDATE animals SET shelter = 1;

INSERT INTO shelters (id, name, location) VALUES (2, 'Adopt A Buddy', 'Green Town');
INSERT INTO shelters (id, name, location) VALUES (3, 'Fluffy Animals', 'Blue Hills');

INSERT INTO animals (id, name, shelter, species, breed, color, gender, status) VALUES ('ac1a773d-6912-45cc-b296-1b58d13dbd32', 'Snoops', 2, 'Dog', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, shelter, species, breed, color, gender, status) VALUES ('56e9be70-ed24-4949-bb54-70329c2caf82', 'Salt', 2, 'Cat', 'Turkish Angora', 'White', 'Female', 0);
INSERT INTO animals (id, name, shelter, species, breed, color, gender, status) VALUES ('b91df9f1-8e3d-4cce-a4ba-9d1a3ad6a12b', 'Fuzz', 3, 'Dog', 'Papillon', 'Gray', 'Male', 0);

create table region(id integer, area varchar(20), country varchar(20));

insert into region(id, area , country) values(1,'southern','india');
insert into region(id, area , country) values(2,'western','india');
insert into region(id, area , country) values(2,'eastern','india');

select* from region;

delete from region where country='india';