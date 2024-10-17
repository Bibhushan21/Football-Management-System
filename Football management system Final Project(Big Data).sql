create database Football_Management_System;

use Football_Management_System;


CREATE TABLE teams (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  city VARCHAR(100),
  stadium VARCHAR(100),
  founded_year INT,
  coach VARCHAR(100)
);


-- Insert data into the "teams" table
INSERT INTO teams (name, city, stadium, founded_year, coach)
VALUES
  
  -- Bundesliga (Germany)
  ('Bayern Munich', 'Munich', 'Allianz Arena', 1900, 'Julian Nagelsmann'),
  ('Borussia Dortmund', 'Dortmund', 'Signal Iduna Park', 1909, 'Marco Rose'),
  ('RB Leipzig', 'Leipzig', 'Red Bull Arena', 2009, 'Jesse Marsch'),
  ('Bayer Leverkusen', 'Leverkusen', 'BayArena', 1904, 'Gerardo Seoane'),
  ('Borussia Mönchengladbach', 'Mönchengladbach', 'Borussia-Park', 1900, 'Adi Hütter'),
  ('Schalke 04', 'Gelsenkirchen', 'Veltins-Arena', 1904, 'Dimitrios Grammozis'),
  ('Eintracht Frankfurt', 'Frankfurt', 'Deutsche Bank Park', 1899, 'Oliver Glasner'),
  ('VfB Stuttgart', 'Stuttgart', 'Mercedes-Benz Arena', 1893, 'Pellegrino Matarazzo'),
  ('Hoffenheim', 'Sinsheim', 'PreZero Arena', 1899, 'Sebastian Hoeneß'),
  ('Mainz 05', 'Mainz', 'Opel Arena', 1905, 'Bo Svensson'),
  ('Augsburg', 'Augsburg', 'WWK Arena', 1907, 'Markus Weinzierl'),
  ('Arminia Bielefeld', 'Bielefeld', 'SchucoArena', 1905, 'Frank Kramer'),
  ('Freiburg', 'Freiburg im Breisgau', 'Schwarzwald-Stadion', 1904, 'Christian Streich'),
  ('Union Berlin', 'Berlin', 'Stadion An der Alten Försterei', 1966, 'Urs Fischer'),
  ('Bochum', 'Bochum', 'Vonovia Ruhrstadion', 1848, 'Thomas Reis'),
  ('Greuther Furth', 'Fürth', 'Sportpark Ronhof Thomas Sommer', 1903, 'Stefan Leitl')
  ;



  

 
 

  


SELECT * FROM  teams ;

CREATE TABLE players (
  id INT PRIMARY KEY AUTO_INCREMENT,
  team_id INT,
  name VARCHAR(100) NOT NULL,
  nationality VARCHAR(100),
  age INT,
  position VARCHAR(100),
  FOREIGN KEY (team_id) REFERENCES teams(id)
);

-- Insert data into the "players" table
INSERT INTO players (team_id, name, nationality, age, position)
VALUES (1, 'Thomas Muller', 'Germany', 25, 'Midfielder'),
       (1, 'Alphonso Davies', 'Canada', 20, 'Defender'),
       (1, 'Manual Neuer', 'Germany', 34, 'Goalkeeper'),
     (1, 'Jamal Musiala', 'Germany', 20, 'Midfielder'),
