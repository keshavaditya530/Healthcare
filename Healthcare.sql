CREATE database Healthcare;
USE Healthcare;

CREATE TABLE Diagnoses (
	DiagnosisID INT PRIMARY KEY,
	DiagnosisName NVARCHAR(255) NOT NULl
	);

	SELECT * FROM Diagnoses;


	CREATE TABLE Outcomes (
	OutcomeID INT PRIMARY KEY,
	OutcomeName NVARCHAR(255) NOT NULL
	);

	CREATE TABLE Patients (
	PatientID INT PRIMARY KEY,
	NAME NVARCHAR(255) NOT NULL,
	Age INT,
	Gender CHAR(1),
	DiagnosisID INT,
	AdnmissionDate DATE,
	DischargeDate DATE,
	OutcomeID INT,
	TreatmentCost DECIMAL(10, 2),
	foreign key (DiagnosisID) references Diagnoses(DiagnosisID),
	foreign key (OutcomeID) references Outcomes(OutcomeID)
	);

	CREATE TABLE Labs (
	LabID INT PRIMARY KEY,
	PatientID INT,
	TestName NVARCHAR(255) NOT NULL,
	Result decimal(10, 2),
	NormalRange NVARCHAR(255),
	foreign key (PatientID) references Patients(PatientID)
	);

	SELECT * FROM Outcomes;


	
	