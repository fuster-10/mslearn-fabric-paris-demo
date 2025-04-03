-- Checking existance
IF OBJECT_ID('DimSpecies', 'U') IS NOT NULL
    DROP TABLE DimSpecies;

-- DimSpecies Table Definition
CREATE TABLE DimSpecies (
    id INT,
    name VARCHAR(255),
    classification VARCHAR(255),
    designation VARCHAR(255),
    average_height DECIMAL(10, 2),
    skin_colors VARCHAR(255),
    hair_colors VARCHAR(255),
    eye_colors VARCHAR(255),
    average_lifespan DECIMAL(10, 2),
    language VARCHAR(255),
    homeworld VARCHAR(255)
);

-- DimSpecies Data Insertion
INSERT INTO DimSpecies (id, name, classification, designation, average_height, skin_colors, hair_colors, eye_colors, average_lifespan, language, homeworld)
VALUES
    (1, 'Human', 'Mammal', 'Sentient', 1.8, 'Light, Dark', 'Various', 'Various', 79.0, 'Galactic Basic', 'Various'),
    (2, 'Yoda''s species', 'Unknown', 'Sentient', 0.66, 'Green', 'White', 'Brown', 900.0, 'Galactic Basic', 'Unknown'),
    (3, 'Wookiee', 'Mammal', 'Sentient', 2.28, 'Brown', 'Brown', 'Blue', 400.0, 'Shyriiwook', 'Kashyyyk'),
    (4, 'Gungan', 'Amphibian', 'Sentient', 1.96, 'Orange', 'None', 'Orange', 70.0, 'Gungan', 'Naboo'),
    (5, 'Twi''lek', 'Mammal', 'Sentient', 1.8, 'Blue, Green, Red, Yellow', 'None', 'Various', 80.0, 'Twi''leki', 'Ryloth'),
    (6, 'Mon Calamari', 'Amphibian', 'Sentient', 1.7, 'Orange', 'None', 'Red', 70.0, 'Mon Calamarian', 'Mon Cala'),
    (7, 'Rodian', 'Reptilian', 'Sentient', 1.7, 'Green', 'None', 'Black', 78.0, 'Rodese', 'Rodia'),
    (8, 'Droid', 'Artificial', 'Non-sentient', NULL, 'Various', 'None', 'Various', NULL, 'Binary', 'None'),
    (9, 'Trandoshan', 'Reptilian', 'Sentient', 2.0, 'Green', 'None', 'Red', 70.0, 'Dosh', 'Trandosha'),
    (10, 'Kel Dor', 'Mammal', 'Sentient', 1.88, 'Orange', 'None', 'Black', 70.0, 'Kel Dor', 'Dorin'),
    (11, 'Nautolan', 'Amphibian', 'Sentient', 1.96, 'Green', 'None', 'Black', 80.0, 'Nautila', 'Glee Anselm'),
    (12, 'Togruta', 'Mammal', 'Sentient', 1.8, 'Red', 'None', 'Blue', 94.0, 'Togruti', 'Shili'),
    (13, 'Hutt', 'Gastropod', 'Sentient', 3.9, 'Green', 'None', 'Orange', 1000.0, 'Huttese', 'Nal Hutta'),
    (14, 'Zabrak', 'Mammal', 'Sentient', 1.8, 'Red', 'None', 'Yellow', 80.0, 'Zabraki', 'Iridonia'),
    (15, 'Muun', 'Mammal', 'Sentient', 2.0, 'Pale', 'None', 'Black', 100.0, 'Muun', 'Muunilinst'),
    (16, 'Geonosian', 'Insectoid', 'Sentient', 1.75, 'Brown', 'None', 'Red', 90.0, 'Geonosian', 'Geonosis'),
    (17, 'Chiss', 'Mammal', 'Sentient', 1.8, 'Blue', 'Blue-black', 'Red', 80.0, 'Cheunh', 'Csilla'),
    (18, 'Mirialan', 'Mammal', 'Sentient', 1.75, 'Green', 'Black', 'Blue', 70.0, 'Mirialan', 'Mirial'),
    (19, 'Kaminoan', 'Amphibian', 'Sentient', 2.0, 'Pale', 'None', 'Black', 80.0, 'Kaminoan', 'Kamino'),
    (20, 'Chadra-Fan', 'Mammal', 'Sentient', 1.0, 'Brown', 'Brown', 'Black', 50.0, 'Chadrafan', 'Chad'),
    (21, 'Dathomirian', 'Hybrid', 'Sentient', 1.7, 'Pale', 'None', 'Yellow', 60.0, 'Paecian', 'Dathomir'),
    (22, 'Duros', 'Reptilian', 'Sentient', 1.9, 'Blue', 'None', 'Red', 70.0, 'Durese', 'Duro'),
    (23, 'Ewok', 'Mammal', 'Sentient', 1.0, 'Brown', 'Brown', 'Brown', 50.0, 'Ewokese', 'Endor'),
    (24, 'Gamorrean', 'Mammal', 'Sentient', 1.8, 'Green', 'None', 'Red', 45.0, 'Gamorrean', 'Gamorr'),
    (25, 'Ithorian', 'Mammal', 'Sentient', 2.0, 'Brown', 'None', 'Black', 85.0, 'Ithorese', 'Ithor'),
    (26, 'Jawa', 'Mammal', 'Sentient', 1.0, 'Unknown', 'None', 'Yellow', 80.0, 'Jawaese', 'Tatooine'),
    (27, 'Klatooinian', 'Reptilian', 'Sentient', 1.8, 'Brown', 'None', 'Black', 90.0, 'Klatooinian', 'Klatooine'),
    (28, 'Nikto', 'Reptilian', 'Sentient', 1.8, 'Red', 'None', 'Black', 68.0, 'Nikto', 'Kintan'),
    (29, 'Quarren', 'Amphibian', 'Sentient', 1.8, 'Orange', 'None', 'Blue', 79.0, 'Quarrenese', 'Mon Cala'),
    (30, 'Sullustan', 'Mammal', 'Sentient', 1.6, 'Light', 'None', 'Black', 70.0, 'Sullustese', 'Sullust'),
    (31, 'Talz', 'Mammal', 'Sentient', 2.0, 'White', 'None', 'Blue', 60.0, 'Talzzi', 'Alzoc III'),
    (32, 'Tusken Raider', 'Mammal', 'Sentient', 1.8, 'Unknown', 'Unknown', 'Unknown', 70.0, 'Tusken', 'Tatooine'),
    (33, 'Ugnaught', 'Mammal', 'Sentient', 1.0, 'Pink', 'None', 'Black', 200.0, 'Ugnaught', 'Gentes'),
    (34, 'Weequay', 'Mammal', 'Sentient', 1.7, 'Brown', 'Brown', 'Black', 91.0, 'Weequay', 'Sriluur'),
    (35, 'Zygerrian', 'Mammal', 'Sentient', 1.8, 'Tan', 'None', 'Blue', 85.0, 'Zygerrian', 'Zygerria'),
    (36, 'Jedi', 'Mammal', 'Sentient', 1.8, 'Various', 'Various', 'Various', 120.0, 'Galactic Basic', 'Various'),
    (37, 'Mandalorian', 'Mammal', 'Sentient', 1.8, 'Various', 'Various', 'Various', 80.0, 'Mando''a', 'Mandalore'),
    (38, 'Yarkora', 'Mammal', 'Sentient', 2.0, 'White', 'None', 'Black', 200.0, 'Yarkoran', 'Yarkora'),
    (39, 'Toydarian', 'Mammal', 'Sentient', 1.2, 'Blue, Green', 'None', 'Yellow', 91.0, 'Toydarian', 'Toydaria'),
    (40, 'Kaminoan', 'Amphibian', 'Sentient', 2.0, 'Pale', 'None', 'Black', 80.0, 'Kaminoan', 'Kamino');

