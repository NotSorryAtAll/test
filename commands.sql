CREATE TABLE IF NOT EXISTS MedicalRecords(
    MedicalRecordsID INTEGER PRIMARY KEY AUTOINCREMENT,
    Patients_id INT,
    Allergies VarChar(25),
    Previous_Condition VarChar(30),
    Previous_Medication VarChar(30),
    Vaccines VarChar (30),
    Previous_Appointments VarChar(50),
    FOREIGN KEY (Patients_id) REFERENCES patients (id)

);

CREATE TABLE IF NOT EXISTS patients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    First_Name VarChar(100) ,
    Last_Name VarChar(100),
    DOB INT ,
    Address TEXT ,
    Contact_number INT,
    Appointment_id INT
);

CREATE TABLE IF NOT EXISTS GP (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    GP_name VARCHAR(100) NOT NULL
);

CREATE TABLE  IF NOT EXISTS Appointment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    gp_id INT,
    patient_id INT,
    appointment_date_time DATETIME,
    room INTEGER NOT NULL,
    start_time TIME,
    end_time TIME,
    FOREIGN KEY (gp_id) REFERENCES GP (id)
    FOREIGN KEY (patient_id) REFERENCES patients (id)

);
INSERT into patients (id, first_name, last_name, DOB, address, contact_number, appointment_id) VALUES (NULL, 'NULTimothy', 'Davidson', '15-08-1998', '25 Hill Top Road, Coventry, CV10 6AO', '07457851499', '1');
INSERT INTO medicalrecords VALUES (NULL, 1, "Grass", "None", "None", "1", "None");
INSERT INTO GP VALUES (NULL, "BOB");
INSERT INTO Appointment VALUES (NULL, 1, 1, "30/08/2022", "room B", "13:00", "13:30");


