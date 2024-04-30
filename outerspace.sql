CREATE TABLE stars(
    name VARCHAR(20) PRIMARY KEY NOT NULL,
    temp VARCHAR(10)
);

CREATE TABLE planets(
    name VARCHAR(20) PRIMARY KEY NOT NULL,
    orbits_around_star VARCHAR(20) NOT NULL REFERENCES stars
);

CREATE TABLE moons(
    name VARCHAR(20) PRIMARY KEY NOT NULL,
    planet VARCHAR(20) NOT NULL REFERENCES planets
);

INSERT INTO planets(name, orbits_around_star)
VALUES
    ('Earth','The Sun'),
    ('Mars','The Sun'),
    ('Venus','The Sun'),
    ('Proxima Centauri b','Proxima Centauri'),
    ('Gliese 876 b','Gliese 876');


INSERT INTO stars(name, temp)
VALUES
    ('The Sun','5800°K'),
    ('Proxima Centauri','3042°K'),
    ('Gliese 876','3192°K');

INSERT INTO moons(name, planet)
VALUES
    ('The Moon','Earth'),
    ('Phobos','Mars'),
    ('Deimos','Mars');