-- Checking existance
IF OBJECT_ID('DimPlanets', 'U') IS NOT NULL
    DROP TABLE DimPlanets;

-- Creating the Dimension Table for Planets
CREATE TABLE DimPlanets (
    id INT,
    name VARCHAR(100) NOT NULL,
    diameter FLOAT,
    rotation_period FLOAT,
    orbital_period FLOAT,
    gravity VARCHAR(50),
    population BIGINT,
    climate VARCHAR(255),
    terrain VARCHAR(255),
    surface_water FLOAT,
    residents VARCHAR(255),
    films VARCHAR(255)
);

-- Inserting Data into the Dimension Table
INSERT INTO DimPlanets (id, name, diameter, rotation_period, orbital_period, gravity, population, climate, terrain, surface_water, residents, films)
VALUES
(1, 'Tatooine', 10465.0, 23.0, 304.0, '1 standard', 200000, 'arid', 'desert', 1.0, 'Anakin Skywalker, Shmi Skywalker, Luke Skywalker, C-3PO', 'A New Hope, The Phantom Menace, Attack of the Clones, Revenge of the Sith'),
(2, 'Alderaan', 12500.0, 24.0, 364.0, '1 standard', 2000000000, 'temperate', 'grasslands, mountains', 40.0, 'Leia Organa', 'A New Hope, Revenge of the Sith'),
(3, 'Naboo', 12120.0, 26.0, 312.0, '1 standard', 4500000000, 'temperate', 'grassy hills, swamps, forests, mountains', 12.0, 'Padmé Amidala, Jar Jar Binks, Sheev Palpatine', 'The Phantom Menace, Attack of the Clones, Revenge of the Sith'),
(4, 'Stewjon', NULL, NULL, NULL, '1 standard', NULL, 'temperate', 'grasslands, lakes', NULL, 'Obi-Wan Kenobi', NULL),
(5, 'Corellia', 11000.0, 25.0, 329.0, '1 standard', 3000000000, 'temperate', 'plains, urban, forests, hills', 70.0, 'Han Solo', 'Solo: A Star Wars Story'),
(6, 'Kashyyyk', 12765.0, 26.0, 381.0, '1 standard', 45000000, 'tropical', 'forests, jungles', 60.0, 'Chewbacca', 'Revenge of the Sith'),
(7, 'Kamino', 19720.0, 27.0, 463.0, '1 standard', 1000000000, 'temperate', 'ocean', 100.0, 'Jango Fett', 'Attack of the Clones'),
(8, 'Mon Cala', 11030.0, 21.0, 398.0, '1 standard', 27000000000, 'temperate', 'oceans, islands, marshes', 100.0, 'Admiral Ackbar', 'Return of the Jedi, The Last Jedi'),
(9, 'Geonosis', 11370.0, 30.0, 256.0, '0.9 standard', 100000000000, 'temperate, arid', 'rock, desert, canyons, mesas', 5.0, 'Poggle the Lesser', 'Attack of the Clones, The Clone Wars'),
(10, 'Jakku', NULL, 23.0, 298.0, '0.9 standard', NULL, 'arid', 'deserts, mesas', 8.0, 'Rey', 'The Force Awakens, The Rise of Skywalker'),
(11, 'Yavin 4', 10200.0, 24.0, 4818.0, '1 standard', 1000, 'temperate, tropical', 'jungles, forests', 8.0, 'Poe Dameron', 'A New Hope, Rogue One, The Rise of Skywalker'),
(12, 'Rodia', 7549.0, 29.0, 305.0, '1 standard', 1300000000, 'tropical, humid', 'rainforests, oceans', 60.0, 'Greedo', 'The Clone Wars'),
(13, 'Coruscant', 12240.0, 24.0, 365.0, '1 standard', 1000000000000, 'temperate', 'urban', 0.0, 'Palpatine', 'The Phantom Menace, Attack of the Clones, Revenge of the Sith, The Clone Wars, The Rise of Skywalker');

-- Checking existance
IF OBJECT_ID('DimCharacters', 'U') IS NOT NULL
    DROP TABLE DimCharacters;


-- Creating the Dimension Table
CREATE TABLE DimCharacters (
    id INT,
    name VARCHAR(100) NOT NULL,
    species VARCHAR(100),
    gender VARCHAR(50),
    height DECIMAL(5,2),
    weight DECIMAL(5,2),
    hair_color VARCHAR(50),
    eye_color VARCHAR(50),
    skin_color VARCHAR(50),
    year_born INT,
    homeworld VARCHAR(100),
    year_died INT NULL,
    description TEXT
);

-- Inserting Data into the Dimension Table
INSERT INTO DimCharacters (id, name, species, gender, height, weight, hair_color, eye_color, skin_color, year_born, homeworld, year_died, description)
VALUES
(1, 'Luke Skywalker', 'Human', 'Male', 1.72, 77.0, 'Blond', 'Blue', 'Light', 19, 'Tatooine', 34, 'The main protagonist of the original trilogy.'),
(2, 'Leia Organa', 'Human', 'Female', 1.50, 49.0, 'Brown', 'Brown', 'Light', 19, 'Alderaan', 35, 'A leader in the Rebel Alliance and twin sister of Luke Skywalker.'),
(3, 'Darth Vader', 'Human', 'Male', 2.02, 136.0, 'None', 'Yellow', 'Pale', 41, 'Tatooine', 4, 'The Sith Lord formerly known as Anakin Skywalker.'),
(4, 'Yoda', 'Yoda''s species', 'Male', 0.66, 17.0, 'White', 'Brown', 'Green', 896, 'Unknown', 4, 'A wise and powerful Jedi Master.'),
(5, 'Han Solo', 'Human', 'Male', 1.80, 80.0, 'Brown', 'Hazel', 'Light', 29, 'Corellia', 34, 'A smuggler turned hero in the Rebel Alliance.'),
(6, 'Chewbacca', 'Wookiee', 'Male', 2.28, 112.0, 'Brown', 'Blue', 'Brown', 200, 'Kashyyyk', NULL, 'A loyal Wookiee and co-pilot of the Millennium Falcon.'),
(7, 'Obi-Wan Kenobi', 'Human', 'Male', 1.82, 81.0, 'White', 'Blue-gray', 'Light', 57, 'Stewjon', 0, 'A Jedi Master who mentored Anakin and Luke Skywalker.'),
(8, 'Emperor Palpatine', 'Human', 'Male', 1.73, 75.0, 'None', 'Yellow', 'Pale', 82, 'Naboo', 35, 'The Sith Lord who became Emperor of the galaxy.'),
(9, 'Anakin Skywalker', 'Human', 'Male', 1.88, 84.0, 'Blond', 'Blue', 'Light', 41, 'Tatooine', 4, 'A Jedi Knight who fell to the dark side and became Darth Vader.'),
(10, 'Padmé Amidala', 'Human', 'Female', 1.65, 45.0, 'Brown', 'Brown', 'Light', 46, 'Naboo', 19, 'The queen-turned-senator of Naboo and wife of Anakin Skywalker.'),
(11, 'Qui-Gon Jinn', 'Human', 'Male', 1.93, 89.0, 'Brown', 'Blue', 'Light', 92, 'Coruscant', 32, 'A Jedi Master who discovered Anakin Skywalker.'),
(12, 'Mace Windu', 'Human', 'Male', 1.88, 84.0, 'None', 'Brown', 'Dark', 72, 'Haruun Kal', 19, 'A Jedi Master and member of the Jedi High Council.'),
(13, 'Jar Jar Binks', 'Gungan', 'Male', 1.96, 66.0, 'None', 'Orange', 'Orange', 52, 'Naboo', NULL, 'A clumsy Gungan who became a representative in the Galactic Senate.'),
(14, 'Count Dooku', 'Human', 'Male', 1.93, 80.0, 'White', 'Brown', 'Light', 102, 'Serenno', 19, 'A former Jedi who became Darth Tyranus, a Sith Lord.'),
(15, 'Rey', 'Human', 'Female', 1.70, 54.0, 'Brown', 'Hazel', 'Light', 15, 'Jakku', NULL, 'The main protagonist of the sequel trilogy.'),
(16, 'Finn', 'Human', 'Male', 1.78, 73.0, 'Black', 'Brown', 'Dark', 11, 'Unknown', NULL, 'A former stormtrooper who joins the Resistance.'),
(17, 'Poe Dameron', 'Human', 'Male', 1.76, 79.0, 'Brown', 'Brown', 'Light', 2, 'Yavin 4', NULL, 'A skilled pilot and commander in the Resistance.'),
(18, 'Kylo Ren', 'Human', 'Male', 1.89, 89.0, 'Black', 'Brown', 'Light', 5, 'Chandrila', 35, 'A dark side user formerly known as Ben Solo.'),
(19, 'BB-8', 'Droid', 'None', NULL, NULL, 'None', 'None', 'White', NULL, 'None', NULL, 'A spherical astromech droid.'),
(20, 'C-3PO', 'Droid', 'None', 1.71, NULL, 'None', 'None', 'Gold', 112, 'Tatooine', NULL, 'A protocol droid fluent in over six million forms of communication.');


