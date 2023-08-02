/* Populate database with sample data. */
 
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(1,'Charmander','2020-02-08',0,false,-11,Pokemon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(2,'Plantmon','2021-11-15',2,true,-5.7,Digimon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(3,'Squirtle','1993-04-02',3,false,-12.13,Pokemon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(4,'Angemon','2005-06-12',1,true,-45,Digimon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(5,'Agumon','2020-02-03',0,true,10.23,Digimon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(6,'Gabumon','2018-11-15',0,true,8,Digimon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(7,'Devimon','2017-05-12',5,true,11,Digimon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(8,'Boarmon','2005-06-07',7,true,20.4,Digimon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(9,'Pikachu','2021-01-07',1,false,15.04,Pokemon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(10,'Blossom','1998-10-13',3,true,17,Pokemon);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species) VALUES(11,'Ditto','2022-05-14',4,true,22,Pokemon);

 
 INSERT INTO owners(full_name,age) VALUES('Sam Smith', 34);
 INSERT INTO owners(full_name,age) VALUES('Jennifer Orwell', 19);
 INSERT INTO owners(full_name,age) VALUES('Bob', 45);
 INSERT INTO owners(full_name,age) VALUES('Melody Pond', 77);
 INSERT INTO owners(full_name,age) VALUES('Dean Winchester', 14);
 INSERT INTO owners(full_name,age) VALUES('Jodie Whitaker', 38);

 INSERT INTO species(name) VALUES(Pokemon);
 INSERT INTO species(name) VALUES(Digimon);

/*Modify your inserted animals so it includes the species_id value:
If the name ends in "mon" it will be Digimon
All other animals are Pokemon*/

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = 1
WHERE NOT name LIKE '%mon';

/*Modify your inserted animals to include owner information (owner_id):*/
UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith')
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell')
WHERE name IN ('Gabumon', 'Pikachu');

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob')
WHERE name IN ('Devimon', 'Plantmon');

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond')
WHERE name IN ('Charmander', 'Squirtle', 'Blossom');

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester')
WHERE name IN ('Angemon', 'Boarmon');

