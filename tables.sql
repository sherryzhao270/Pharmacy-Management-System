create table employee(
    E_SSN INT NOT NULL UNIQUE ,
    E_Name VARCHAR(50),
    P_Id INT NOT NULL,
    FOREIGN KEY (P_Id) REFERENCES pharmacy (P_Id),
    CONSTRAINT pk_employee PRIMARY KEY (E_SSN)
);

create table pharmacy(
    P_Id INT NOT NULL UNIQUE,
    P_Name VARCHAR(100) NOT NULL,
    P_Address VARCHAR(100) NOT NULL,
    CONSTRAINT pk_pharmacy PRIMARY KEY (P_Id)
);

create table medicine(
    M_Id INT NOT NULL UNIQUE,
    M_Name VARCHAR(100) NOT NULL,
    M_Price INT NOT NULL ,
    M_Expiration_Date DATE NOT NULL ,
    E_SSN INT,
    P_Id INT NOT NULL,
    F_ID INT NOT NULL,
    C_SSN INT,
    Purchase_date DATE,
    FOREIGN KEY (P_Id) REFERENCES pharmacy (P_Id),
    FOREIGN KEY (E_SSN) REFERENCES employee (E_SSN),
    FOREIGN KEY (F_ID) REFERENCES manufacturer (F_ID),
    FOREIGN KEY (C_SSN) REFERENCES customer (C_SSN),
    CONSTRAINT pk_medicine PRIMARY KEY (M_Id,M_Name)
);

create table doctor(
    D_ID INT NOT NULL UNIQUE,
    D_Name VARCHAR(50) NOT NULL,
    D_Hospital VARCHAR(100) NOT NULL,
    CONSTRAINT pk_doctor PRIMARY KEY (D_ID)
);

create table manufacturer (
    F_ID INT NOT NULL UNIQUE,
    F_Name VARCHAR(100),
    F_phone_num VARCHAR(10),
    F_address VARCHAR,
    PRIMARY KEY (F_ID)
);

create table customer (
    C_SSN INT NOT NULL UNIQUE,
    C_Name VARCHAR(50),
    C_Sex VARCHAR(10),
    C_PhoneNum VARCHAR(10),
    C_Address VARCHAR(50),
    PRIMARY KEY (C_SSN)
);

create table prescription_medicine(
    M_id INT PRIMARY KEY,
    D_id INT,
    FOREIGN KEY (M_id) REFERENCES medicine (M_id),
    FOREIGN KEY (D_id) REFERENCES doctor (D_id)
);

CREATE TABLE see(
    D_id INT NOT NULL,
    C_SSN INT NOT NULL,
    FOREIGN KEY (D_id) REFERENCES doctor (D_id),
    FOREIGN KEY (C_SSN) REFERENCES customer (C_SSN),
    PRIMARY KEY (D_id, C_SSN)
);

CREATE TABLE contact(
    P_id INT NOT NULL,
    F_ID INT NOT NULL,
    FOREIGN KEY (P_id) REFERENCES pharmacy (P_id),
    FOREIGN KEY (F_ID) REFERENCES manufacturer (F_ID),
    PRIMARY KEY (P_id, F_ID)
);