-- Checking existance
IF OBJECT_ID('FactQuotes', 'U') IS NOT NULL
    DROP TABLE FactQuotes;

-- FactQuotes Table Definition
CREATE TABLE FactQuotes (
    id INT,
    character_name VARCHAR(255),
    quote VARCHAR(MAX),
    source VARCHAR(255)
);

-- FactQuotes Data Insertion
INSERT INTO FactQuotes (id, character_name, quote, source)
VALUES
    (1, 'Luke Skywalker', 'May the Force be with you.', 'A New Hope'),
    (2, 'Darth Vader', 'I am your father.', 'The Empire Strikes Back'),
    (3, 'Yoda', 'Do or do not, there is no try.', 'The Empire Strikes Back'),
    (4, 'Han Solo', 'I''ve got a bad feeling about this.', 'A New Hope'),
    (5, 'Admiral Ackbar', 'It''s a trap!', 'Return of the Jedi'),
    (6, 'Leia Organa', 'Help me, Obi-Wan Kenobi. You''re my only hope.', 'A New Hope'),
    (7, 'Darth Vader', 'I find your lack of faith disturbing.', 'A New Hope'),
    (8, 'Obi-Wan Kenobi', 'The Force will be with you. Always.', 'A New Hope'),
    (9, 'Obi-Wan Kenobi', 'You were the Chosen One!', 'Revenge of the Sith'),
    (10, 'Yoda', 'Fear is the path to the dark side.', 'The Phantom Menace'),
    (11, 'Darth Vader', 'Just for once, let me look on you with my own eyes.', 'Return of the Jedi'),
    (12, 'Obi-Wan Kenobi', 'In my experience, there is no such thing as luck.', 'A New Hope'),
    (13, 'Han Solo', 'I’ve got a bad feeling about this.', 'The Empire Strikes Back'),
    (14, 'Luke Skywalker', 'I am a Jedi, like my father before me.', 'Return of the Jedi'),
    (15, 'Qui-Gon Jinn', 'Your focus determines your reality.', 'The Phantom Menace'),
    (16, 'Darth Vader', 'The Force is strong with this one.', 'A New Hope'),
    (17, 'Padmé Amidala', 'I will not let this Republic that has stood for a thousand years be split in two.', 'Attack of the Clones'),
    (18, 'Qui-Gon Jinn', 'There’s always a bigger fish.', 'The Phantom Menace'),
    (19, 'Padmé Amidala', 'So this is how liberty dies. With thunderous applause.', 'Revenge of the Sith'),
    (20, 'Emperor Palpatine', 'Power! Unlimited power!', 'Revenge of the Sith'),
    (21, 'Emperor Palpatine', 'The dark side of the Force is a pathway to many abilities some consider to be unnatural.', 'Revenge of the Sith'),
    (22, 'Shmi Skywalker', 'You can’t stop the change, any more than you can stop the suns from setting.', 'The Phantom Menace'),
    (23, 'Obi-Wan Kenobi', 'These aren’t the droids you’re looking for.', 'A New Hope'),
    (24, 'Count Dooku', 'I sense great fear in you, Skywalker.', 'Attack of the Clones'),
    (25, 'Yoda', 'There is no emotion, there is peace.', 'The Empire Strikes Back'),
    (26, 'Yoda', 'Once you start down the dark path, forever will it dominate your destiny.', 'The Empire Strikes Back'),
    (27, 'Yoda', 'A Jedi uses the Force for knowledge and defense, never for attack.', 'The Empire Strikes Back'),
    (28, 'Obi-Wan Kenobi', 'You will find that many of the truths we cling to depend greatly on our own point of view.', 'Return of the Jedi'),
    (29, 'Han Solo', 'Never tell me the odds!', 'The Empire Strikes Back'),
    (30, 'Obi-Wan Kenobi', 'In my experience, there''s no such thing as luck.', 'A New Hope'),
    (31, 'Obi-Wan Kenobi', 'I have a bad feeling about this.', 'The Phantom Menace'),
    (32, 'Han Solo', 'It’s not my fault.', 'The Empire Strikes Back'),
    (33, 'Luke Skywalker', 'Do you know what I’ve become?', 'The Empire Strikes Back'),
    (34, 'Anakin Skywalker', 'I can’t watch anymore.', 'Return of the Jedi'),
    (35, 'Luke Skywalker', 'I’ll never turn to the dark side.', 'Return of the Jedi'),
    (36, 'Obi-Wan Kenobi', 'Remember, the Force will be with you, always.', 'A New Hope'),
    (37, 'Anakin Skywalker', 'This is where the fun begins.', 'Revenge of the Sith'),
    (38, 'Boba Fett', 'He’s no good to me dead.', 'The Empire Strikes Back'),
    (39, 'Darth Vader', 'I am altering the deal. Pray I don’t alter it any further.', 'The Empire Strikes Back'),
    (40, 'Opening Crawl', 'A long time ago in a galaxy far, far away…', 'A New Hope'),
    (41, 'Obi-Wan Kenobi', 'Your eyes can deceive you; don’t trust them.', 'A New Hope'),
    (42, 'Gold Five', 'Stay on target.', 'A New Hope'),
    (43, 'Luke Skywalker', 'You serve your master well. And you will be rewarded.', 'Return of the Jedi'),
    (44, 'Han Solo', 'Chewie, we’re home.', 'The Force Awakens'),
    (45, 'Leia Organa', 'I love you.', 'The Empire Strikes Back'),
    (46, 'Han Solo', 'I know.', 'The Empire Strikes Back'),
    (47, 'Han Solo', 'You’re all clear, kid. Now let’s blow this thing and go home.', 'A New Hope'),
    (48, 'C-3PO', 'We’re doomed.', 'A New Hope'),
    (49, 'Darth Vader', 'When I left you, I was but the learner. Now I am the master.', 'A New Hope'),
    (50, 'Han Solo', 'Boba Fett? Boba Fett? Where?', 'Return of the Jedi'),
    (51, 'Han Solo', 'I thought they smelled bad on the outside.', 'The Empire Strikes Back'),
    (52, 'Leia Organa', 'Would somebody get this big walking carpet out of my way?', 'A New Hope'),
    (53, 'Obi-Wan Kenobi', 'Strike me down, and I will become more powerful than you could possibly imagine.', 'A New Hope'),
    (54, 'Luke Skywalker', 'Your overconfidence is your weakness.', 'Return of the Jedi'),
    (55, 'Darth Vader', 'You have failed me for the last time, Admiral.', 'The Empire Strikes Back'),
    (56, 'Darth Vader', 'I find your lack of faith disturbing.', 'A New Hope'),
    (57, 'Yoda', 'Judge me by my size, do you?', 'The Empire Strikes Back'),
    (58, 'Yoda', 'Luminous beings are we, not this crude matter.', 'The Empire Strikes Back'),
    (59, 'Obi-Wan Kenobi', 'You were right about one thing, Master. The negotiations were short.', 'The Phantom Menace'),
    (60, 'Obi-Wan Kenobi', 'I will do what I must.', 'Revenge of the Sith'),
    (61, 'Han Solo', 'Who’s scruffy-looking?', 'The Empire Strikes Back'),
    (62, 'C-3PO', 'We seem to be made to suffer. It’s our lot in life.', 'A New Hope'),
    (63, 'Han Solo', 'Good against remotes is one thing. Good against the living, that’s something else.', 'A New Hope'),
    (64, 'Han Solo', 'Great, kid. Don’t get cocky.', 'A New Hope'),
    (65, 'Darth Vader', 'You don’t know the power of the dark side.', 'Return of the Jedi'),
    (66, 'Yoda', 'Wars not make one great.', 'The Empire Strikes Back'),
    (67, 'Luke Skywalker', 'I’ve got a bad feeling about this.', 'Return of the Jedi'),
    (68, 'Lando Calrissian', 'I’ve just made a deal that will keep the Empire out of here forever.', 'The Empire Strikes Back'),
    (69, 'Admiral Piett', 'Bounty hunters. We don’t need their scum.', 'The Empire Strikes Back'),
    (70, 'Obi-Wan Kenobi', 'That’s no moon. It’s a space station.', 'A New Hope'),
    (71, 'Darth Vader', 'The circle is now complete.', 'A New Hope'),
    (72, 'Emperor Palpatine', 'So be it, Jedi.', 'Return of the Jedi'),
    (73, 'Luke Skywalker', 'My name is Luke Skywalker. I’m here to rescue you.', 'A New Hope'),
    (74, 'Han Solo', 'I think I just blasted it.', 'A New Hope'),
    (75, 'Darth Vader', 'I am your father.', 'The Empire Strikes Back'),
    (76, 'Luke Skywalker', 'You have failed, your highness. I am a Jedi, like my father before me.', 'Return of the Jedi'),
    (77, 'Leia Organa', 'You do have your moments. Not many, but you have them.', 'The Empire Strikes Back'),
    (78, 'Lando Calrissian', 'You look absolutely beautiful. You truly belong here with us among the clouds.', 'The Empire Strikes Back'),
    (79, 'Han Solo', 'I’ll see you in hell!', 'The Empire Strikes Back'),
    (80, 'Obi-Wan Kenobi', 'The Force will be with you, always.', 'A New Hope'),
    (81, 'Obi-Wan Kenobi', 'This is the weapon of a Jedi Knight. Not as clumsy or random as a blaster; an elegant weapon for a more civilized age.', 'A New Hope'),
    (82, 'Yoda', 'Fear leads to anger, anger leads to hate, hate leads to suffering.', 'The Phantom Menace'),
    (83, 'Yoda', 'Adventure. Excitement. A Jedi craves not these things.', 'The Empire Strikes Back'),
    (84, 'Darth Vader', 'I am your father.', 'The Empire Strikes Back'),
    (85, 'Yoda', 'You must unlearn what you have learned.', 'The Empire Strikes Back'),
    (86, 'Leia Organa', 'You do have your moments. Not many, but you have them.', 'The Empire Strikes Back'),
    (87, 'Darth Vader', 'I’ve been waiting for you, Obi-Wan. We meet again, at last.', 'A New Hope'),
    (88, 'Leia Organa', 'I can’t believe he’s gone.', 'Return of the Jedi'),
    (89, 'Han Solo', 'I’m out of it for a little while, everyone gets delusions of grandeur.', 'Return of the Jedi'),
    (90, 'Luke Skywalker', 'I am a Jedi, like my father before me.', 'Return of the Jedi'),
    (91, 'Han Solo', 'Laugh it up, fuzzball.', 'The Empire Strikes Back'),
    (92, 'Obi-Wan Kenobi', 'The Force will be with you, always.', 'A New Hope'),
    (93, 'Emperor Palpatine', 'Now, young Skywalker, you will die.', 'Return of the Jedi'),
    (94, 'Darth Vader', 'I find your lack of faith disturbing.', 'A New Hope'),
    (95, 'Han Solo', 'You’re all clear, kid. Now let’s blow this thing and go home.', 'A New Hope'),
    (96, 'Luke Skywalker', 'I am a Jedi, like my father before me.', 'Return of the Jedi'),
    (97, 'Luke Skywalker', 'I’ll never turn to the dark side.', 'Return of the Jedi'),
    (98, 'Han Solo', 'I think you just can’t bear to let a gorgeous guy like me out of your sight.', 'The Empire Strikes Back'),
    (99, 'Leia Organa', 'Why, you stuck-up, half-witted, scruffy-looking Nerf herder!', 'The Empire Strikes Back');