(1, 'Sadio Mane', 'Senegal', 29, 'Forward'),
(1, 'Benjamin Pavard', 'France', 25, 'Defender'),
(2, 'Axel Witsel', 'Belgium', 32, 'Midfielder'),
(1, 'Manuel Neuer', 'Germany', 35, 'Goalkeeper'),
(1, 'Leroy Sane', 'Germany', 25, 'Forward'),
(2, 'Erling Haaland', 'Norway', 21, 'Forward'),
(2, 'Marco Reus', 'Germany', 32, 'Midfielder'),
(2, 'Mats Hummels', 'Germany', 32, 'Defender'),
(1, 'Joshua Kimmich', 'Germany', 26, 'Midfielder'),
(2, 'Manuel Akanji', 'Switzerland', 26, 'Defender'),
(2, 'Julian Brandt', 'Germany', 25, 'Midfielder'),
(2, 'Raphael Guerreiro', 'Portugal', 27, 'Defender'),
(2, 'Thorgan Hazard', 'Belgium', 28, 'Forward'),
(3, 'Wout Weghorst', 'Netherlands', 29, 'Forward'),
(3, 'Maximilian Arnold', 'Germany', 27, 'Midfielder'),
(3, 'Ridle Baku', 'Germany', 23, 'Defender'),
(3, 'Christopher Nkunku', 'France', 23, 'Midfielder'),
(1, 'Marcel Sabitzer', 'Austria', 27, 'Midfielder'),
(4, 'Nordi Mukiele', 'France', 23, 'Defender'),
(4, 'Giovanni Reyna', 'United States', 18, 'Midfielder'),
(2, 'Moukoko Youssoufa', 'Cameroon', 16, 'Forward'),
(2, 'Emre Can', 'Germany', 27, 'Midfielder'),
(5, 'Luis Alberto', 'Spain', 29, 'Midfielder'),
(4, 'Ciro Immobile', 'Italy', 31, 'Forward'),
(6, 'Joaquin Correa', 'Argentina', 26, 'Forward'),
(6, 'Karim Benzema', 'France', 34, 'Forward'),
(6, 'Sergio Ramos', 'Spain', 36, 'Defender'),
(6, 'Bruno Fernandes', 'Portugal', 27, 'Midfielder'),
(1, 'Leon Goretzka', 'Germany', 26, 'Midfielder'),
(3, 'Timo Werner', 'Germany', 25, 'Forward'),
(3, 'Dani Olmo', 'Spain', 23, 'Forward'),
(3, 'Peter Gulacsi', 'Hungary', 31, 'Goalkeeper'),
(1, 'Matthijs de Ligt', 'Netherlands', 22, 'Defender'),
(8, 'Frenkie de Jong', 'Netherlands', 24, 'Midfielder'),
(9, 'Dusan Tadic', 'Serbia', 32, 'Forward'),
(1, 'Kingsley Coman', 'France', 25, 'Forward'),
(2, 'Florian Wirtz', 'Germany', 18, 'Midfielder'),
(11, 'Moussa Diaby', 'France', 21, 'Forward'),
(4, 'Jonathan Tah', 'Germany', 25, 'Defender'),
(13, 'Thomas Delaney', 'Denmark', 29, 'Midfielder'),
(10, 'Raphael Guerreiro', 'Portugal', 27, 'Defender'),
(10, 'Marcel Halstenberg', 'Germany', 30, 'Defender'),
(10, 'Yussuf Poulsen', 'Denmark', 27, 'Forward'),
(10, 'Robin Gosens', 'Germany', 27, 'Defender'),
(11, 'Aleksandr Dragovic', 'Austria', 30, 'Defender'),
(11, 'Lars Stindl', 'Germany', 33, 'Forward'),
(11, 'Luca Waldschmidt', 'Germany', 25, 'Forward'),
(11, 'Frederik Ronnow', 'Denmark', 28, 'Goalkeeper'),
(11, 'Martin Hinteregger', 'Austria', 29, 'Defender'),
(12, 'Stefan Posch', 'Austria', 24, 'Defender'),
(12, 'Florian Grillitsch', 'Austria', 26, 'Midfielder'),
(12, 'Ishak Belfodil', 'Algeria', 30, 'Forward'),
(12, 'Amine Harit', 'Morocco', 24, 'Midfielder'),
(12, 'Ozan Kabak', 'Turkey', 21, 'Defender'),
(13, 'Sebastian Rudy', 'Germany', 31, 'Midfielder'),
(13, 'Jadon Sancho', 'England', 21, 'Forward'),
(13, 'Mahmoud Dahoud', 'Germany', 25, 'Midfielder'),
(13, 'Nico Schulz', 'Germany', 28, 'Defender'),
(13, 'Wout Weghorst', 'Netherlands', 29, 'Forward'),
(14, 'Maxence Lacroix', 'France', 21, 'Defender'),
(14, 'Yannick Gerhardt', 'Germany', 27, 'Midfielder'),
(14, 'Julian Pollersbeck', 'Germany', 26, 'Goalkeeper'),
(14, 'Ragnar Ache', 'Germany', 23, 'Forward'),
(14, 'Amin Younes', 'Germany', 27, 'Midfielder'),
(15, 'Eduard Lowen', 'Germany', 24, 'Midfielder'),
(15, 'Mateu Morey', 'Spain', 21, 'Defender'),
(15, 'Malick Thiaw', 'Germany', 20, 'Defender'),
(15, 'Marcel Hartel', 'Germany', 24, 'Midfielder'),
(15, 'Alessandro Schopf', 'Austria', 27, 'Midfielder'),
(15, 'Sasa Kalajdzic', 'Austria', 24, 'Forward'),
(3, 'Robin Koch', 'Germany', 25, 'Defender'),
(3, 'Nicolas Gonzalez', 'Argentina', 23, 'Forward'),
(3, 'Jonathan Schmid', 'France', 31, 'Midfielder'),
(16, 'Ondrej Duda', 'Slovakia', 26, 'Midfielder'),
(16, 'Dodi Lukebakio', 'Belgium', 24, 'Forward'),
(16, 'Karim Rekik', 'Netherlands', 26, 'Defender'),
(16, 'Salomon Kalou', 'Ivory Coast', 36, 'Forward'),
(4, 'Matheus Cunha', 'Brazil', 22, 'Forward'),
(4, 'Niklas Stark', 'Germany', 26, 'Defender'),
(3, 'Ludwig Augustinsson', 'Sweden', 27, 'Defender'),
(3, 'Yuya Osako', 'Japan', 31, 'Forward'),
(5, 'Jean-Manuel Mbom', 'Germany', 21, 'Midfielder'),
(5, 'Kevin Mbabu', 'Switzerland', 26, 'Defender'),
(5, 'Josip Brekalo', 'Croatia', 23, 'Forward'),
(5, 'John Anthony Brooks', 'United States', 28, 'Defender'),
(5, 'Maxence Lacroix', 'France', 21, 'Defender'),
(6, 'Ismail Jakobs', 'Germany', 21, 'Midfielder'),
(6, 'Elvis Rexhbecaj', 'Albania', 24, 'Midfielder'),
(6, 'Stefan Bell', 'Germany', 29, 'Defender'),
(6, 'Aaron Martin', 'Spain', 24, 'Defender'),
(7, 'Robin Quaison', 'Sweden', 28, 'Forward'),
(7, 'Moussa Niakhate', 'France', 24, 'Defender'),
(8, 'Daniel Brosinski', 'Germany', 33, 'Defender'),
(8, 'Karim Onisiwo', 'Austria', 29, 'Forward'),
(8, 'Ridle Baku', 'Germany', 23, 'Defender'),
(9, 'Kevin Stoger', 'Austria', 28, 'Midfielder'),
(9, 'Corentin Tolisso', 'France', 26, 'Midfielder'),
(9, 'Lucas Hernandez', 'France', 25, 'Defender'),
(9, 'Marc Roca', 'Spain', 25, 'Midfielder'),
(9, 'Chris Richards', 'United States', 21, 'Defender'),
(10, 'Bouna Sarr', 'France', 30, 'Defender'),
(10, 'Tanguy Nianzou', 'France', 19, 'Defender'),
(10, 'Javi Martinez', 'Spain', 33, 'Midfielder'),
(10, 'Eric Maxim Choupo-Moting', 'Cameroon', 32, 'Forward'),
(11, 'Alexander Nubel', 'Germany', 24, 'Goalkeeper'),
(12, 'Ron-Thorben Hoffmann', 'Germany', 22, 'Goalkeeper'),
(11, 'Michael Cuisance', 'France', 21, 'Midfielder'),
(11, 'Adrian Fein', 'Germany', 22, 'Midfielder'),
(12, 'Sarpreet Singh', 'New Zealand', 22, 'Midfielder'),
(12, 'Dajaku Leon', 'Germany', 20, 'Forward'),
(12, 'Arjen Robben', 'Netherlands', 38, 'Forward'),
(12, 'Gianluca Gaudino', 'Germany', 20, 'Midfielder'),
(12, 'Julian Green', 'United States', 26, 'Midfielder'),
(13, 'Emilian Metu', 'Germany', 19, 'Defender'),
(13, 'Joshua Zirkzee', 'Netherlands', 20, 'Forward'),
(13, 'Timothy Tillman', 'Germany', 23, 'Midfielder'),
(14, 'Reshat Mulaku', 'Germany', 18, 'Midfielder'),
(14, 'Taylor Booth', 'United States', 20, 'Midfielder'),
(14, 'Malik Tillman', 'Germany', 20, 'Forward'),
(14, 'Ryan Johansson', 'Luxembourg', 20, 'Midfielder'),
(15, 'Torben Rhein', 'Germany', 19, 'Midfielder'),
(15, 'Angelo Stiller', 'Germany', 21, 'Midfielder'),
(15, 'Christopher Scott', 'Germany', 19, 'Midfielder'),
(15, 'Oliver Batista Meier', 'Germany', 20, 'Midfielder'),
(15, 'Bright Arrey-Mbi', 'Germany', 18, 'Defender'),
(16, 'Armindo Sieb', 'Germany', 19, 'Forward'),
(16, 'Maxime Awoudja', 'Cameroon', 23, 'Defender'),
(16, 'Christian Früchtl', 'Germany', 21, 'Goalkeeper'),
(16, 'Remy Vita', 'France', 18, 'Goalkeeper'),
(16, 'Mickael Cuisance', 'France', 21, 'Midfielder');
INSERT INTO players (team_id, name, nationality, age, position)
VALUES
 (4, 'Fiete Arp', 'Germany', 21, 'Forward'),
  (4, 'Nicolas Feldhahn', 'Germany', 34, 'Defender'),
  (4, 'Dennis Waidner', 'Germany', 22, 'Defender'),
  (4, 'Jann-Fiete Arp', 'Germany', 21, 'Forward'),
  (4, 'Angelo Stiller', 'Germany', 21, 'Midfielder'),
  (5, 'Malik Tillman', 'Germany', 20, 'Forward'),
  (5, 'Joshua Zirkzee', 'Netherlands', 20, 'Forward'),
  (5, 'Oliver Batista Meier', 'Germany', 20, 'Midfielder'),
  (5, 'Taylor Booth', 'United States', 20, 'Midfielder'),
  (5, 'Armindo Sieb', 'Germany', 19, 'Midfielder'),
  (6, 'Braydon Manu', 'Germany', 25, 'Forward'),
  (6, 'Christopher Scott', 'Germany', 18, 'Forward'),
  (6, 'Resul Türkkalesi', 'Germany', 18, 'Midfielder'),
  (6, 'Justin Che', 'Germany', 18, 'Midfielder'),
  (7, 'Owen Otasowie', 'United States', 20, 'Midfielder'),
  (7, 'Kevin Danzo', 'Germany', 20, 'Defender'),
  (7, 'Frederiksen', 'Denmark', 19, 'Forward'),
  (7, 'Niki Koutris', 'Greece', 26, 'Defender'),
  (7, 'Timothy Tillman', 'United States', 22, 'Midfielder'),
   (7, 'Lucas Silva', 'Brazil', 23, 'Midfielder'),
  (7, 'Andrei Ivanov', 'Russia', 28, 'Defender'),
  (7, 'Matteo Bianchi', 'Italy', 24, 'Forward'),
  (7, 'Erik Johansson', 'Sweden', 27, 'Defender'),
  (7, 'Mohamed Salah', 'Egypt', 29, 'Forward'),
  (8, 'Hector Lopez', 'Spain', 21, 'Midfielder'),
  (8, 'Filip Novak', 'Czech Republic', 26, 'Defender'),
  (8, 'Diego Martinez', 'Argentina', 30, 'Goalkeeper'),
  (8, 'Sebastian Andersen', 'Denmark', 25, 'Midfielder'),
  (8, 'Ivan Petrov', 'Bulgaria', 22, 'Forward'),
  (8, 'Juan Rodriguez', 'Mexico', 28, 'Midfielder'),
  (8, 'Alessio Conti', 'Italy', 20, 'Defender'),
  (8, 'Miguel Sanchez', 'Spain', 24, 'Forward'),
  (9, 'Vladimir Kozlov', 'Russia', 29, 'Defender'),
  (9, 'Isabella Gonzalez', 'Colombia', 26, 'Midfielder'),
  (9, 'Rasmus Nielsen', 'Denmark', 23, 'Forward'),
  (9, 'Maxim Ivanov', 'Russia', 27, 'Midfielder'),
  (9, 'Luis Morales', 'Spain', 25, 'Defender'),
  (10, 'Giulia Rossi', 'Italy', 22, 'Forward'),
  (10, 'Mariusz Wojcik', 'Poland', 28, 'Midfielder'),
  (10, 'Anastasia Ivanova', 'Russia', 24, 'Defender'),
  (10, 'Oscar Hernandez', 'Spain', 21, 'Midfielder'),
  (11, 'Jakub Kowalski', 'Poland', 26, 'Forward'),
  (11, 'Maria Sanchez', 'Spain', 23, 'Defender'),
  (11, 'Fabio Rossi', 'Italy', 27, 'Midfielder'),
  (13, 'Andrei Popov', 'Russia', 22, 'Forward'),
  (13, 'Daniela Lopez', 'Spain', 25, 'Midfielder'),
  (13, 'Nikolai Ivanov', 'Russia', 23, 'Defender'),
  (14, 'Fernanda Martinez', 'Mexico', 21, 'Midfielder'),
  (14, 'Gustav Andersen', 'Denmark', 26, 'Forward'),
  (16, 'Luka Petrov', 'Bulgaria', 24, 'Midfielder'),
  (16, 'Elena Rodriguez', 'Spain', 22, 'Defender'),
  (16, 'Viktor Kozlov', 'Russia', 25, 'Forward'),
  (14, 'Gabriel Gonzalez', 'Mexico', 27, 'Midfielder'),
  (10, 'Riccardo Conti', 'Italy', 23, 'Defender'),
  (11, 'Marta Morales', 'Spain', 20, 'Forward'),
  (1, 'Daniel Wojcik', 'Poland', 25, 'Midfielder'),
  (1, 'Anastasia Petrova', 'Russia', 21, 'Defender'),
  (1, 'Carlos Hernandez', 'Spain', 24, 'Midfielder'),
  (1, 'Piotr Kowalski', 'Poland', 27, 'Forward'),
  (1, 'Lorena Sanchez', 'Spain', 23, 'Midfielder'),
  (2, 'Nikita Ivanov', 'Russia', 22, 'Defender'),
  (2, 'Sofia Martinez', 'Mexico', 25, 'Midfielder'),
  (2, 'Luis Andersen', 'Denmark', 24, 'Forward'),
  (2, 'Dimitar Petrov', 'Bulgaria', 27, 'Midfielder'),
  (3, 'Camila Lopez', 'Spain', 21, 'Defender'),
  (3, 'Mateusz Kowalski', 'Poland', 24, 'Forward'),
   (3, 'Alexandru Popescu', 'Romania', 29, 'Defender'),
  (3, 'Nadia Gonzalez', 'Spain', 23, 'Forward'),
  (3, 'Victor Petrov', 'Russia', 30, 'Midfielder'),
  (4, 'Marcelo Lopez', 'Argentina', 27, 'Defender'),
  (4, 'Leonardo Bianchi', 'Italy', 31, 'Midfielder'),
  (4, 'Oliver Johansson', 'Sweden', 24, 'Forward'),
  (4, 'Salma Mohammed', 'Egypt', 25, 'Midfielder'),
  (4, 'Kasper Andersen', 'Denmark', 27, 'Defender'),
  (5, 'Bogdan Ivanov', 'Bulgaria', 28, 'Midfielder'),
  (5, 'Maria Rodriguez', 'Mexico', 22, 'Forward'),
  (5, 'Marco Conti', 'Italy', 26, 'Midfielder'),
  (5, 'Nikolay Kozlov', 'Russia', 23, 'Defender'),
  (5, 'Isabella Garcia', 'Colombia', 21, 'Midfielder'),
  (6, 'Rafael Nielsen', 'Denmark', 29, 'Forward'),
  (6, 'Igor Ivanov', 'Russia', 24, 'Midfielder'),
  (6, 'Carlos Morales', 'Spain', 26, 'Defender'),
  (6, 'Giuliana Rossi', 'Italy', 22, 'Forward'),
  (6, 'Damian Wojcik', 'Poland', 30, 'Midfielder'),
  (7, 'Ekaterina Petrova', 'Russia', 25, 'Defender'),
  (7, 'Javier Hernandez', 'Mexico', 28, 'Midfielder'),
  (7, 'Lukasz Kowalski', 'Poland', 29, 'Forward'),
  (7, 'Daniela Sanchez', 'Spain', 22, 'Midfielder'),
  (7, 'Nikita Ivanov', 'Russia', 25, 'Defender'),
  (8, 'Fernando Martinez', 'Mexico', 24, 'Midfielder'),
  (8, 'Gustavo Andersen', 'Denmark', 23, 'Forward'),
  (8, 'Luka Petrov', 'Bulgaria', 22, 'Midfielder'),
  (8, 'Elena Rodriguez', 'Spain', 25, 'Defender'),
  (8, 'Victor Kozlov', 'Russia', 26, 'Forward'),
  (9, 'Gabriela Gonzalez', 'Mexico', 21, 'Midfielder'),
  (9, 'Riccardo Conti', 'Italy', 24, 'Defender'),
  (9, 'Marta Morales', 'Spain', 23, 'Forward'),
  (9, 'Daniel Wojcik', 'Poland', 26, 'Midfielder'),
  (9, 'Anastasia Petrova', 'Russia', 22, 'Defender'),
  (10, 'Carlos Hernandez', 'Spain', 23, 'Midfielder'),
  (10, 'Piotr Kowalski', 'Poland', 27, 'Forward'),
  (10, 'Lorena Sanchez', 'Spain', 24, 'Midfielder'),
  (10, 'Nikita Ivanov', 'Russia', 23, 'Defender'),
  (10, 'Sofia Martinez', 'Mexico', 21, 'Midfielder'),
  (11, 'Luis Andersen', 'Denmark', 25, 'Forward'),
  (11, 'Dimitar Petrov', 'Bulgaria', 28, 'Midfielder'),
  (11, 'Camila Lopez', 'Spain', 22, 'Defender'),
  (11, 'Mateusz Kowalski', 'Poland', 25, 'Forward'),
  (11, 'David Silva', 'Spain', 35, 'Midfielder'),
  (11, 'Hugo Sanchez', 'Mexico', 33, 'Forward'),
  (12, 'Emma Andersson', 'Sweden', 27, 'Defender'),
  (12, 'Arthur Rossi', 'Brazil', 26, 'Midfielder'),
  (12, 'Alexandru Popescu', 'Romania', 30, 'Defender'),
  (12, 'Nadia Gonzalez', 'Spain', 24, 'Forward'),
  (12, 'Victor Petrov', 'Russia', 31, 'Midfielder'),
  (13, 'Marcelo Lopez', 'Argentina', 28, 'Defender'),
  (13, 'Leonardo Bianchi', 'Italy', 32, 'Midfielder'),
  (13, 'Oliver Johansson', 'Sweden', 25, 'Forward'),
  (13, 'Salma Mohammed', 'Egypt', 26, 'Midfielder'),
  (13, 'Kasper Andersen', 'Denmark', 28, 'Defender'),
  (14, 'Bogdan Ivanov', 'Bulgaria', 29, 'Midfielder'),
  (14, 'Maria Rodriguez', 'Mexico', 23, 'Forward'),
  (14, 'Marco Conti', 'Italy', 27, 'Midfielder'),
  (14, 'Nikolay Kozlov', 'Russia', 24, 'Defender'),
  (14, 'Isabella Garcia', 'Colombia', 22, 'Midfielder'),
  (15, 'Rafael Nielsen', 'Denmark', 30, 'Forward'),
  (15, 'Igor Ivanov', 'Russia', 25, 'Midfielder'),
  (15, 'Carlos Morales', 'Spain', 27, 'Defender'),
  (15, 'Giuliana Rossi', 'Italy', 23, 'Forward'),
  (15, 'Damian Wojcik', 'Poland', 31, 'Midfielder'),
  (16, 'Ekaterina Petrova', 'Russia', 26, 'Defender'),
  (16, 'Javier Hernandez', 'Mexico', 29, 'Midfielder'),
  (16, 'Lukasz Kowalski', 'Poland', 30, 'Forward'),
  (16, 'Daniela Sanchez', 'Spain', 23, 'Midfielder'),
  (16, 'Nikita Ivanov', 'Russia', 22, 'Defender'),
  (1, 'Fernando Martinez', 'Mexico', 25, 'Midfielder'),
  (2, 'Gustavo Andersen', 'Denmark', 24, 'Forward'),
  (3, 'Luka Petrov', 'Bulgaria', 23, 'Midfielder'),
  (4, 'Elena Rodriguez', 'Spain', 26, 'Defender'),
  (5, 'Victor Kozlov', 'Russia', 27, 'Forward'),
  (6, 'Gabriela Gonzalez', 'Mexico', 24, 'Midfielder'),
  (7, 'Riccardo Conti', 'Italy', 25, 'Defender'),
  (8, 'Marta Morales', 'Spain', 24, 'Forward'),
  (9, 'Daniel Wojcik', 'Poland', 27, 'Midfielder'),
  (10, 'Anastasia Petrova', 'Russia', 23, 'Defender'),
  (11, 'Carlos Hernandez', 'Spain', 24, 'Midfielder'),
  (12, 'Piotr Kowalski', 'Poland', 28, 'Forward'),
  (13, 'Lorena Sanchez', 'Spain', 25, 'Midfielder'),
  (14, 'Nikita Ivanov', 'Russia', 24, 'Defender'),
  (15, 'Sofia Martinez', 'Mexico', 22, 'Midfielder'),
  (16, 'Luis Andersen', 'Denmark', 26, 'Forward'),
  (1, 'Dimitar Petrov', 'Bulgaria', 29, 'Midfielder'),
  (2, 'Camila Lopez', 'Spain', 23, 'Defender'),
  (3, 'Mateusz Kowalski', 'Poland', 26, 'Forward'),
  (4, 'David Silva', 'Spain', 36, 'Midfielder'),
  (5, 'Hugo Sanchez', 'Mexico', 34, 'Forward'),
  (6, 'Emma Andersson', 'Sweden', 28, 'Defender'),
  (7, 'Arthur Rossi', 'Brazil', 27, 'Midfielder'),
  (8, 'Alexandru Popescu', 'Romania', 31, 'Defender'),
  (9, 'Nadia Gonzalez', 'Spain', 25, 'Forward'),
  (10, 'Victor Petrov', 'Russia', 32, 'Midfielder'),
  (12, 'Marcelo Lopez', 'Argentina', 29, 'Defender'),
  (11, 'Leonardo Bianchi', 'Italy', 33, 'Midfielder'),
  (13, 'Oliver Johansson', 'Sweden', 26, 'Forward'),
  (14, 'Salma Mohammed', 'Egypt', 27, 'Midfielder'),
  (15, 'Kasper Andersen', 'Denmark', 29, 'Defender'),
  (16, 'Bogdan Ivanov', 'Bulgaria', 30, 'Midfielder'),
  (1, 'Maria Rodriguez', 'Mexico', 24, 'Forward'),
  (2, 'Marco Conti', 'Italy', 28, 'Midfielder'),
  (3, 'Nikolay Kozlov', 'Russia', 25, 'Defender'),
  (4, 'Isabella Garcia', 'Colombia', 23, 'Midfielder'),
  (5, 'Rafael Nielsen', 'Denmark', 31, 'Forward'),
  (6, 'Igor Ivanov', 'Russia', 26, 'Midfielder'),
  (7, 'Carlos Morales', 'Spain', 28, 'Defender'),
  (8, 'Giuliana Rossi', 'Italy', 24, 'Forward'),
  (9, 'Damian Wojcik', 'Poland', 32, 'Midfielder'),
  (10, 'Ekaterina Petrova', 'Russia', 27, 'Defender'),
  (11, 'Javier Hernandez', 'Mexico', 30, 'Midfielder'),
  (12, 'Lukasz Kowalski', 'Poland', 31, 'Forward'),
  (13, 'Daniela Sanchez', 'Spain', 24, 'Midfielder'),
  (14, 'Nikita Ivanov', 'Russia', 23, 'Defender'),
  (15, 'Fernando Martinez', 'Mexico', 26, 'Midfielder'),
  (16, 'Gustavo Andersen', 'Denmark', 25, 'Forward'),
  (1, 'Luka Petrov', 'Bulgaria', 24, 'Midfielder'),
  (2, 'Elena Rodriguez', 'Spain', 27, 'Defender'),
  (3, 'Victor Kozlov', 'Russia', 28, 'Forward'),
  (4, 'Gabriela Gonzalez', 'Mexico', 25, 'Midfielder'),
  (5, 'Riccardo Conti', 'Italy', 26, 'Defender'),
  (6, 'Marta Morales', 'Spain', 25, 'Forward'),
  (7, 'Daniel Wojcik', 'Poland', 28, 'Midfielder'),
  (8, 'Anastasia Petrova', 'Russia', 24, 'Defender'),
  (9, 'Carlos Hernandez', 'Spain', 25, 'Midfielder'),
  (10, 'Piotr Kowalski', 'Poland', 29, 'Forward'),
  (11, 'Lorena Sanchez', 'Spain', 26, 'Midfielder'),
  (12, 'Nikita Ivanov', 'Russia', 25, 'Defender'),
  (13, 'Sofia Martinez', 'Mexico', 23, 'Midfielder'),
  (14, 'Luis Andersen', 'Denmark', 27, 'Forward'),
  (15, 'Dimitar Petrov', 'Bulgaria', 30, 'Midfielder'),
  (16, 'Camila Lopez', 'Spain', 24, 'Defender'),
  (1, 'Mateusz Kowalski', 'Poland', 27, 'Forward'),
  (2, 'David Silva', 'Spain', 37, 'Midfielder'),
  (3, 'Hugo Sanchez', 'Mexico', 35, 'Forward'),
  (4, 'Emma Andersson', 'Sweden', 29, 'Defender'),
  (5, 'Arthur Rossi', 'Brazil', 28, 'Midfielder'),
  (6, 'Alexandru Popescu', 'Romania', 32, 'Defender'),
  (7, 'Nadia Gonzalez', 'Spain', 26, 'Forward'),
  (8, 'Victor Petrov', 'Russia', 33, 'Midfielder'),
  (9, 'Marcelo Lopez', 'Argentina', 30, 'Defender'),
  (10, 'Leonardo Bianchi', 'Italy', 34, 'Midfielder'),
  (11, 'Oliver Johansson', 'Sweden', 27, 'Forward'),
  (12, 'Salma Mohammed', 'Egypt', 28, 'Midfielder'),
  (13, 'Kasper Andersen', 'Denmark', 30, 'Defender'),
  (14, 'Bogdan Ivanov', 'Bulgaria', 31, 'Midfielder'),
  (15, 'Maria Rodriguez', 'Mexico', 25, 'Forward'),
  (16, 'Marco Conti', 'Italy', 29, 'Midfielder'),
  (1, 'Nikolay Kozlov', 'Russia', 26, 'Defender'),
  (2, 'Isabella Garcia', 'Colombia', 24, 'Midfielder'),
  (3, 'Rafael Nielsen', 'Denmark', 32, 'Forward'),
  (4, 'Igor Ivanov', 'Russia', 27, 'Midfielder'),
  (5, 'Carlos Morales', 'Spain', 29, 'Defender'),
  (6, 'Giuliana Rossi', 'Italy', 25, 'Forward'),
  (7, 'Damian Wojcik', 'Poland', 33, 'Midfielder'),
  (8, 'Ekaterina Petrova', 'Russia', 28, 'Defender'),
  (9, 'Javier Hernandez', 'Mexico', 31, 'Midfielder'),
  (10, 'Lukasz Kowalski', 'Poland', 32, 'Forward'),
  (11, 'Daniela Sanchez', 'Spain', 25, 'Midfielder'),
  (12, 'Nikita Ivanov', 'Russia', 24, 'Defender'),
  (13, 'Fernando Martinez', 'Mexico', 27, 'Midfielder'),
  (14, 'Gustavo Andersen', 'Denmark', 26, 'Forward'),
  (15, 'Luka Petrov', 'Bulgaria', 25, 'Midfielder'),
  (16, 'Elena Rodriguez', 'Spain', 28, 'Defender'),
  (4, 'Victor Kozlov', 'Russia', 29, 'Goalkeeper'),
  (5, 'Gabriela Gonzalez', 'Mexico', 26, 'Goalkeeperr'),
  (6, 'Riccardo Conti', 'Italy', 27, 'Goalkeeper'),
  (7, 'Marta Morales', 'Spain', 26, 'Goalkeeper'),
  (8, 'Daniel Wojcik', 'Poland', 29, 'Goalkeeper'),
  (9, 'Anastasia Petrova', 'Russia', 25, 'Goalkeeper'),
  (10, 'Carlos Hernandez', 'Spain', 26, 'Goalkeeper'),
  (11, 'Piotr Kowalski', 'Poland', 30, 'Goalkeeper'),
  (12, 'Lorena Sanchez', 'Spain', 27, 'Goalkeeper'),
  (13, 'Nikita Ivanov', 'Russia', 26, 'Goalkeeper'),
  (14, 'Sofia Martinez', 'Mexico', 24, 'Goalkeeperr'),
  (15, 'Luis Andersen', 'Denmark', 28, 'Goalkeeper'),
  (16, 'Dimitar Petrov', 'Bulgaria', 31, 'Goalkeeper'),
  (3, 'Camila Lopez', 'Spain', 25, 'Defender'),
  (4, 'Mateusz Kowalski', 'Poland', 28, 'Forward');








     
     SELECT count(*) FROM  players ;

