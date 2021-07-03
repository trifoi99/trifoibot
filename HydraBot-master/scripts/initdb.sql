CREATE SCHEMA TrifoiBotDB;

CREATE TABLE TrifoiBotDB.USERS (
  ID varchar(255) NOT NULL,
  UPTIME bigint NOT NULL,
  NAME varchar(255) NOT NULL,
  APITOKEN varchar(40),              -- A token string generated using SHA1 (40 hexdigits).
  PRIMARY KEY (ID)
);

CREATE TABLE  TrifoiBotDB.GAMES (
  TITLE varchar(255) NOT NULL,
  ID varchar(255) not NULL,
  TIME_PLAYED bigint NOT NULL,
  AMOUNT_PLAYED int NOT NULL,
  FOREIGN KEY (ID) references  HydraBotDB.USERS ON DELETE CASCADE,
  PRIMARY KEY(ID, TITLE)
);

CREATE TABLE TrifoiBotDB.SOUNDS (
  NAME varchar(255) NOT NULL,
  PATH varchar(511) NOT NULL,
  AMOUNT_REQUESTS int NOT NULL,
  DESCRIPTION varchar(1023),
  PRIMARY KEY (NAME)
);

CREATE TABLE TrifoiBotDB.BINSENWEISHEITEN (
  ID SERIAL,
  content varchar(511) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE TrifoiBotDB.FLAMEFORDANIEL (
  ID SERIAL,
  content varchar(511) NOT NULL,
  PRIMARY KEY (ID)
);