-- Checking existance
IF OBJECT_ID('DimVehicles', 'U') IS NOT NULL
    DROP TABLE DimVehicles;


-- DimVehicles Table Definition
CREATE TABLE DimVehicles (
    id INT,
    name VARCHAR(255),
    model VARCHAR(255),
    manufacturer VARCHAR(255),
    cost_in_credits DECIMAL(20, 2),
    length DECIMAL(10, 2),
    max_atmosphering_speed DECIMAL(10, 2),
    crew INT,
    passengers INT,
    cargo_capacity DECIMAL(20, 2),
    consumables VARCHAR(255),
    vehicle_class VARCHAR(255),
    pilots VARCHAR(MAX),
    films VARCHAR(MAX)
);

-- DimVehicles Data Insertion
INSERT INTO DimVehicles (id, name, model, manufacturer, cost_in_credits, length, max_atmosphering_speed, crew, passengers, cargo_capacity, consumables, vehicle_class, pilots, films)
VALUES
    (1, 'Snowspeeder', 't-47 airspeeder', 'Incom corporation', 0.00, 4.50, 650.00, 2, 0, 10.00, 'none', 'airspeeder', 'Luke Skywalker, Wedge Antilles', 'The Empire Strikes Back'),
    (2, 'TIE Fighter', 'Twin Ion Engine/Ln Starfighter', 'Sienar Fleet Systems', 75000.00, 6.30, 1200.00, 1, 0, 65.00, '2 days', 'Starfighter', NULL, 'A New Hope, The Empire Strikes Back, Return of the Jedi'),
    (3, 'Sand Crawler', 'Digger Crawler', 'Corellia Mining Corporation', 150000.00, 36.80, 30.00, 46, 30, 50000.00, '2 months', 'Wheeled', NULL, 'A New Hope'),
    (4, 'X-34 Landspeeder', 'X-34 Landspeeder', 'SoroSuub Corporation', 10550.00, 3.40, 250.00, 1, 1, 5.00, 'None', 'Landspeeder', 'Luke Skywalker', 'A New Hope'),
    (5, 'TIE Bomber', 'TIE/sa Bomber', 'Sienar Fleet Systems', 86500.00, 7.80, 850.00, 1, 0, 15.00, '2 days', 'Bomber', NULL, 'The Empire Strikes Back'),
    (6, 'AT-AT', 'All Terrain Armored Transport', 'Kuat Drive Yards', 226500.00, 20.60, 60.00, 5, 40, 1000.00, 'None', 'Walker', NULL, 'The Empire Strikes Back, Return of the Jedi'),
    (7, 'AT-ST', 'All Terrain Scout Transport', 'Kuat Drive Yards', 89100.00, 8.60, 90.00, 2, 0, 200.00, 'None', 'Walker', NULL, 'The Empire Strikes Back, Return of the Jedi'),
    (8, 'Sith Speeder', 'FC-20 Speeder Bike', 'Razalon', 4000.00, 1.50, 180.00, 1, 0, 5.00, 'None', 'Speeder', 'Darth Maul', 'The Phantom Menace'),
    (9, 'Speeder Bike', '74-Z Speeder Bike', 'Aratech Repulsor Company', 8000.00, 3.00, 360.00, 1, 1, 4.00, '2 days', 'Speeder', 'Scout Trooper', 'Return of the Jedi'),
    (10, 'Imperial Speeder Bike', '74-Z Speeder Bike', 'Aratech Repulsor Company', 8000.00, 3.00, 500.00, 1, 1, 5.00, '2 days', 'Speeder', 'Scout Trooper', 'Return of the Jedi'),
    (11, 'Cloud Car', 'Storm IV Twin-Pod', 'Bespin Motors', 75000.00, 7.00, 1500.00, 2, 0, 10.00, 'None', 'Air speeder', NULL, 'The Empire Strikes Back'),
    (12, 'Sith Infiltrator', 'Sith Infiltrator', 'Sienar Fleet Systems', 0.00, 26.50, 1180.00, 1, 6, 150000.00, '1 month', 'Starfighter', 'Darth Maul', 'The Phantom Menace'),
    (13, 'B-Wing', 'B-Wing starfighter', 'Slayn & Korpil', 220000.00, 16.90, 950.00, 1, 0, 45.00, '1 week', 'Starfighter', NULL, 'Return of the Jedi'),
    (14, 'Slave 1', 'Firespray-31-class patrol and attack craft', 'Kuat Systems Engineering', 150000.00, 21.50, 1000.00, 1, 6, 80000.00, '1 month', 'Patrol craft', 'Boba Fett', 'The Empire Strikes Back, Attack of the Clones'),
    (15, 'Solar Sailer', 'Punworcca 116-class interstellar sloop', 'Huppla Pasa Tisc Shipwrights Collective', 285000.00, 15.20, 1600.00, 3, 11, 180000.00, '1 month', 'Sloop', 'Count Dooku', 'Attack of the Clones'),
    (16, 'Geonosian Starfighter', 'Nantex-class territorial defense starfighter', 'Huppla Pasa Tisc Shipwrights Collective', 125000.00, 9.80, 1200.00, 1, 0, 30.00, '2 days', 'Starfighter', NULL, 'Attack of the Clones'),
    (17, 'Hound''s Tooth', 'YT-2000 light freighter', 'Corellian Engineering Corporation', 150000.00, 20.00, 850.00, 6, 10, 500000.00, '2 months', 'Light freighter', 'Bossk', 'The Clone Wars'),
    (18, 'Scimitar', 'Sith Infiltrator', 'Republic Sienar Systems', 200000.00, 26.50, 1180.00, 1, 6, 150000.00, '1 month', 'Starfighter', 'Darth Maul', 'The Phantom Menace'),
    (19, 'Tie Interceptor', 'TIE/in interceptor', 'Sienar Fleet Systems', 75000.00, 9.60, 1250.00, 1, 0, 75.00, '2 days', 'Starfighter', NULL, 'Return of the Jedi'),
    (20, 'Naboo Royal Cruiser', 'J-type diplomatic barge', 'Theed Palace Space Vessel Engineering Corps', 200000.00, 115.00, 920.00, 8, 50, 500000.00, '2 months', 'Yacht', 'Queen Amidala', 'Attack of the Clones'),
    (21, 'X-34 Landspeeder', 'X-34', 'SoroSuub Corporation', 10550.00, 3.40, 250.00, 1, 1, 5.00, '2 days', 'Landspeeder', 'Luke Skywalker', 'A New Hope'),
    (22, 'Snowspeeder', 'T-47 airspeeder', 'Incom Corporation', 0.00, 4.50, 650.00, 2, 0, 10.00, 'None', 'Airspeeder', 'Luke Skywalker', 'The Empire Strikes Back'),
    (23, 'Cloud Car', 'Storm IV Twin-Pod', 'Bespin Motors', 75000.00, 7.00, 1500.00, 2, 0, 10.00, 'None', 'Air speeder', NULL, 'The Empire Strikes Back'),
    (24, 'TIE Fighter', 'Twin Ion Engine/Ln Starfighter', 'Sienar Fleet Systems', 75000.00, 6.30, 1200.00, 1, 0, 65.00, '2 days', 'Starfighter', NULL, 'A New Hope, The Empire Strikes Back, Return of the Jedi'),
    (25, 'Sith Speeder', 'FC-20 speeder bike', 'Razalon', 4000.00, 1.50, 180.00, 1, 0, 5.00, 'None', 'Speeder', 'Darth Maul', 'The Phantom Menace'),
    (26, 'Sith Infiltrator', 'Sith Infiltrator', 'Sienar Fleet Systems', 0.00, 26.50, 1180.00, 1, 6, 150000.00, '1 month', 'Starfighter', 'Darth Maul', 'The Phantom Menace'),
    (27, 'Tie Bomber', 'TIE/sa Bomber', 'Sienar Fleet Systems', 86500.00, 7.80, 850.00, 1, 0, 15.00, '2 days', 'Bomber', NULL, 'The Empire Strikes Back'),
    (28, 'AT-AT', 'All Terrain Armored Transport', 'Kuat Drive Yards', 226500.00, 20.60, 60.00, 5, 40, 1000.00, 'None', 'Walker', NULL, 'The Empire Strikes Back, Return of the Jedi'),
    (29, 'AT-ST', 'All Terrain Scout Transport', 'Kuat Drive Yards', 89100.00, 8.60, 90.00, 2, 0, 200.00, 'None', 'Walker', NULL, 'The Empire Strikes Back, Return of the Jedi'),
    (30, 'Solar Sailer', 'Punworcca 116-class interstellar sloop', 'Huppla Pasa Tisc Shipwrights Collective', 285000.00, 15.20, 1600.00, 3, 11, 180000.00, '1 month', 'Sloop', 'Count Dooku', 'Attack of the Clones'),
    (31, 'Geonosian Starfighter', 'Nantex-class territorial defense starfighter', 'Huppla Pasa Tisc Shipwrights Collective', 125000.00, 9.80, 1200.00, 1, 0, 30.00, '2 days', 'Starfighter', NULL, 'Attack of the Clones'),
    (32, 'Hound''s Tooth', 'YT-2000 light freighter', 'Corellian Engineering Corporation', 150000.00, 20.00, 850.00, 6, 10, 500000.00, '2 months', 'Light freighter', 'Bossk', 'The Clone Wars'),
    (33, 'Slave 1', 'Firespray-31-class patrol and attack craft', 'Kuat Systems Engineering', 150000.00, 21.50, 1000.00, 1, 6, 80000.00, '1 month', 'Patrol craft', 'Boba Fett', 'The Empire Strikes Back, Attack of the Clones'),
    (34, 'Scimitar', 'Sith Infiltrator', 'Republic Sienar Systems', 200000.00, 26.50, 1180.00, 1, 6, 150000.00, '1 month', 'Starfighter', 'Darth Maul', 'The Phantom Menace'),
    (35, 'Tie Interceptor', 'TIE/in interceptor', 'Sienar Fleet Systems', 75000.00, 9.60, 1250.00, 1, 0, 75.00, '2 days', 'Starfighter', NULL, 'Return of the Jedi'),
    (36, 'Naboo Royal Cruiser', 'J-type diplomatic barge', 'Theed Palace Space Vessel Engineering Corps', 200000.00, 115.00, 920.00, 8, 50, 500000.00, '2 months', 'Yacht', 'Queen Amidala', 'Attack of the Clones'),
    (37, 'Snowspeeder', 't-47 airspeeder', 'Incom corporation', 0.00, 4.50, 650.00, 2, 0, 10.00, 'none', 'airspeeder', 'Luke Skywalker, Wedge Antilles', 'The Empire Strikes Back'),
    (38, 'Sand Crawler', 'Digger Crawler', 'Corellia Mining Corporation', 150000.00, 36.80, 30.00, 46, 30, 50000.00, '2 months', 'Wheeled', NULL, 'A New Hope'),
    (39, 'X-34 Landspeeder', 'X-34 Landspeeder', 'SoroSuub Corporation', 10550.00, 3.40, 250.00, 1, 1, 5.00, 'None', 'Landspeeder', 'Luke Skywalker', 'A New Hope'),
    (40, 'TIE Bomber', 'TIE/sa Bomber', 'Sienar Fleet Systems', 86500.00, 7.80, 850.00, 1, 0, 15.00, '2 days', 'Bomber', NULL, 'The Empire Strikes Back'),
    (41, 'AT-AT', 'All Terrain Armored Transport', 'Kuat Drive Yards', 226500.00, 20.60, 60.00, 5, 40, 1000.00, 'None', 'Walker', NULL, 'The Empire Strikes Back, Return of the Jedi'),
    (42, 'AT-ST', 'All Terrain Scout Transport', 'Kuat Drive Yards', 89100.00, 8.60, 90.00, 2, 0, 200.00, 'None', 'Walker', NULL, 'The Empire Strikes Back, Return of the Jedi'),
    (43, 'Sith Speeder', 'FC-20 Speeder Bike', 'Razalon', 4000.00, 1.50, 180.00, 1, 0, 5.00, 'None', 'Speeder', 'Darth Maul', 'The Phantom Menace'),
    (44, 'Speeder Bike', '74-Z Speeder Bike', 'Aratech Repulsor Company', 8000.00, 3.00, 360.00, 1, 1, 4.00, '2 days', 'Speeder', 'Scout Trooper', 'Return of the Jedi'),
    (45, 'Imperial Speeder Bike', '74-Z Speeder Bike', 'Aratech Repulsor Company', 8000.00, 3.00, 500.00, 1, 1, 5.00, '2 days', 'Speeder', 'Scout Trooper', 'Return of the Jedi'),
    (46, 'Cloud Car', 'Storm IV Twin-Pod', 'Bespin Motors', 75000.00, 7.00, 1500.00, 2, 0, 10.00, 'None', 'Air speeder', NULL, 'The Empire Strikes Back'),
    (47, 'Sith Infiltrator', 'Sith Infiltrator', 'Sienar Fleet Systems', 0.00, 26.50, 1180.00, 1, 6, 150000.00, '1 month', 'Starfighter', 'Darth Maul', 'The Phantom Menace'),
    (48, 'B-Wing', 'B-Wing starfighter', 'Slayn & Korpil', 220000.00, 16.90, 950.00, 1, 0, 45.00, '1 week', 'Starfighter', NULL, 'Return of the Jedi'),
    (49, 'Slave 1', 'Firespray-31-class patrol and attack craft', 'Kuat Systems Engineering', 150000.00, 21.50, 1000.00, 1, 6, 80000.00, '1 month', 'Patrol craft', 'Boba Fett', 'The Empire Strikes Back, Attack of the Clones'),
    (50, 'Solar Sailer', 'Punworcca 116-class interstellar sloop', 'Huppla Pasa Tisc Shipwrights Collective', 285000.00, 15.20, 1600.00, 3, 11, 180000.00, '1 month', 'Sloop', 'Count Dooku', 'Attack of the Clones');