CREATE TABLE matches (
  id INT PRIMARY KEY AUTO_INCREMENT,
  home_team_id INT,
  away_team_id INT,
  match_date DATE,
  home_team_goals INT,
  away_team_goals INT,
  FOREIGN KEY (home_team_id) REFERENCES teams(id),
  FOREIGN KEY (away_team_id) REFERENCES teams(id)
);

-- Insert data into the "matches" table
INSERT INTO matches (home_team_id, away_team_id, match_date, home_team_goals, away_team_goals)
VALUES
-- Team 1 matches
(1, 2, '2022-06-01', 2, 1),
(1, 3, '2022-06-05', 3, 0),
(1, 4, '2022-06-10', 1, 1),
(1, 5, '2022-06-15', 2, 0),
(1, 6, '2022-06-20', 3, 2),
(1, 7, '2022-06-25', 1, 1),
(1, 8, '2022-06-30', 2, 0),
(1, 9, '2022-07-05', 3, 1),
(1, 10, '2022-07-10', 2, 2),
(1, 11, '2022-07-15', 1, 0),
(1, 12, '2022-07-20', 3, 1),
(1, 13, '2022-07-25', 2, 2),
(1, 14, '2022-07-30', 1, 0),
(1, 15, '2022-08-04', 2, 1),
(1, 16, '2022-09-01', 4, 1),

