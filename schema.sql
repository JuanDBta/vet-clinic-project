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
  species_id INTEGER REFERENCES species(id),
  owner_id INTEGER REFERENCES owners(id)
  
); 
