-- liquibase formatted sql

-- changeset autor:gutho_alves:create-federation

CREATE TABLE COUNTRIES
(
    ID          VARCHAR(36) NOT NULL UNIQUE DEFAULT (UUID()),
    NAME        VARCHAR(100),
    CODE        VARCHAR(6),
    DESCRIPTION VARCHAR(255),
    LATITUDE DOUBLE,
    LONGITUDE DOUBLE,
    PRIMARY KEY (ID)
);

CREATE TABLE STATE
(
    ID          VARCHAR(36) NOT NULL UNIQUE DEFAULT (UUID()),
    NAME        VARCHAR(100),
    CODE        VARCHAR(6),
    DESCRIPTION VARCHAR(255),
    LATITUDE DOUBLE,
    LONGITUDE DOUBLE,
    COUNTRY_ID VARCHAR(36),
    PRIMARY KEY (ID),
    FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRIES(ID)
);