-- Team 2 matches
(2, 1, '2022-06-02', 1, 2),
(2, 3, '2022-06-06', 3, 2),
(2, 4, '2022-06-11', 2, 1),
(2, 5, '2022-06-16', 3, 2),
(2, 6, '2022-06-21', 2, 3),
(2, 7, '2022-06-26', 2, 1),
(2, 8, '2022-07-01', 1, 2),
(2, 9, '2022-07-06', 1, 3),
(2, 10, '2022-07-11', 2, 2),
(2, 11, '2022-07-16', 2, 1),
(2, 12, '2022-07-21', 1, 3),
(2, 13, '2022-07-26', 2, 2),
(2, 14, '2022-07-31', 2, 1),
(2, 15, '2022-08-05', 2, 2),
(2, 16, '2022-09-02', 2, 1),


-- Team 3 matches
(3, 1, '2022-06-03', 0, 3),
(3, 2, '2022-06-07', 2, 0),
(3, 4, '2022-06-12', 1, 1),
(3, 5, '2022-06-17', 2, 1),
(3, 6, '2022-06-22', 1, 2),
(3, 7, '2022-06-27', 0, 0),
(3, 8, '2022-07-02', 1, 2),
(3, 9, '2022-07-07', 2, 1),
(3, 10, '2022-07-12', 1, 0),
(3, 11, '2022-07-17', 0, 1),
(3, 12, '2022-07-22', 2, 0),
(3, 13, '2022-07-27', 1, 1),
(3, 14, '2022-08-01', 0, 2),
(3, 15, '2022-08-06', 1, 1),
(3, 16, '2022-09-05', 3, 1),


