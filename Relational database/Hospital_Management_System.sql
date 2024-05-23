-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2024 at 04:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Hospital_Management_System`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrative`
--

CREATE TABLE `administrative` (
  `Adid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `administrative`
--

INSERT INTO `administrative` (`Adid`) VALUES
('E0031'),
('E0032'),
('E0033'),
('E0034'),
('E0035'),
('E0036'),
('E0037'),
('E0038'),
('E0039'),
('E0040'),
('E0041'),
('E0042'),
('E0043'),
('E0044'),
('E0045');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Aid` varchar(5) DEFAULT NULL,
  `ADate` varchar(10) DEFAULT NULL,
  `ATime` varchar(8) DEFAULT NULL,
  `Start_Time` varchar(8) DEFAULT NULL,
  `End_Time` varchar(8) DEFAULT NULL,
  `Pid` varchar(5) DEFAULT NULL,
  `Symptoms` varchar(11) DEFAULT NULL,
  `Drid` varchar(5) DEFAULT NULL,
  `Diagnosis` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Aid`, `ADate`, `ATime`, `Start_Time`, `End_Time`, `Pid`, `Symptoms`, `Drid`, `Diagnosis`) VALUES
('A0001', '2024-05-16', '10:00:00', '10:00:00', '11:00:00', 'P0001', 'Fever', 'E0001', 'Flu'),
('A0002', '2024-05-16', '11:00:00', '11:00:00', '12:00:00', 'P0002', 'Cough', 'E0002', 'Cold'),
('A0003', '2024-05-17', '09:00:00', '09:00:00', '10:00:00', 'P0003', 'Headache', 'E0003', 'Migraine'),
('A0004', '2024-05-17', '11:00:00', '11:00:00', '12:00:00', 'P0004', 'Stomachache', 'E0004', 'Indigestion'),
('A0005', '2024-05-18', '14:00:00', '14:00:00', '15:00:00', 'P0005', 'Fever', 'E0001', 'Flu'),
('A0006', '2024-05-19', '10:00:00', '10:00:00', '11:00:00', 'P0006', 'Cough', 'E0002', 'Cold'),
('A0007', '2024-05-20', '13:00:00', '13:00:00', '14:00:00', 'P0007', 'Back pain', 'E0005', 'Muscle strain'),
('A0008', '2024-05-21', '09:00:00', '09:00:00', '10:00:00', 'P0008', 'Headache', 'E0003', 'Migraine'),
('A0009', '2024-05-22', '12:00:00', '12:00:00', '13:00:00', 'P0009', 'Stomachache', 'E0004', 'Indigestion'),
('A0010', '2024-05-23', '15:00:00', '15:00:00', '16:00:00', 'P0010', 'Fever', 'E0001', 'Flu'),
('A0011', '2024-05-24', '10:00:00', '10:00:00', '11:00:00', 'P0011', 'Cough', 'E0002', 'Cold'),
('A0012', '2024-05-25', '13:00:00', '13:00:00', '14:00:00', 'P0012', 'Back pain', 'E0005', 'Muscle strain'),
('A0013', '2024-05-26', '09:00:00', '09:00:00', '10:00:00', 'P0013', 'Headache', 'E0003', 'Migraine'),
('A0014', '2024-05-27', '12:00:00', '12:00:00', '13:00:00', 'P0014', 'Stomachache', 'E0004', 'Indigestion'),
('A0015', '2024-05-28', '15:00:00', '15:00:00', '16:00:00', 'P0015', 'Fever', 'E0001', 'Flu');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bid` varchar(5) DEFAULT NULL,
  `Medical_Cost` decimal(6,2) DEFAULT NULL,
  `Room_Cost` decimal(6,2) DEFAULT NULL,
  `Other_Costs` decimal(6,2) DEFAULT NULL,
  `Total_Cost` decimal(6,2) DEFAULT NULL,
  `Pid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bid`, `Medical_Cost`, `Room_Cost`, `Other_Costs`, `Total_Cost`, `Pid`) VALUES
