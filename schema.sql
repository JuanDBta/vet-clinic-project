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
   
  id INTEGER PRIMARY KEY,
  name TEXT,
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL
  
); 

CREATE TABLE vets (

id SERIAL PRIMARY KEY NOT NULL,
name TEXT, 
age: INTEGER,
date_of_graduation: DATE
);

CREATE TABLE specializations (
  vet_id INTEGER REFERENCES NOT NULL vets(id),
  species_id INTEGER REFERENCES NOT NULL species(id),
  PRIMARY KEY (vet_id, species_id)
);

CREATE TABLE visits (
  vet_id INTEGER REFERENCES NOT NULL vets(id),
  animal_id INTEGER REFERENCES NOT NULL animals(id),
  visit_date DATE,
  PRIMARY KEY (vet_id, animal_id)
);


/*Add a column species of type string to your animals table*/
ALTER TABLE animals ADD COLUMN species TEXT;


/* Modify animals table:
Make sure that id is set as autoincremented PRIMARY KEY */
ALTER TABLE animals DROP id;
ALTER TABLE animals ADD COLUMN id SERIAL PRIMARY KEY NOT NULL;

/*Remove column species*/
ALTER TABLE animals DROP COLUMN species;

/*Add column species_id which is a foreign key referencing species table*/
ALTER TABLE animals ADD COLUMN species_id INTEGER;
ADD CONSTRAINT fk_species_id FOREIGN KEY (species_id) REFERENCES species(id);

/*Add column owner_id which is a foreign key referencing the owners table*/
ALTER TABLE animals ADD COLUMN owner_id INTEGER;
ADD CONSTRAINT fk_owner_id FOREIGN KEY (owner_id) REFERENCES owners(id);

/*Modify id column in species table to set NOT NULL*/
ALTER TABLE species
ALTER COLUMN id SET NOT NULL;

/*Modify id column in owners table to set NOT NULL*/
ALTER TABLE owners
ALTER COLUMN id SET NOT NULL;