-- Team 4 matches
(4, 1, '2022-06-04', 1, 0),
(4, 2, '2022-06-08', 2, 1),
(4, 3, '2022-06-13', 1, 2),
(4, 5, '2022-06-18', 0, 1),
(4, 6, '2022-06-23', 1, 0),
(4, 7, '2022-06-28', 2, 2),
(4, 8, '2022-07-03', 1, 0),
(4, 9, '2022-07-08', 0, 2),
(4, 10, '2022-07-13', 1, 1),
(4, 11, '2022-07-18', 2, 0),
(4, 12, '2022-07-23', 1, 2),
(4, 13, '2022-07-28', 0, 1),
(4, 14, '2022-08-02', 2, 2),
(4, 15, '2022-08-07', 1, 0),
(4, 16, '2022-09-07', 0, 0),


-- Team 5 matches
(5, 1, '2022-06-05', 0, 2),
(5, 2, '2022-06-09', 1, 1),
(5, 3, '2022-06-14', 2, 1),
(5, 4, '2022-06-19', 1, 0),
(5, 6, '2022-06-24', 0, 3),
(5, 7, '2022-06-29', 1, 2),
(5, 8, '2022-07-04', 2, 0),
(5, 9, '2022-07-09', 1, 1),
(5, 10, '2022-07-14', 0, 2),
(5, 11, '2022-07-19', 1, 0),
(5, 12, '2022-07-24', 2, 1),
(5, 13, '2022-07-29', 1, 0),
(5, 14, '2022-08-03', 0, 2),
(5, 15, '2022-08-08', 1, 1),
(5, 16, '2022-09-09', 2, 3),


