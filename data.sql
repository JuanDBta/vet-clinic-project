/* Populate database with sample data. */
 
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(1,'Charmander','2020-02-08',0,false,-11,1,4);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(2,'Plantmon','2021-11-15',2,true,-5.7,2,3);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(3,'Squirtle','1993-04-02',3,false,-12.13,1,4);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(4,'Angemon','2005-06-12',1,true,-45,2,5);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(5,'Agumon','2020-02-03',0,true,10.23,2,1);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(6,'Gabumon','2018-11-15',0,true,8,2,2);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(7,'Devimon','2017-05-12',5,true,11,2,3);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(8,'Boarmon','2005-06-07',7,true,20.4,2,5);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(9,'Pikachu','2021-01-07',1,false,15.04,1,2);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(10,'Blossom','1998-10-13',3,true,17,1,4);

 
 INSERT INTO owners(id,full_name,age) VALUES(1,'Sam Smith', 34);
 INSERT INTO owners(id,full_name,age) VALUES(2,'Jennifer Orwell', 19);
 INSERT INTO owners(id,full_name,age) VALUES(3,'Bob', 45);
 INSERT INTO owners(id,full_name,age) VALUES(4,'Melody Pond', 77);
 INSERT INTO owners(id,full_name,age) VALUES(5,'Dean Winchester', 14);
 INSERT INTO owners(id,full_name,age) VALUES(6,'Jodie Whitaker', 38);

 INSERT INTO species(id,name) VALUES(1,Pokemon);
 INSERT INTO species(id,name) VALUES(2,Digimon);