('B0001', 1500.00, 1000.00, 500.00, 3000.00, 'P0001'),
('B0002', 2000.00, 800.00, 400.00, 3200.00, 'P0002'),
('B0003', 3000.00, 1200.00, 800.00, 5000.00, 'P0003'),
('B0004', 1000.00, 500.00, 200.00, 1700.00, 'P0004'),
('B0005', 2500.00, 1500.00, 1000.00, 5000.00, 'P0005'),
('B0006', 1800.00, 900.00, 300.00, 3000.00, 'P0006'),
('B0007', 3500.00, 1000.00, 600.00, 5100.00, 'P0007'),
('B0008', 1200.00, 700.00, 400.00, 2300.00, 'P0008'),
('B0009', 2200.00, 1300.00, 600.00, 4100.00, 'P0009'),
('B0010', 2800.00, 900.00, 500.00, 4200.00, 'P0010'),
('B0011', 1500.00, 1000.00, 500.00, 3000.00, 'P0011'),
('B0012', 2000.00, 800.00, 400.00, 3200.00, 'P0012'),
('B0013', 3000.00, 1200.00, 800.00, 5000.00, 'P0013'),
('B0014', 1000.00, 500.00, 200.00, 1700.00, 'P0014'),
('B0015', 2500.00, 1500.00, 1000.00, 5000.00, 'P0015');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Did` varchar(5) DEFAULT NULL,
  `Dname` varchar(13) DEFAULT NULL,
  `Dcontact` varchar(12) DEFAULT NULL,
  `Eid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Did`, `Dname`, `Dcontact`, `Eid`) VALUES
('D0001', 'Cardiology', '123-456-7890', 'E0001'),
('D0002', 'Oncology', '234-567-8901', 'E0002'),
('D0003', 'Neurology', '345-678-9012', 'E0003'),
('D0004', 'Orthopedics', '456-789-0123', 'E0004'),
('D0005', 'Pediatrics', '567-890-1234', 'E0005'),
('D0006', 'Radiology', '678-901-2345', 'E0006'),
('D0007', 'Emergency', '789-012-3456', 'E0007'),
('D0008', 'Anesthesia', '890-123-4567', 'E0008'),
('D0009', 'Dermatology', '901-234-5678', 'E0009'),
('D0010', 'Urology', '012-345-6789', 'E0010'),
('D0011', 'Gastroentero', '123-456-7890', 'E0011'),
('D0012', 'Ophthalmology', '234-567-8901', 'E0012'),
('D0013', 'Psychiatry', '345-678-9012', 'E0013'),
('D0014', 'Endocrinology', '456-789-0123', 'E0014'),
('D0015', 'Dentistry', '567-890-1234', 'E0015');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Drid` varchar(5) DEFAULT NULL,
  `Qualification` varchar(15) DEFAULT NULL,
  `Office` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Drid`, `Qualification`, `Office`) VALUES
('E0001', 'Cardiologist', 'A101'),
('E0002', 'Dermatologist', 'B202'),
('E0003', 'Gynecologist', 'C303'),
('E0004', 'Neurologist', 'D404'),
('E0005', 'Ophthalmologist', 'E505'),
('E0006', 'Pediatrician', 'F606'),
('E0007', 'Orthosurgeon', 'G707'),
('E0008', 'Urologist', 'H808'),
('E0009', 'Endocrinologist', 'I909'),
('E0010', 'Psychiatrist', 'J1010'),
('E0011', 'Oncologist', 'K1111'),
('E0012', 'Radiologist', 'L1212'),
('E0013', 'Hematologist', 'M1313'),
('E0014', 'Anesthesiolog', 'N1414'),
('E0015', 'Pulmonologist', 'O1515');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Eid` varchar(5) DEFAULT NULL,
  `Ename` varchar(8) DEFAULT NULL,
  `Esurname` varchar(8) DEFAULT NULL,
  `Eage` int(2) DEFAULT NULL,
  `Egender` varchar(1) DEFAULT NULL,
  `Eaddress` varchar(12) DEFAULT NULL,
  `Econtact` varchar(8) DEFAULT NULL,
  `Did` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Eid`, `Ename`, `Esurname`, `Eage`, `Egender`, `Eaddress`, `Econtact`, `Did`) VALUES
('E0001', 'John', 'Smith', 35, 'M', 'New York', '555-1234', 'D0001'),
('E0002', 'Emily', 'Johnson', 28, 'F', 'Los Angeles', '555-2345', 'D0002'),
('E0003', 'Michael', 'Williams', 45, 'M', 'Chicago', '555-3456', 'D0003'),
('E0004', 'Olivia', 'Brown', 30, 'F', 'Phoenix', '555-4567', 'D0004'),
('E0005', 'Robert', 'Jones', 40, 'M', 'San Jose', '555-5678', 'D0005'),
('E0006', 'James', 'Garcia', 50, 'M', 'San Antonio', '555-6789', 'D0006'),
('E0007', 'Finneas', 'Jolie', 33, 'M', 'Philadelphia', '555-7890', 'D0007'),
('E0008', 'Billie', 'Short', 42, 'F', 'San Diego', '555-8901', 'D0008'),
('E0009', 'Tony', 'Spark', 38, 'M', 'Dallas', '555-9012', 'D0009'),
('E0010', 'Eddie', 'Scott', 31, 'M', 'New York', '555-0123', 'D0010'),
('E0011', 'Eve', 'Eilish', 29, 'F', 'Los Angeles', '222-7890', 'D0001'),
('E0012', 'Travis', 'Kelce', 50, 'M', 'Chicago', '777-7711', 'D0002'),
('E0013', 'Angelina', 'Anderson', 38, 'F', 'Houston', '555-5555', 'D0003'),
('E0014', 'Nick', 'Clark', 37, 'M', 'Phoenix', '555-5433', 'D0004'),
('E0015', 'Alisa', 'Benett', 64, 'F', 'Philadelphia', '555-6789', 'D0005');

-- --------------------------------------------------------

--
-- Table structure for table `medical_record`
--

CREATE TABLE `medical_record` (
  `Mrdate` varchar(10) DEFAULT NULL,
  `Mrstate` varchar(10) DEFAULT NULL,
  `Mrcondition` varchar(12) DEFAULT NULL,
  `Mrsurgeries` varchar(13) DEFAULT NULL,
  `Pid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `medical_record`