-- Checking existance
IF OBJECT_ID('DimStarships', 'U') IS NOT NULL
    DROP TABLE DimStarships;


-- DimStarships Table Definition
CREATE TABLE DimStarships (
    id INT,
    name VARCHAR(255),
    model VARCHAR(255),
    manufacturer VARCHAR(255),
    cost_in_credits DECIMAL(20, 2),
    length DECIMAL(10, 2),
    max_atmosphering_speed DECIMAL(10, 2),
    crew INT,
    passengers INT,
    cargo_capacity DECIMAL(20, 2),
    consumables VARCHAR(255),
    hyperdrive_rating DECIMAL(10, 2),
    MGLT INT,
    starship_class VARCHAR(255),
    pilots VARCHAR(MAX),
    films VARCHAR(MAX)
);

-- DimStarships Data Insertion
INSERT INTO DimStarships (id, name, model, manufacturer, cost_in_credits, length, max_atmosphering_speed, crew, passengers, cargo_capacity, consumables, hyperdrive_rating, MGLT, starship_class, pilots, films)
VALUES
    (1, 'Millennium Falcon', 'YT-1300 light freighter', 'Corellian Engineering Corporation', 100000.00, 34.75, 1050.00, 4, 6, 100000.00, '2 months', 0.50, 75, 'Light freighter', 'Han Solo, Chewbacca', 'A New Hope, The Empire Strikes Back, Return of the Jedi, The Force Awakens, The Last Jedi, The Rise of Skywalker'),
    (2, 'X-wing', 'T-65 X-wing starfighter', 'Incom Corporation', 149999.00, 12.50, 1050.00, 1, 0, 110.00, '1 week', 1.00, 100, 'Starfighter', 'Luke Skywalker', 'A New Hope, The Empire Strikes Back, Return of the Jedi, The Force Awakens, The Last Jedi, The Rise of Skywalker'),
    (3, 'TIE Fighter', 'Twin Ion Engine/Ln Starfighter', 'Sienar Fleet Systems', 75000.00, 8.99, 1200.00, 1, 0, 65.00, '2 days', 1.00, 100, 'Starfighter', NULL, 'A New Hope, The Empire Strikes Back, Return of the Jedi'),
    (4, 'Star Destroyer', 'Imperial I-class Star Destroyer', 'Kuat Drive Yards', 150000000.00, 1600.00, 975.00, 47060, 0, 36000000.00, '2 years', 2.00, 60, 'Capital ship', NULL, 'A New Hope, The Empire Strikes Back, Return of the Jedi'),
    (5, 'Slave 1', 'Firespray-31-class patrol and attack craft', 'Kuat Systems Engineering', NULL, 21.50, 1000.00, 1, 6, 80000.00, '1 month', 3.00, 70, 'Patrol craft', 'Boba Fett', 'The Empire Strikes Back, Attack of the Clones, The Mandalorian'),
    (6, 'A-wing', 'RZ-1 A-wing interceptor', 'Alliance Underground Engineering', 175000.00, 9.60, 1300.00, 1, 0, 40.00, '1 week', 1.00, 120, 'Interceptor', NULL, 'Return of the Jedi, The Last Jedi'),
    (7, 'B-wing', 'A/SF-01 B-wing starfighter', 'Slayn & Korpil', 220000.00, 16.90, 950.00, 1, 0, 45.00, '1 week', 2.00, 91, 'Assault starfighter', NULL, 'Return of the Jedi'),
    (8, 'Y-wing', 'BTL Y-wing starfighter', 'Koensayr Manufacturing', 135000.00, 23.40, 1000.00, 2, 0, 110.00, '1 week', 1.00, 80, 'Assault starfighter', NULL, 'A New Hope, The Empire Strikes Back, Return of the Jedi'),
    (9, 'Executor', 'Executor-class Star Dreadnought', 'Kuat Drive Yards, Fondor Shipyards', 1143350000.00, 19000.00, 975.00, 279144, 38000, 250000000.00, '6 years', 4.00, 40, 'Star Dreadnought', 'Darth Vader', 'The Empire Strikes Back, Return of the Jedi'),
    (10, 'Rebel transport', 'GR-75 medium transport', 'Gallofree Yards, Inc.', 3000000.00, 90.00, 650.00, 6, 90, 19000000.00, '6 months', 4.00, 20, 'Medium transport', NULL, 'The Empire Strikes Back, Return of the Jedi'),
    (11, 'Naboo Royal Starship', 'J-type 327 Nubian', 'Theed Palace Space Vessel Engineering Corps', NULL, 76.00, 920.00, 8, 20, 2000000.00, '1 month', 1.80, 75, 'Yacht', 'Queen Amidala', 'The Phantom Menace'),
    (12, 'ARC-170', 'Aggressive ReConnaissance-170 starfighter', 'Incom Corporation, Subpro Corporation', NULL, 14.50, 1000.00, 3, 0, 110.00, '5 days', 1.00, 100, 'Starfighter', NULL, 'Revenge of the Sith'),
    (13, 'Eta-2 Actis', 'Eta-2 Actis-class light interceptor', 'Kuat Systems Engineering', NULL, 5.47, 1500.00, 1, 0, 60.00, '2 days', 1.00, 85, 'Interceptor', 'Anakin Skywalker, Obi-Wan Kenobi', 'Revenge of the Sith'),
    (14, 'Venator-class Star Destroyer', 'Venator-class', 'Kuat Drive Yards', NULL, 1137.00, 975.00, 7400, 2000, 20000000.00, '6 years', 2.00, 60, 'Capital ship', NULL, 'Revenge of the Sith, The Clone Wars'),
    (15, 'Naboo N-1 Starfighter', 'N-1', 'Theed Palace Space Vessel Engineering Corps', NULL, 11.00, 1100.00, 1, 0, 65.00, '3 days', 1.00, 100, 'Starfighter', 'Anakin Skywalker', 'The Phantom Menace, Attack of the Clones'),
    (16, 'Jedi Interceptor', 'Eta-2 Actis-class interceptor', 'Kuat Systems Engineering', NULL, 5.47, 1500.00, 1, 0, 60.00, '2 days', 1.00, 85, 'Interceptor', 'Anakin Skywalker, Obi-Wan Kenobi', 'Revenge of the Sith'),
    (17, 'Sith Infiltrator', 'Scimitar', 'Republic Sienar Systems', NULL, 26.50, 1180.00, 1, 6, 150000.00, '1 month', 1.50, 80, 'Starfighter', 'Darth Maul', 'The Phantom Menace'),
    (18, 'V-wing', 'Alpha-3 Nimbus-class V-wing starfighter', 'Kuat Systems Engineering', NULL, 7.90, 1050.00, 1, 0, 60.00, '2 days', 1.00, 90, 'Starfighter', NULL, 'Revenge of the Sith'),
    (19, 'Delta-7 Aethersprite', 'Delta-7 Aethersprite-class light interceptor', 'Kuat Systems Engineering', NULL, 8.00, 1150.00, 1, 0, 60.00, '2 days', 1.00, 90, 'Interceptor', 'Obi-Wan Kenobi', 'Attack of the Clones'),
    (20, 'Imperial Shuttle', 'Lambda-class T-4a shuttle', 'Sienar Fleet Systems', NULL, 20.00, 850.00, 6, 20, 80000.00, '1 month', 1.00, 50, 'Shuttle', 'Emperor Palpatine', 'Return of the Jedi'),
    (21, 'Tantive IV', 'CR90 corvette', 'Corellian Engineering Corporation', 3500000.00, 150.00, 950.00, 165, 30, 3000000.00, '1 year', 2.00, 60, 'Corvette', 'Leia Organa', 'A New Hope, Revenge of the Sith'),
    (22, 'Slave II', 'Firespray-31-class patrol and attack craft', 'Kuat Systems Engineering', NULL, 21.50, 1000.00, 1, 6, 80000.00, '1 month', 3.00, 70, 'Patrol craft', 'Boba Fett', 'The Empire Strikes Back, Attack of the Clones, The Mandalorian'),
    (23, 'TIE Bomber', 'TIE/sa bomber', 'Sienar Fleet Systems', NULL, 7.80, 850.00, 1, 0, 40.00, '2 days', 1.00, 60, 'Bomber', NULL, 'The Empire Strikes Back'),
    (24, 'Imperial Star Destroyer', 'Imperial I-class Star Destroyer', 'Kuat Drive Yards', 150000000.00, 1600.00, 975.00, 47060, 0, 36000000.00, '2 years', 2.00, 60, 'Capital ship', NULL, 'A New Hope, The Empire Strikes Back, Return of the Jedi'),
    (25, 'Sith Speeder', 'FC-20 speeder bike', 'Razalon', NULL, 2.00, 180.00, 1, 0, 10.00, '1 day', NULL, NULL, 'Speeder', 'Darth Maul', 'The Phantom Menace'),
    (26, 'Speeder Bike', '74-Z speeder bike', 'Aratech Repulsor Company', NULL, 3.00, 360.00, 1, 1, 4.00, '2 days', NULL, NULL, 'Speeder', NULL, 'Return of the Jedi'),
    (27, 'Solar Sailer', 'Punworcca 116-class interstellar sloop', 'Huppla Pasa Tisc Shipwrights Collective', NULL, 15.20, NULL, 3, 11, 180000.00, '1 month', 1.50, 60, 'Sloop', 'Count Dooku', 'Attack of the Clones'),
    (28, 'Geonosian Starfighter', 'Nantex-class territorial defense starfighter', 'Huppla Pasa Tisc Shipwrights Collective', NULL, 9.80, 1200.00, 1, 0, 30.00, '2 days', 1.00, 100, 'Starfighter', NULL, 'Attack of the Clones'),
    (29, 'Hound''s Tooth', 'YT-2000 light freighter', 'Corellian Engineering Corporation', NULL, 20.00, 850.00, 6, 10, 500000.00, '2 months', 1.00, 75, 'Light freighter', 'Bossk', 'The Clone Wars'),
    (30, 'Scimitar', 'Sith Infiltrator', 'Republic Sienar Systems', NULL, 26.50, 1180.00, 1, 6, 150000.00, '1 month', 1.50, 80, 'Starfighter', 'Darth Maul', 'The Phantom Menace'),
    (31, 'Tie Interceptor', 'TIE/in interceptor', 'Sienar Fleet Systems', NULL, 9.60, 1250.00, 1, 0, 75.00, '2 days', 1.00, 110, 'Starfighter', NULL, 'Return of the Jedi'),
    (32, 'Naboo Royal Cruiser', 'J-type diplomatic barge', 'Theed Palace Space Vessel Engineering Corps', NULL, 115.00, 920.00, 8, 50, 500000.00, '2 months', 1.80, 75, 'Yacht', 'Queen Amidala', 'Attack of the Clones'),
    (33, 'X-34 Landspeeder', 'X-34', 'SoroSuub Corporation', NULL, 3.40, 250.00, 1, 1, 5.00, '2 days', NULL, NULL, 'Landspeeder', 'Luke Skywalker', 'A New Hope'),
    (34, 'Snowspeeder', 'T-47 airspeeder', 'Incom Corporation', NULL, 5.30, 650.00, 2, 0, 10.00, '2 days', NULL, NULL, 'Airspeeder', 'Luke Skywalker', 'The Empire Strikes Back'),
    (35, 'The Ghost', 'VCX-100 light freighter', 'Corellian Engineering Corporation', NULL, 43.90, 1025.00, 4, 6, 70000.00, '2 months', 1.00, 70, 'Light freighter', 'Hera Syndulla', 'Star Wars Rebels'),
    (36, 'Phantom', 'VCX-series auxiliary starfighter', 'Corellian Engineering Corporation', NULL, 14.10, 1050.00, 1, 6, 40000.00, '1 month', 1.00, 90, 'Auxiliary starfighter', 'Ezra Bridger', 'Star Wars Rebels'),
    (37, 'Outrider', 'YT-2400 light freighter', 'Corellian Engineering Corporation', NULL, 21.50, 950.00, 2, 6, 70000.00, '2 months', 0.75, 70, 'Light freighter', 'Dash Rendar', 'Shadows of the Empire'),
    (38, 'Razor Crest', 'ST-70 Assault Ship', 'Kuat Drive Yards', NULL, 24.00, 1000.00, 2, 6, 50000.00, '1 month', 1.00, 75, 'Assault ship', 'Din Djarin', 'The Mandalorian'),
    (39, 'Naboo Yacht', 'J-type star skiff', 'Theed Palace Space Vessel Engineering Corps', NULL, 29.20, 920.00, 8, 30, 300000.00, '1 month', 1.80, 75, 'Yacht', 'Padmé Amidala', 'Revenge of the Sith'),
    (40, 'U-wing', 'UT-60D', 'Incom Corporation', NULL, 24.20, 950.00, 4, 8, 40000.00, '1 month', 1.00, 80, 'Transport', 'Cassian Andor', 'Rogue One'),
    (41, 'TIE Advanced x1', 'TIE Advanced x1', 'Sienar Fleet Systems', NULL, 9.20, 1200.00, 1, 0, 75.00, '2 days', 1.00, 105, 'Starfighter', 'Darth Vader', 'A New Hope'),
    (42, 'J-type 327 Nubian', 'J-type 327', 'Theed Palace Space Vessel Engineering Corps', NULL, 76.00, 920.00, 8, 20, 2000000.00, '1 month', 1.80, 75, 'Yacht', 'Queen Amidala', 'The Phantom Menace'),
    (43, 'Naboo Royal Starship', 'J-type 327 Nubian', 'Theed Palace Space Vessel Engineering Corps', NULL, 76.00, 920.00, 8, 20, 2000000.00, '1 month', 1.80, 75, 'Yacht', 'Queen Amidala', 'The Phantom Menace'),
    (44, 'Naboo N-1 Starfighter', 'N-1', 'Theed Palace Space Vessel Engineering Corps', NULL, 11.00, 1100.00, 1, 0, 65.00, '3 days', 1.00, 100, 'Starfighter', 'Anakin Skywalker', 'The Phantom Menace, Attack of the Clones'),
    (45, 'Sith Infiltrator', 'Scimitar', 'Republic Sienar Systems', NULL, 26.50, 1180.00, 1, 6, 150000.00, '1 month', 1.50, 80, 'Starfighter', 'Darth Maul', 'The Phantom Menace'),
    (46, 'Havoc Marauder', 'Omicron-class attack shuttle', 'Cygnus Spaceworks', NULL, 22.30, 1050.00, 2, 12, 70000.00, '1 month', 1.00, 70, 'Attack shuttle', 'Clone Force 99', 'The Bad Batch'),
    (47, 'Luthen''s Ship', 'Fondor Haulcraft', 'Fondor Shipyards', NULL, 34.80, 1000.00, 1, 6, 100000.00, '1 month', 1.00, 80, 'Haulcraft', 'Luthen Rael', 'Andor'),
    (48, 'Tantive IV', 'CR90 corvette', 'Corellian Engineering Corporation', 3500000.00, 150.00, 950.00, 165, 30, 3000000.00, '1 year', 2.00, 60, 'Corvette', 'Leia Organa', 'A New Hope, Revenge of the Sith'),
    (49, 'Millennium Falcon', 'YT-1300 light freighter', 'Corellian Engineering Corporation', 100000.00, 34.75, 1050.00, 4, 6, 100000.00, '2 months', 0.50, 75, 'Light freighter', 'Han Solo, Chewbacca', 'A New Hope, The Empire Strikes Back, Return of the Jedi, The Force Awakens, The Last Jedi, The Rise of Skywalker'),
    (50, 'Jedi Starfighter', 'Delta-7 Aethersprite-class light interceptor', 'Kuat Systems Engineering', NULL, 8.00, 1150.00, 1, 0, 60.00, '2 days', 1.00, 90, 'Interceptor', 'Obi-Wan Kenobi', 'Attack of the Clones'),
    (51, 'Vulture Droid', 'Variable Geometry Self-Propelled Battle Droid', 'Haor Chall Engineering', NULL, 3.50, 1200.00, NULL, NULL, NULL, NULL, 1.00, 100, 'Starfighter', NULL, 'The Phantom Menace'),
    (52, 'Tri-Fighter', 'Droid Tri-Fighter', 'Colla Designs, Phlac-Arphocc Automata Industries', NULL, 5.40, 1180.00, NULL, NULL, NULL, NULL, 1.00, 100, 'Starfighter', NULL, 'Revenge of the Sith'),
    (53, 'Hyena Bomber', 'Baktoid Armor Workshop', 'Colla Designs, Phlac-Arphocc Automata Industries', NULL, 14.90, 1180.00, NULL, NULL, NULL, NULL, 1.00, 100, 'Starfighter', NULL, 'The Clone Wars'),
    (54, 'Droid Gunship', 'Heavy Missile Platform', 'Baktoid Fleet Ordnance', NULL, 12.00, 950.00, NULL, NULL, NULL, NULL, 1.00, 100, 'Gunship', NULL, 'The Clone Wars'),
    (55, 'Malevolence', 'Subjugator-class heavy cruiser', 'Free Dac Volunteers Engineering Corps', NULL, 4845.00, 975.00, 216, 0, 14000000.00, '6 years', 1.50, 60, 'Heavy cruiser', 'General Grievous', 'The Clone Wars'),
    (56, 'Invisible Hand', 'Providence-class Dreadnought', 'Free Dac Volunteers Engineering Corps', NULL, 1088.00, 950.00, 600, 0, 15000000.00, '6 years', 1.50, 60, 'Dreadnought', 'General Grievous', 'Revenge of the Sith'),
    (57, 'Malevolence', 'Subjugator-class heavy cruiser', 'Free Dac Volunteers Engineering Corps', NULL, 4845.00, 975.00, 216, 0, 14000000.00, '6 years', 1.50, 60, 'Heavy cruiser', 'General Grievous', 'The Clone Wars'),
    (58, 'Invisible Hand', 'Providence-class Dreadnought', 'Free Dac Volunteers Engineering Corps', NULL, 1088.00, 950.00, 600, 0, 15000000.00, '6 years', 1.50, 60, 'Dreadnought', 'General Grievous', 'Revenge of the Sith'),
    (59, 'Droid Control Ship', 'Lucrehulk-class battleship', 'Hoersch-Kessel Drive', NULL, 3170.00, 950.00, 150, 0, 55000000.00, '6 years', 2.00, 60, 'Battleship', NULL, 'The Phantom Menace'),
    (60, 'Venator-class Star Destroyer', 'Venator-class', 'Kuat Drive Yards', NULL, 1137.00, 975.00, 7400, 2000, 20000000.00, '6 years', 2.00, 60, 'Capital ship', NULL, 'Revenge of the Sith, The Clone Wars');

