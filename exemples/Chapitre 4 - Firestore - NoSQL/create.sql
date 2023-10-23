-- Supprimer la table USERS_TRANSACTION
DROP TABLE USERS_TRANSACTION;

-- Supprimer la table TEAM_USER
DROP TABLE TEAM_USER;

-- Supprimer la table TEAMS_TRANSACTIONS
DROP TABLE TEAMS_TRANSACTIONS;

-- Supprimer la table TRANSACTIONS
DROP TABLE TRANSACTIONS;

-- Supprimer la table USERS
DROP TABLE USERS;

-- Supprimer la table TEAMS
DROP TABLE TEAMS;


-- Table User
CREATE TABLE USERS
(
    id        NUMBER PRIMARY KEY,
    firstName VARCHAR2(255) NOT NULL,
    lastName  VARCHAR2(255) NOT NULL,
    email     VARCHAR2(255) NOT NULL
);

-- Table Transaction
CREATE TABLE TRANSACTIONS
(
    id          NUMBER PRIMARY KEY,
    title       VARCHAR2(255) NOT NULL,
    description VARCHAR2(255),
    amount      NUMBER        NOT NULL,
    time      DATE          NOT NULL,
    owner_id    NUMBER,
    FOREIGN KEY (owner_id) REFERENCES USERS (id)
);

-- Table USERS_TRANSACTION (for concerns, many-to-many relationship)
CREATE TABLE USERS_TRANSACTION
(
    user_id        NUMBER,
    transaction_id NUMBER,
    FOREIGN KEY (user_id) REFERENCES USERS (id),
    FOREIGN KEY (transaction_id) REFERENCES TRANSACTIONS (id)
);

-- Table Team
CREATE TABLE TEAMS
(
    id          NUMBER PRIMARY KEY,
    title       VARCHAR2(255) NOT NULL,
    picturePath VARCHAR2(255),
    startDate   DATE          NOT NULL
);

-- Table TEAM_USER (for USERS, many-to-many relationship)
CREATE TABLE TEAM_USER
(
    team_id NUMBER,
    user_id NUMBER,
    FOREIGN KEY (team_id) REFERENCES TEAMS (id),
    FOREIGN KEY (user_id) REFERENCES USERS (id)
);

-- Table Team_Transaction (for transactions, many-to-many relationship)
CREATE TABLE TEAMS_TRANSACTIONS
(
    team_id        NUMBER,
    transaction_id NUMBER,
    FOREIGN KEY (team_id) REFERENCES TEAMS (id),
    FOREIGN KEY (transaction_id) REFERENCES TRANSACTIONS (id)
);
