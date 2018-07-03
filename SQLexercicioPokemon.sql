﻿CREATE TABLE pokemons(
	id INT IDENTITY(1,1) PRIMARY KEY(id),
	nome VARCHAR(100),
	);
CREATE TABLE categorias(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	id_pokemon INT,
	FOREIGN KEY(id_pokemon) REFERENCES pokemons(id)
	);

CREATE TABLE fraquezas1(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	id_fraqueza1 INT,
	FOREIGN KEY(id_fraqueza1) REFERENCES pokemons(id)
);

CREATE TABLE fraquezas2(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	id_fraqueza2 INT,
	FOREIGN KEY(id_fraqueza2) REFERENCES pokemons(id)
);


	INSERT INTO pokemons(nome) VALUES
	('Pikachu'),
	('Bulbasaur'),
	('Charmander'),
	('squirtle'),
	('eevee'),
	('Braviary'),
	('Meowth'),
	('chimchar'),
	('Blastoise'),
	('MewTwo');

	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Pikachu'),'Elextric');
	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Bulbasaur'),'seed');
	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Charmander'),'lizard');
	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'squirtle'),'tiny turtle');
	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'eevee'),'Evolution');
	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Braviary'),'Valiant');
	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Meowth'),'scratch cat');
	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'chimchar'),'chim');
	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Blastoise'),'shellfish');
	INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'MewTwo'),'Genetic');


	--PIKACHU
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Pikachu'),'ground');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Pikachu'),'N/A')
	--bulbasaur
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'bulbasaur'),'Fire');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'bulbasaur'),'Ice')
	--charmander
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'charmander'),'Rock');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'charmander'),'Water')
	--squirtle
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'squirtle'),'Electric');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'squirtle'),'Grass');
	--eevee
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'eevee'),'Fighting');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'eevee'),'N/A');
	--Braviary
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Braviary'),'Electric');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Braviary'),'Ice');
	--Meowth
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Meowth'),'Fighting');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Meowth'),'N/A');
	--chimchar
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'chimchar'),'Rock');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'chimchar'),'Water');
	--Blastoise
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Blastoise'),'Electric');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Blastoise'),'Grass');
	--Mewtwo
	INSERT INTO fraquezas1(id_fraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Mewtwo'),'Dark');
	INSERT INTO fraquezas2(id_fraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Mewtwo'),'Ghost'); 