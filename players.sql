CREATE TABLE players (
    id integer,
    last_name text,
    first_name text,
    position text,
    jersey_number integer,
    weight integer,
    height integer,
    date_of_birth date
);

INSERT INTO players VALUES (1, 'Fisher', 'Derek', 'QB', 2, 210, 74, 'January 2, 1999' );
INSERT INTO players VALUES  (2 , 'Cunningham' , 'Reginald' , 'DE' , 55 , 240 , 75 , 'April 3, 1998');
INSERT INTO players VALUES(3 , 'Jackson' , 'Stephen' , 'WR' , 13 , 184 , 76 , 'October 13, 1998');
INSERT INTO players VALUES(4 , 'Colton' , 'Ryan' , 'K' , 81 , 238 , 74 , 'December 12, 1998');
INSERT INTO players VALUES( 5 , 'Wright' , 'Alexander' , 'RB' , 23 , 190 , 70 , 'March 13, 1999');
INSERT INTO players VALUES(6 , 'Smalls' , 'Elliot' , 'OLB' , 33 , 215 , 69 , 'February 23, 1999');

ALTER TABLE players ALTER COLUMN position SET NOT NULL;
ALTER TABLE players ALTER COLUMN jersey_number SET NOT NULL;

ALTER TABLE players ADD CONSTRAINT no_repeats UNIQUE (jersey_number);

ALTER TABLE players ADD CHECK (jersey_number > 0 AND jersey_number < 100);

ALTER TABLE players ALTER COLUMN position SET DEFAULT 'ATH';

INSERT INTO players VALUES(7 , 'Jamison' , 'Zion' , DEFAULT , 12 , 285 , 80 , 'October 25, 2000');
INSERT INTO players VALUES(8 , 'Johnson' , 'Craig' , 'P' , 17 , 173 , 72 , 'November 25, 1999');

 