IF OBJECT_ID('DimCities', 'U') IS NOT NULL
    DROP TABLE DimCities;

-- Creating the Dimension Table for Locations
CREATE TABLE DimCities (
    id INT,
    name VARCHAR(100) NOT NULL,
    planet VARCHAR(100) NOT NULL,
    population INT,
    description VARCHAR(100)
);

-- Inserting Data into the Dimension Table
INSERT INTO DimCities (id, name, planet, population, description)
VALUES
(1, 'Mos Eisley', 'Tatooine', 50000, 'A wretched hive of scum and villainy.'),
(2, 'Theed', 'Naboo', 200000, 'Capital city of Naboo, known for its classical architecture.'),
(3, 'Cloud City', 'Bespin', 10000, 'A tibanna gas mining colony floating in the clouds of Bespin.'),
(4, 'Coruscant', 'Coruscant', 1000000000, 'The bustling capital of the Galactic Republic and later the Galactic Empire.'),
(5, 'Jedha City', 'Jedha', 30000, 'A holy city and center of pilgrimage for those who believe in the Force.'),
(6, 'Canto Bight', 'Cantonica', 20000, 'A casino city known for its luxury and opulence.'),
(7, 'Mos Espa', 'Tatooine', 40000, 'A spaceport settlement on Tatooine, known for its podracing.'),
(8, 'NiJedha', 'Jedha', 20000, 'Another important city on Jedha, known for its historical significance.'),
(9, 'Tipoca City', 'Kamino', 50000, 'The capital city of Kamino, known for its cloning facilities.'),
(10, 'Dahhh City', 'Toydaria', 15000, 'A major city on Toydaria.');