-- Team 6 matches
(6, 1, '2022-06-06', 2, 3),
(6, 2, '2022-06-10', 1, 0),
(6, 3, '2022-06-15', 0, 2),
(6, 4, '2022-06-20', 2, 1),
(6, 5, '2022-06-25', 3, 0),
(6, 7, '2022-06-30', 2, 2),
(6, 8, '2022-07-05', 1, 1),
(6, 9, '2022-07-10', 0, 3),
(6, 10, '2022-07-15', 2, 0),
(6, 11, '2022-07-20', 1, 0),
(6, 12, '2022-07-25', 0, 2),
(6, 13, '2022-07-30', 2, 1),
(6, 14, '2022-08-04', 1, 2),
(6, 15, '2022-08-09', 0, 0),
(6, 16, '2022-09-10', 4, 1),


-- Team 7 matches
(7, 1, '2022-06-07', 0, 1),
(7, 2, '2022-06-11', 2, 1),
(7, 3, '2022-06-16', 1, 1),
(7, 4, '2022-06-21', 0, 2),
(7, 5, '2022-06-26', 1, 3),
(7, 6, '2022-07-01', 1, 1),
(7, 8, '2022-07-06', 0, 2),
(7, 9, '2022-07-11', 1, 3),
(7, 10, '2022-07-16', 2, 2),
(7, 11, '2022-07-21', 1, 0),
(7, 12, '2022-07-26', 0, 3),
(7, 13, '2022-07-31', 1, 2),
(7, 14, '2022-08-05', 2, 0),
(7, 15, '2022-08-10', 1, 1),
(7, 16, '2022-09-12', 1, 1),


-- Team 8 matches
(8, 1, '2022-06-08', 2, 0),
(8, 2, '2022-06-12', 1, 2),
(8, 3, '2022-06-17', 1, 1),
(8, 4, '2022-06-22', 2, 1),
(8, 5, '2022-06-27', 3, 1),
(8, 6, '2022-07-02', 1, 0),
(8, 7, '2022-07-07', 2, 0),
(8, 9, '2022-07-12', 1, 2),
(8, 10, '2022-07-17', 2, 0),
(8, 11, '2022-07-22', 1, 1),
(8, 12, '2022-07-27', 0, 2),
(8, 13, '2022-08-01', 2, 1),
(8, 14, '2022-08-06', 1, 0),
(8, 15, '2022-08-11', 0, 1),
(8, 16, '2022-09-13', 2, 2),


-- Team 9 matches
(9, 1, '2022-06-09', 1, 3),
(9, 2, '2022-06-13', 2, 1),
(9, 3, '2022-06-18', 1, 1),
(9, 4, '2022-06-23', 0, 2),
(9, 5, '2022-06-28', 1, 2),
(9, 6, '2022-07-03', 1, 3),
(9, 7, '2022-07-08', 2, 1),
(9, 8, '2022-07-13', 1, 1),
(9, 10, '2022-07-18', 0, 2),
(9, 11, '2022-07-23', 1, 0),
(9, 12, '2022-07-28', 2, 1),
(9, 13, '2022-08-02', 1, 0),
(9, 14, '2022-08-07', 0, 2),
(9, 15, '2022-08-12', 1, 1),
(9, 16, '2022-09-15', 1, 1),


-- Team 10 matches
(10, 1, '2022-06-10', 0, 2),
(10, 2, '2022-06-14', 1, 0),
(10, 3, '2022-06-19', 2, 2),
(10, 4, '2022-06-24', 1, 0),
(10, 5, '2022-06-29', 0, 2),
(10, 6, '2022-07-04', 3, 1),
(10, 7, '2022-07-09', 1, 2),
(10, 8, '2022-07-14', 0, 1),
(10, 9, '2022-07-19', 2, 0),
(10, 11, '2022-07-24', 1, 1),
(10, 12, '2022-07-29', 0, 2),
(10, 13, '2022-08-03', 2, 1),
(10, 14, '2022-08-08', 1, 0),
(10, 15, '2022-08-13', 0, 1),
(10, 16, '2022-09-17', 2, 1),


-- Team 11 matches
(11, 1, '2022-06-11', 1, 1),
(11, 2, '2022-06-15', 0, 2),
(11, 3, '2022-06-20', 2, 1),
(11, 4, '2022-06-25', 1, 0),
(11, 5, '2022-06-30', 0, 1),
(11, 6, '2022-07-05', 1, 0),
(11, 7, '2022-07-10', 2, 2),
(11, 8, '2022-07-15', 1, 0),
(11, 9, '2022-07-20', 0, 1),
(11, 10, '2022-07-25', 1, 2),
(11, 12, '2022-07-30', 2, 1),
(11, 13, '2022-08-04', 1, 2),
(11, 14, '2022-08-09', 0, 0),
(11, 15, '2022-08-14', 1, 1),
(11, 16, '2022-09-20', 0, 1),


-- Team 12 matches
(12, 1, '2022-06-12', 1, 3),
(12, 2, '2022-06-16', 2, 0),
(12, 3, '2022-06-21', 1, 2),
(12, 4, '2022-06-26', 0, 1),
(12, 5, '2022-07-01', 1, 0),
(12, 6, '2022-07-06', 0, 2),
(12, 7, '2022-07-11', 1, 3),
(12, 8, '2022-07-16', 2, 2),
(12, 9, '2022-07-21', 1, 0),
(12, 10, '2022-07-26', 0, 2),
(12, 11, '2022-07-31', 1, 1),
(12, 13, '2022-08-05', 2, 0),
(12, 14, '2022-08-10', 1, 2),
(12, 15, '2022-08-15', 0, 1),
(12, 16, '2022-09-22', 1, 2),


-- Team 13 matches
(13, 1, '2022-06-13', 0, 2),
(13, 2, '2022-06-17', 1, 1),
(13, 3, '2022-06-22', 2, 0),
(13, 4, '2022-06-27', 1, 2),
(13, 5, '2022-07-02', 0, 1),
(13, 6, '2022-07-07', 1, 1),
(13, 7, '2022-07-12', 2, 0),
(13, 8, '2022-07-17', 1, 2),
(13, 9, '2022-07-22', 0, 1),
(13, 10, '2022-07-27', 1, 0),
(13, 11, '2022-08-01', 2, 1),
(13, 12, '2022-08-06', 1, 0),
(13, 14, '2022-08-11', 0, 2),
(13, 15, '2022-08-16', 1, 1),
(13, 16, '2022-09-24', 1, 4),

-- Team 14 matches
(14, 1, '2022-06-14', 2, 1),
(14, 2, '2022-06-18', 1, 0),
(14, 3, '2022-06-23', 1, 1),
(14, 4, '2022-06-28', 2, 2),
(14, 5, '2022-07-03', 1, 0),
(14, 6, '2022-07-08', 0, 2),
(14, 7, '2022-07-13', 1, 1),
(14, 8, '2022-07-18', 2, 0),
(14, 9, '2022-07-23', 1, 2),
(14, 10, '2022-07-28', 0, 1),
(14, 11, '2022-08-02', 1, 2),
(14, 12, '2022-08-07', 2, 0),
(14, 13, '2022-08-12', 1, 1),
(14, 15, '2022-08-17', 0, 1),
(14, 16, '2022-09-25', 0, 1),