--

INSERT INTO `medical_record` (`Mrdate`, `Mrstate`, `Mrcondition`, `Mrsurgeries`, `Pid`) VALUES
('2022-01-05', 'Admitted', 'Fever', 'None', 'P0001'),
('2022-03-15', 'Discharged', 'Malaria', 'Appendectomy', 'P0003'),
('2022-04-10', 'Admitted', 'Heart attack', 'None', 'P0002'),
('2022-05-22', 'Discharged', 'Pneumonia', 'Tonsillectomy', 'P0005'),
('2022-06-01', 'Admitted', 'Stroke', 'None', 'P0008'),
('2022-07-18', 'Discharged', 'Influenza', 'Hernia repair', 'P0004'),
('2022-08-07', 'Admitted', 'Appendicitis', 'None', 'P0006'),
('2022-09-11', 'Discharged', 'Fracture', 'Appendectomy', 'P0009'),
('2022-10-05', 'Admitted', 'Pneumonia', 'None', 'P0007'),
('2022-11-30', 'Discharged', 'Asthma', 'Tonsillectomy', 'P0010'),
('2023-01-02', 'Admitted', 'Fever', 'None', 'P0011'),
('2023-03-17', 'Discharged', 'Malaria', 'Appendectomy', 'P0013'),
('2023-04-09', 'Admitted', 'Heart attack', 'None', 'P0012'),
('2023-05-26', 'Discharged', 'Pneumonia', 'Tonsillectomy', 'P0015'),
('2023-06-02', 'Admitted', 'Stroke', 'None', 'P0014');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `Nid` varchar(5) DEFAULT NULL,
  `Drid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`Nid`, `Drid`) VALUES
('E0016', 'E0001'),
('E0017', 'E0002'),
('E0018', 'E0003'),
('E0019', 'E0004'),
('E0020', 'E0005'),
('E0021', 'E0006'),
('E0022', 'E0007'),
('E0023', 'E0008'),
('E0024', 'E0009'),
('E0025', 'E0010'),
('E0026', 'E0011'),
('E0027', 'E0012'),
('E0028', 'E0013'),
('E0029', 'E0014'),
('E0030', 'E0015');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Pid` varchar(5) DEFAULT NULL,
  `Pname` varchar(9) DEFAULT NULL,
  `Psurname` varchar(9) DEFAULT NULL,
  `Ppage` int(2) DEFAULT NULL,
  `Pgender` varchar(1) DEFAULT NULL,
  `Paddress` varchar(12) DEFAULT NULL,
  `Pcontact` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Pid`, `Pname`, `Psurname`, `Ppage`, `Pgender`, `Paddress`, `Pcontact`) VALUES
('P0001', 'Steve', 'Martin', 35, 'M', 'New York', '555-1234'),
('P0002', 'Jane', 'Smith', 45, 'F', 'Los Angeles', '555-5678'),
('P0003', 'Michael', 'Johnson', 25, 'M', 'Chicago', '555-9012'),
('P0004', 'Emily', 'Williams', 55, 'F', 'Houston', '555-3456'),
('P0005', 'William', 'Brown', 30, 'M', 'Phoenix', '555-7890'),
('P0006', 'Olivia', 'Jones', 40, 'F', 'Philadelphia', '555-2345'),
('P0007', 'James', 'Garcia', 50, 'M', 'San Antonio', '555-6789'),
('P0008', 'Sophia', 'Martinez', 20, 'F', 'San Diego', '555-0123'),
('P0009', 'Alexander', 'Hernandez', 60, 'M', 'Dallas', '555-4567'),
('P0010', 'Isabella', 'Gomez', 28, 'F', 'San Jose', '555-8901'),
('P0011', 'Ethan', 'Scott', 32, 'M', 'New York', '555-2222'),
('P0012', 'Ava', 'Adams', 38, 'F', 'Los Angeles', '555-3333'),
('P0013', 'Daniel', 'Mitchell', 48, 'M', 'Chicago', '555-4444'),
('P0014', 'Mia', 'Robinson', 26, 'F', 'Houston', '555-5555'),
('P0015', 'Joseph', 'Clark', 33, 'M', 'Phoenix', '555-6666');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
