DROP TABLE IF EXISTS bandas;

CREATE TABLE bandas (
  nombre character varying (50),
  pais character varying (50)
);

INSERT INTO bandas (nombre, pais) VALUES ('Kraftwerk', 'Alemania');
INSERT INTO bandas (nombre, pais) VALUES ('Los Prisioneros', 'Chile');
INSERT INTO bandas (nombre, pais) VALUES ('KMFDM', 'Alemania');
INSERT INTO bandas (nombre, pais) VALUES ('Muse', 'UK');
INSERT INTO bandas (nombre, pais) VALUES ('The Chemical Brothers', 'UK');
INSERT INTO bandas (nombre, pais) VALUES ('TOOL', 'USA');
INSERT INTO bandas (nombre, pais) VALUES ('The Beatles', 'UK');
INSERT INTO bandas (nombre, pais) VALUES ('Modeselektor', 'Alemania');
SELECT * FROM bandas