-- Team 15 matches
(15, 1, '2022-06-15', 1, 2),
(15, 2, '2022-06-19', 0, 1),
(15, 3, '2022-06-24', 1, 0),
(15, 4, '2022-06-29', 2, 2),
(15, 5, '2022-07-04', 1, 1),
(15, 6, '2022-07-09', 0, 2),
(15, 7, '2022-07-14', 1, 3),
(15, 8, '2022-07-19', 2, 2),
(15, 9, '2022-07-24', 1, 0),
(15, 10, '2022-07-29', 0, 1),
(15, 11, '2022-08-03', 1, 0),
(15, 12, '2022-08-08', 2, 1),
(15, 13, '2022-08-13', 1, 0),
(15, 14, '2022-08-18', 0, 2),
(15, 16, '2022-09-27', 0, 1),

-- Team 16 matches

(16, 1, '2022-06-16', 2, 1),
(16, 2, '2022-06-20', 1, 0),
(16, 3, '2022-06-25', 1, 1),
(16, 4, '2022-06-30', 2, 2),
(16, 5, '2022-07-05', 1, 0),
(16, 6, '2022-07-10', 0, 2),
(16, 7, '2022-07-15', 1, 1),
(16, 8, '2022-07-20', 2, 0),
(16, 9, '2022-07-25', 1, 2),
(16, 10, '2022-07-30', 0, 1),
(16, 11, '2022-08-04', 1, 2),
(16, 12, '2022-08-09', 2, 0),
(16, 13, '2022-08-14', 1, 1),
(16, 14, '2022-08-19', 0, 2),
(16, 15, '2022-08-24', 1, 1);



CREATE TABLE standings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  team_id INT,
  matches_played INT,
  wins INT,
  draws INT,
  losses INT,
  goals_for INT,
  goals_against INT,
  points INT,
  FOREIGN KEY (team_id) REFERENCES teams(id)
);

-- Insert data into the "standings" table
INSERT INTO standings (team_id, matches_played, wins, draws, losses, goals_for, goals_against, points)
VALUES 
(1, 15, 11, 4, 0, 33, 13, 37),

(2, 15, 7, 3, 5, 28, 28, 24),

(3, 15, 6, 4, 5, 17, 16, 22),

(4, 15, 6, 4, 5, 15, 14, 22),

(5, 15, 6, 3, 6, 15, 19, 21),

(6, 15, 7, 3, 5, 21, 18, 24),

(7, 15, 3, 5, 7, 14, 23, 14),

(8, 15, 8, 3, 4, 21, 14, 27),

(9, 15, 5, 4, 6, 15, 21, 19),

(10, 15, 7, 2, 6, 16, 16, 23),

(11, 15, 5, 4, 6, 13, 15, 19),

(12, 15, 4, 2, 9, 15, 21, 14),

(13, 15, 5, 3, 7, 14, 18, 18),

(14, 15, 5, 4, 6, 15, 15, 19),

(15, 15, 5, 3, 7, 13, 18, 18),

(16, 15, 5, 5, 5, 16, 16, 20);





CREATE TABLE referees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  nationality VARCHAR(100),
  experience_years INT
);

-- Insert data into the "referees" table
INSERT INTO referees (name, nationality, experience_years)
VALUES 
('Deniz Aytekin', '	Germany', 15),
('Felix Brych', 'Germany', 15),
('Cüneyt Çakır', 'Turkey', 14),
('Björn Kuipers', 'Netherlands', 13),
('Damir Skomina', 'Slovenia', 15),
('Nestor Pitana', 'Argentina', 12),
('Nicola Rizzoli', 'Italy', 14),
('Mark Clattenburg', 'England', 16),
('Clement Turpin', 'France', 11),
('Szymon Marciniak', 'Poland', 12),
('Fernando Rapallini', 'Argentina', 8),
('Sergei Karasev', 'Russia', 10),
('Anthony Taylor', 'England', 13),
('Felix Zwayer', 'Germany', 11),
('Danny Makkelie', 'Netherlands', 10),
('Carlos Velasco Carballo', 'Spain', 14),
('Antonio Mateu Lahoz', 'Spain', 12),
('Wilmar Roldán', 'Colombia', 13),
('Cesar Arturo Ramos Palazuelos', 'Mexico', 11),
('Andreas Ekberg', 'Sweden', 9),
('Anastasios Sidiropoulos', 'Greece', 10);

CREATE TABLE stadiums (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  city VARCHAR(100),
  capacity INT
);

-- Insert data into the "stadiums" table
INSERT INTO stadiums (name, city, capacity)
VALUES 
('Allianz Arena', 'Munich', 75000),
  ('Signal Iduna Park', 'Dortmund', 81365),
  ('Red Bull Arena', 'Leipzig', 42045),
  ('BayArena', 'Leverkusen', 30210),
  ('Borussia-Park', 'Mönchengladbach', 54345),
  ('Veltins-Arena', 'Gelsenkirchen', 62271),
  ('Deutsche Bank Park', 'Frankfurt', 51500),
  ('Mercedes-Benz Arena', 'Stuttgart', 60441),
  ('PreZero Arena', 'Sinsheim', 30150),
  ('Opel Arena', 'Mainz', 34000),
  ('WWK Arena', 'Augsburg', 30660),
  ('SchucoArena', 'Bielefeld', 27404),
  ('Schwarzwald-Stadion', 'Freiburg im Breisgau', 24000),
  ('Stadion An der Alten Försterei', 'Berlin', 22000),
  ('Vonovia Ruhrstadion', 'Bochum', 27212),
  ('Sportpark Ronhof Thomas Sommer', 'Fürth', 18000);





CREATE TABLE coaches (
  id INT PRIMARY KEY AUTO_INCREMENT,
  team_id INT,
  name VARCHAR(100) NOT NULL,
  nationality VARCHAR(100),
  experience_years INT,
  FOREIGN KEY (team_id) REFERENCES teams(id)
);

-- Insert data into the "coaches" table
INSERT INTO coaches (team_id, name, nationality, experience_years)
VALUES 
(1, 'Julian Nagelsmann', 'Germany', 10),
(2, 'Marco Rose', 'Germany', 15),
(3, 'Jesse Marsch', 'England', 20),
(4, 'Gerardo Seoane', 'Spain', 14),
(5, 'Adi Hütter', 'Germany', 13),
(6, 'Dimitrios Grammozis', 'Russia', 15),
(7, 'Oliver Glasner', 'Protugal', 16),
(8, 'Pellegrino Matarazzo', 'Italy', 17),
(9, 'Sebastian Hoeneß', 'Germany', 21),
(10, 'Bo Svensson', 'Russia', 12),
(11, 'Markus Weinzierl', 'Germany', 13),
(12, 'Frank Kramer', 'Germany', 13),
(13, 'Christian Streich', 'France', 12),
(14, 'Urs Fischer', 'Denmark', 10),
(15, 'Thomas Reis', 'Germany', 14),
(16, 'Stefan Leitl', 'Spain', 18);






CREATE TABLE leagues (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  country VARCHAR(100),
  season VARCHAR(100)
);


-- Insert data into the "leagues" table
INSERT INTO leagues (name, country, season)
VALUES ('Bundesliga', 'Germany', '2023-2024');

CREATE TABLE fixtures (
  id INT PRIMARY KEY AUTO_INCREMENT,
  home_team_id INT,
  away_team_id INT,
  match_date DATE,
  match_time TIME,
  stadium_id INT,
  referee_id INT,
  league_id INT,
  FOREIGN KEY (home_team_id) REFERENCES teams(id),
  FOREIGN KEY (away_team_id) REFERENCES teams(id),
  FOREIGN KEY (stadium_id) REFERENCES stadiums(id),
  FOREIGN KEY (referee_id) REFERENCES referees(id),
  FOREIGN KEY (league_id) REFERENCES leagues(id)
);

