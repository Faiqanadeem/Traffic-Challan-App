CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Status VARCHAR(20)
);
INSERT INTO Patients (PatientID, Name, Phone, Status)
VALUES
(45, 'Ali', '03001234567', 'Admitted'),
(46, 'Sara', '03007654321', 'Admitted'),
(47, 'Ahmed', '03009876543', 'Discharged');
SELECT *FROM Patients
WHERE PatientID = 45
  AND Name = 'Ali';
  UPDATE Patients
SET Status = 'Discharged'
WHERE PatientID = 45
  AND Name = 'Ali';