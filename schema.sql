/* Database schema to keep the structure of entire database. */

CREATE TABLE owners (
   
  id SERIAL PRIMARY KEY,
  full_name TEXT,
  age DATE,
  
); 

CREATE TABLE species (
   
  id SERIAL PRIMARY KEY,
  name TEXT
  
);

CREATE TABLE animals (
   
  id SERIAL PRIMARY KEY,
  name TEXT,
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL,
  species TEXT
  
); 
/* Modify animals table:
Make sure that id is set as autoincremented PRIMARY KEY */
ALTER TABLE animals DROP id;
ALTER TABLE animals ADD COLUMN id SERIAL PRIMARY KEY;

/*Remove column species*/
ALTER TABLE animals DROP COLUMN species;

/*Add column species_id which is a foreign key referencing species table*/
ALTER TABLE animals ADD COLUMN species_id INTEGER;
ADD CONSTRAINT fk_species_id FOREIGN KEY (species_id) REFERENCES species(id);

/*Add column owner_id which is a foreign key referencing the owners table*/
ALTER TABLE animals ADD COLUMN owner_id INTEGER;
ADD CONSTRAINT fk_owner_id FOREIGN KEY (owner_id) REFERENCES owners(id);