-- Insert data into the "fixtures" table
INSERT INTO fixtures (home_team_id, away_team_id, match_date, match_time, stadium_id, referee_id, league_id)
VALUES
   (1, 2, '2023-07-15', '19:00:00', 1, 1, 1),
  (3, 4, '2023-07-16', '15:30:00', 3, 2, 1),
  (5, 6, '2023-07-16', '18:00:00', 5, 3, 1),
  (7, 8, '2023-07-17', '14:00:00', 7, 4, 1),
  (9, 10, '2023-07-17', '16:30:00', 9, 5, 1),
  (11, 12, '2023-07-18', '19:00:00', 11, 6, 1),
  (13, 14, '2023-07-19', '15:30:00', 13, 7, 1),
  (15, 16, '2023-07-19', '18:00:00', 15, 8, 1),
  (2, 3, '2023-07-22', '19:00:00', 2, 9, 1),
  (4, 5, '2023-07-23', '15:30:00', 4, 10, 1),
  (6, 7, '2023-07-23', '18:00:00', 6, 11, 1),
  (8, 9, '2023-07-24', '14:00:00', 8, 12, 1),
  (10, 11, '2023-07-24', '16:30:00', 10, 13, 1),
  (12, 13, '2023-07-25', '19:00:00', 12, 14, 1),
  (14, 15, '2023-07-26', '15:30:00', 14, 15, 1),
  (16, 1, '2023-07-26', '18:00:00', 16, 16, 1),
  (3, 4, '2023-07-29', '19:00:00', 3, 17, 1),
  (5, 6, '2023-07-30', '15:30:00', 5, 18, 1),
  (7, 8, '2023-07-30', '18:00:00', 7, 19, 1),
  (9, 10, '2023-07-31', '14:00:00', 9, 20, 1),
  (11, 12, '2023-07-31', '16:30:00', 11, 1, 1),
  (13, 14, '2023-08-01', '19:00:00', 13, 2, 1),
  (15, 16, '2023-08-02', '15:30:00', 15, 3, 1),
  (1, 2, '2023-08-02', '18:00:00', 1, 4, 1),
  (2, 3, '2023-08-05', '19:00:00', 2, 5, 1),
  (4, 5, '2023-08-06', '15:30:00', 4, 6, 1),
  (6, 7, '2023-08-06', '18:00:00', 6, 7, 1),
  (8, 9, '2023-08-07', '14:00:00', 8, 8, 1),
  (10, 11, '2023-08-07', '16:30:00', 10, 9, 1),
  (12, 13, '2023-08-08', '19:00:00', 12, 10, 1),
  (14, 15, '2023-08-09', '15:30:00', 14, 11, 1),
  (16, 1, '2023-08-09', '18:00:00', 16, 12, 1),
  (3, 4, '2023-08-12', '19:00:00', 3, 13, 1),
  (5, 6, '2023-08-13', '15:30:00', 5, 14, 1),
  (7, 8, '2023-08-13', '18:00:00', 7, 15, 1),
  (9, 10, '2023-08-14', '14:00:00', 9, 16, 1),
  (11, 12, '2023-08-14', '16:30:00', 11, 17, 1),
  (13, 14, '2023-08-15', '19:00:00', 13, 18, 1),
  (15, 16, '2023-08-16', '15:30:00', 15, 19, 1),
  (1, 2, '2023-08-16', '18:00:00', 1, 20, 1);

/*


/*_____________________________________________________________________________*/
/*
select * from teams where id = '2';
select * from teams where founded_year < 1900 ;
select count(*) from teams;
select count(*) from players;

_*/

--   Retrieve all teams:
SELECT * FROM teams;

--  Retrieve all players:
SELECT * FROM players;
select count(*)  from players ;


--  Retrieve all matches:
SELECT * FROM matches;

-- Retrieve players sorted by nationality in alphabetical order:
SELECT * FROM players ORDER BY nationality asc;



-- Retrieve players from France or Germany:
SELECT * FROM players WHERE nationality IN ('France' 'Germany');
select * from players where nationality ='Germany';


-- Retrieve the players who are midfielders:
SELECT * FROM players WHERE position = 'Midfielder';


-- Retrieve the matches where the home team scored more than 2 goals:
SELECT * FROM matches WHERE home_team_goals > 2;



-- Retrieve the matches played on a specific date:
SELECT * FROM matches WHERE match_date = '2022-06-01';

-- Retrieve matches played after '2023-06-15':
SELECT * FROM matches WHERE match_date > '2022-06-15';

-- Retrieve matches played in June 2023:
SELECT * FROM matches WHERE match_date BETWEEN '2022-06-01' AND '2022-06-30';



-- Retrieve the players of a specific nationality, e.g., Germany:
SELECT * FROM players WHERE nationality = 'Germany';


-- Retrieve the teams whose coach is 'Marco Rose':
SELECT * FROM teams WHERE coach = 'Marco Rose';


-- Retrieve players older than 30 playing as midfielders:
SELECT * FROM players WHERE age > 30 AND position = 'Midfielder' ;


-- Retrieve players between the ages of 20 and 25:
SELECT * FROM players WHERE age BETWEEN 20 AND 25 ;



-- Retrieve the players of a specific team and also all in desc ordered by their age:
SELECT * FROM players WHERE team_id = 1 ORDER BY age;
SELECT * FROM players where age >35;
SELECT * FROM players ORDER BY age asc
limit 1;




-- Retrieve the matches where the away team won :
SELECT * FROM matches WHERE away_team_goals > home_team_goals;
SELECT count(*) from matches WHERE away_team_goals > home_team_goals;



-- Retrieve matches where home team and away team scored the same number of goals:
SELECT * FROM matches WHERE home_team_goals = away_team_goals;




-- Retrieve the teams located in a specific city, e.g., Berlin:
SELECT * FROM teams WHERE city = 'Berlin';



-- Retrieve teams with 'RB' in their name:
SELECT * FROM teams WHERE name LIKE 'RB';




--  Retrieve teams and their corresponding players:
SELECT t.name AS team_name, p.name AS player_name
FROM teams t
JOIN players p ON t.id = p.team_id;



--  Retrieve matches with their corresponding teams and goals:
SELECT
  m.match_date,
  home.name AS home_team,
  away.name AS away_team,
  m.home_team_goals,
  m.away_team_goals
FROM matches m
JOIN teams home ON m.home_team_id = home.id
JOIN teams away ON m.away_team_id = away.id;



--  Retrieve players for a specific team (e.g., Bayern Munich):
SELECT * FROM players
WHERE team_id = (SELECT id FROM teams WHERE name = 'Bayern Munich');




-- 7 Retrieve matches where a specific player (e.g., Thomas Muller) participated:
SELECT
  m.match_date,
  home.name AS home_team,
  away.name AS away_team,
  m.home_team_goals,
  m.away_team_goals
FROM matches m
JOIN teams home ON m.home_team_id = home.id
JOIN teams away ON m.away_team_id = away.id
JOIN players p ON (p.team_id = m.home_team_id OR p.team_id = m.away_team_id)
WHERE p.name = 'Thomas Muller';


--  Retrieve the total number of goals scored and concered by each team in a specific season (e.g., 2022-2023):
SELECT
  t.name AS team_name,
  SUM(CASE WHEN t.id = m.home_team_id THEN m.home_team_goals ELSE m.away_team_goals END) AS total_goals
FROM teams t
JOIN matches m ON t.id = m.home_team_id OR t.id = m.away_team_id 

GROUP BY t.name ;


select count(*) as refree from referees;

select * from standings order by points desc;

select count(*) from players where  name like '%M%'

