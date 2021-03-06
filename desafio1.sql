DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos(
  plano_id INT NOT NULL AUTO_INCREMENT,
  plano VARCHAR(45) NOT NULL DEFAULT '',
  valor DECIMAL(5,2) NULL DEFAULT 0,
  PRIMARY KEY (plano_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (plano, valor)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitario', 5.99),
  ('pessoal', 6.99);
  
  CREATE TABLE SpotifyClone.artistas(
  artista_id INT NOT NULL AUTO_INCREMENT,
  artista VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY (artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.artistas (artista)
VALUES
  ('Walter Phoenix'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong'),
  ('Tyler Isle'),
  ('Fog');
  
  CREATE TABLE SpotifyClone.albums(
  album_id INT NOT NULL AUTO_INCREMENT,
  album VARCHAR(45) NOT NULL DEFAULT '',
  artista_id INT NOT NULL,
  ano_lancamento INT NOT NULL DEFAULT 0,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.albums (album, artista_id, ano_lancamento)
VALUES
  ('Envious', 1, 1990),
  ('Exuberant', 1, 1993),
  ('Hallowed Steam', 4, 1995),
  ('Incandescent', 3, 1998),
  ('Temporary Culture', 2, 2001),
  ('Library of liberty', 2, 2003),
  ('Chained Down', 5, 2007),
  ('Cabinet of fools', 5, 2012),
  ('No guarantees', 5, 2015),
  ('Apparatus', 6, 2015);  
  
  CREATE TABLE SpotifyClone.cancoes(
  cancao_id INT NOT NULL AUTO_INCREMENT,
  cancao VARCHAR(45) NOT NULL DEFAULT '',
  duracao_segundos INT NOT NULL DEFAULT 0,
  album_id INT NOT NULL,
  PRIMARY KEY (cancao_id),
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.cancoes (cancao, duracao_segundos, album_id)
VALUES
  ('Honey', 79, 10),
  ('Walking And Man', 229, 7),
  ('Young And Father', 197, 6),
  ('Diamond Power', 241, 4),
  ("Let's Be Silly", 132, 4),
  ('I Heard I Want To Be Alone', 120, 9),
  ('Finding My Traditions', 179, 7),
  ('Without My Love', 111, 6),
  ('Baby', 136, 10),
  ('Magic Circus', 105, 1),
  ('Dance With Her Own', 116, 7),
  ('Hard And Time', 135, 1),
  ('Reflections Of Magic', 163, 9),
  ('I Ride Alone', 151, 7),
  ("Honey, I'm A Lone Wolf", 150, 3),
  ('Honey, So Do I', 207, 4),
  ('Rock His Everything', 223, 10),
  ('Soul For Us', 200, 8),
  ("Wouldn't It Be Nice", 213, 8),
  ("He Heard You're Bad For Me", 154, 6),
  ("He Hopes We Can't Stay", 210, 2),
  ('Walking And Game', 123, 4),
  ('Time Fireworks', 152, 10),
  ('Troubles Of My Inner Fire', 203, 9),
  ('Celebration Of More', 146, 9),
  ('You Make Me Feel So..', 83, 5),
  ("He's Walking Away", 159, 3),
  ("He's Trouble", 138, 3),
  ('Thang Of Thunder', 240, 6),
  ('Words Of Her Life', 185, 4),
  ("Sweetie, Let's Go Wild", 139, 5),
  ('She Knows', 244, 6),
  ('History Of My Roses', 222, 8),
  ('Home Forever', 231, 8),
  ('Fantasy For Me', 100, 10),
  ('Without My Streets', 176, 3),
  ('Need Of The Evening', 190, 1),
  ('I Know I Know', 117, 2),
  ("She Thinks I Won't Stay Tonight", 166, 5),
  ('You Cheated On Me', 95, 4);
  
  CREATE TABLE SpotifyClone.usuarios(
  usuario_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL DEFAULT '',
  idade INT NOT NULL DEFAULT 0,
  plano_id INT NOT NULL,
  data_assinatura DATE NOT NULL,
  PRIMARY KEY (usuario_id),
  FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.usuarios (nome, idade, plano_id, data_assinatura)
VALUES
  ('Thati', 23, 1, '2019-10-20'),
  ('Cintia', 35, 2, '2017-12-30'),
  ('Bill', 20, 3, '2019-06-05'),
  ('Roger', 45, 4, '2020-05-13'),
  ('Norman', 58, 4, '2017-02-17'),
  ('Patrick', 33, 2, '2017-01-06'),
  ('Vivian', 26, 3, '2018-01-05'),
  ('Carol', 19, 3, '2018-02-14'),
  ('Angelina', 42, 2, '2018-04-29'),
  ('Paul', 46, 2, '2017-01-17');
  
  CREATE TABLE SpotifyClone.historico(
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  data_reproducao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.historico (usuario_id, cancao_id, data_reproducao)
VALUES
  (1, 1, '2020-02-28 10:45:55'),
  (1, 2, '2020-05-02 05:30:35'),
  (1, 3, '2020-03-06 11:22:33'),
  (1, 4, '2020-08-05 08:05:17'),
  (1, 5, '2020-09-14 16:32:22'),
  (2, 6, '2020-01-02 07:40:33'),
  (2, 7, '2020-05-16 06:16:22'),
  (2, 8, '2020-10-09 12:27:48'),
  (2, 9, '2020-09-21 13:14:46'),
  (3, 10, '2020-11-13 16:55:13'),
  (3, 11, '2020-12-05 18:38:30'),
  (3, 12, '2020-07-30 10:00:00'),
  (4, 13, '2021-08-15 17:10:10'),
  (4, 14, '2021-07-10 15:20:30'),
  (4, 15, '2021-01-09 01:44:33'),
  (5, 16, '2020-07-03 19:33:28'),
  (5, 17, '2017-02-24 21:14:22'),
  (5, 4, '2020-08-06 15:23:43'),
  (5, 18, '2020-11-10 13:52:27'),
  (6, 19, '2019-02-07 20:33:48'),
  (6, 20, '2017-01-24 00:31:17'),
  (6, 21, '2017-10-12 12:35:20'),
  (6, 22, '2018-05-29 14:56:41'),
  (7, 23, '2018-05-09 22:30:49'),
  (7, 24, '2020-07-27 12:52:58'),
  (7, 25, '2018-01-16 18:40:43'),
  (8, 9, '2018-03-21 16:56:40'),
  (8, 26, '2020-10-18 13:38:05'),
  (8, 27, '2019-05-25 08:14:03'),
  (8, 28, '2021-08-15 21:37:09'),
  (9, 29, '2021-05-24 17:23:45'),
  (9, 30, '2018-12-07 22:48:52'),
  (9, 31, '2021-03-14 06:14:26'),
  (9, 32, '2020-04-01 03:36:00'),
  (10, 33, '2017-02-06 08:21:34'),
  (10, 8, '2017-12-04 05:33:43'),
  (10, 17, '2017-07-27 05:24:49'),
  (10, 34, '2017-12-25 01:03:57');
  
  CREATE TABLE SpotifyClone.favArt(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.favArt (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 3),
  (6, 1),
  (7, 4),
  (7, 5),
  (8, 1),
  (8, 5),
  (9, 6),
  (9, 2),
  (9, 3),
  (10, 4),
  (10, 6);
