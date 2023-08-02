/*Queries that provide answers to the questions from all projects.*/

 SELECT * FROM animals WHERE name LIKE '%mon';
 SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
 SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
 SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
 SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
 SELECT * FROM animals WHERE neutered = true;
 SELECT * FROM animals WHERE name <> 'Gabumon';
 SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;
 
/*How many animals are there?*/
SELECT COUNT(*) FROM animals;
/*How many animals have never tried to escape?*/
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
/*What is the average weight of animals?*/
SELECT AVG(weight_kg) FROM animals;
/*Who escapes the most, neutered or not neutered animals?*/
SELECT neutered, MAX(escape_attempts) AS max_escape_attempts FROM animals GROUP BY neutered;
/*What is the minimum and maximum weight of each type of animal?*/
SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM animals GROUP BY species;
/*What is the average number of escape attempts per animal type of those born between 1990 and 2000?*/
SELECT species, AVG(escape_attempts) AS avg_escape_attempts FROM animals 
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;

/*What animals belong to Melody Pond?*/
SELECT animals.name
FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.full_name = 'Melody Pond';

/*List of all animals that are pokemon (their type is Pokemon)*/
SELECT animals.name
FROM animals
JOIN species ON animals.species_id = species.id
WHERE species.name = 'Pokemon';


/*List all owners and their animals, remember to include those that don't own any animal*/
SELECT owners.full_name, animals.name
FROM owners
LEFT JOIN animals ON owners.id = animals.owner_id;

/*How many animals are there per species?*/
SELECT species.name, COUNT(*) AS animal_count
FROM animals
JOIN species ON animals.species_id = species.id
GROUP BY species.name;

/*List all Digimon owned by Jennifer Orwell*/
SELECT animals.name
FROM animals
JOIN species ON animals.species_id = species.id
JOIN owners ON animals.owner_id = owners.id
WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell';


/*List all animals owned by Dean Winchester that haven't tried to escape.*/
SELECT animals.name
FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;


/*Who owns the most animals?*/
SELECT owners.full_name, COUNT(*) AS animal_count
FROM owners
JOIN animals ON owners.id = animals.owner_id
GROUP BY owners.full_name
ORDER BY COUNT(*) DESC
LIMIT 1;

/*Who was the last animal seen by William Tatcher?*/
SELECT a.name AS last_animal_seen
FROM visits v
JOIN animals a ON v.animal_id = a.id
WHERE v.vet_id = (SELECT id FROM vets WHERE name = 'William Tatcher')
ORDER BY v.visit_date DESC
LIMIT 1;

/*How many different animals did Stephanie Mendez see?*/
SELECT COUNT(DISTINCT v.animal_id) AS number_of_animals_seen
FROM visits v
WHERE v.vet_id = (SELECT id FROM vets WHERE name = 'Stephanie Mendez');

/*List all vets and their specialties, including vets with no specialties*/
SELECT v.name AS vet_name, s.name AS specialty
FROM vets v
LEFT JOIN specializations sp ON v.id = sp.vet_id
LEFT JOIN species s ON sp.species_id = s.id;

/*List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.*/
SELECT a.name AS animal_name
FROM visits v
JOIN animals a ON v.animal_id = a.id
WHERE v.vet_id = (SELECT id FROM vets WHERE name = 'Stephanie Mendez')
AND v.visit_date BETWEEN '2020-04-01' AND '2020-08-30';

/*What animal has the most visits to vets?*/
SELECT a.name AS animal_name, COUNT(v.animal_id) AS number_of_visits
FROM visits v
JOIN animals a ON v.animal_id = a.id
GROUP BY a.name
ORDER BY COUNT(v.animal_id) DESC
LIMIT 1;

/*Who was Maisy Smith's first visit?*/
SELECT a.name AS first_visit_animal, v.name AS vet_name, v.visit_date
FROM visits v
JOIN animals a ON v.animal_id = a.id
WHERE v.vet_id = (SELECT id FROM vets WHERE name = 'Maisy Smith')
ORDER BY v.visit_date
LIMIT 1;

/*Details for the most recent visit: animal information, vet information, and date of visit.*/
SELECT a.name AS animal_name, v.name AS vet_name, v.visit_date
FROM visits v
JOIN animals a ON v.animal_id = a.id
WHERE v.visit_date = (SELECT MAX(visit_date) FROM visits)
LIMIT 1;

/*How many visits were with a vet that did not specialize in that animal's species?*/
SELECT COUNT(*) AS number_of_visits_without_specialty
FROM visits v
JOIN vets ve ON v.vet_id = ve.id
LEFT JOIN specializations sp ON ve.id = sp.vet_id AND v.animal_id = sp.species_id
WHERE sp.vet_id IS NULL;

/*What specialty should Maisy Smith consider getting? Look for the species she gets the most.*/
SELECT s.name AS suggested_specialty, COUNT(*) AS number_of_visits
FROM visits v
JOIN animals a ON v.animal_id = a.id
JOIN specializations sp ON a.id = sp.species_id
JOIN species s ON sp.species_id = s.id
WHERE v.vet_id = (SELECT id FROM vets WHERE name = 'Maisy Smith')
GROUP BY s.name
ORDER BY COUNT(*) DESC
LIMIT 1;
