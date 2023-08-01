/* Populate database with sample data. */

 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(1,'Agumon','2020-02-03',0,true,10.23,Digimon,Sam Smith);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(2,'Gabumon','2018-11-15',0,true,8,Digimon, Jennifer Orwell);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(3,'Pikachu','2021-01-07',1,false,15.04,Pokemon, Jennifer Orwell);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(4,'Devimon','2017-05-12',5,true,11,Digimon,Bob);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(5,'Charmander','2020-02-08',0,false,-11,Pokemon,Melody Pond);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(6,'Plantmon','2021-11-15',2,true,-5.7,Digimon,Bob);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(7,'Squirtle','1993-04-02',3,false,-12.13,Pokemon,Melody Pond);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(8,'Angemon','2005-06-12',1,true,-45,Digimon,Dean Winchister);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(9,'Boarmon','2005-06-07',7,true,20.4,Digimon,Dean Winchister);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(10,'Blossom','1998-10-13',3,true,17,Pokemon,Melody Pond);
 INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id) VALUES(11,'Ditto','2022-05-14',4,true,22,Pokemon); 
 
 INSERT INTO owners(full_name,age) VALUES(Sam Smith, 34);
 INSERT INTO owners(full_name,age) VALUES(Jennifer Orwell, 19);
 INSERT INTO owners(full_name,age) VALUES(Bob, 45);
 INSERT INTO owners(full_name,age) VALUES(Melody Pond, 77);
 INSERT INTO owners(full_name,age) VALUES(Dean Winchester, 14);
 INSERT INTO owners(full_name,age) VALUES(Jodie Whitaker, 38);

 INSERT INTO species(name) VALUES(Pokemon);
 INSERT INTO species(name) VALUES(Digimon);
