CREATE TABLE `teacher` (
	`teacherID` INT(30) NOT NULL AUTO_INCREMENT,
	`teacherName` varchar(120) NOT NULL,
	`teacherEmail` varchar(120) NOT NULL,
	`teacherPass` varchar(256) NOT NULL,
	PRIMARY KEY (`teacherID`)
);

CREATE TABLE `teacherSchool` (
	`teacherID` INT(30) NOT NULL,
	`schoolID` INT(30) NOT NULL
);

CREATE TABLE `school` (
	`schoolID` INT(30) NOT NULL AUTO_INCREMENT,
	`schoolName` varchar(256) NOT NULL,
	PRIMARY KEY (`schoolID`)
);

CREATE TABLE `student` (
	`studentID` INT(120) NOT NULL UNIQUE,
	`studentFname` varchar(120) NOT NULL,
	`studentLname` varchar(120) NOT NULL,
	PRIMARY KEY (`studentID`)
);

CREATE TABLE `studentGrade` (
	`studentID` INT(120) NOT NULL,
	`studentGrade` varchar(120) NOT NULL
);

CREATE TABLE `studentSchool` (
	`studentID` INT(120) NOT NULL,
	`SchoolID` INT(30) NOT NULL
);

CREATE TABLE `studentMoney` (
	`studentID` INT(120) NOT NULL,
	`money` INT(120) NOT NULL
);

CREATE TABLE `admin` (
	`adminID` INT(30) NOT NULL AUTO_INCREMENT,
	`adminName` varchar(120) NOT NULL,
	`adminEmail` varchar(120) NOT NULL,
	`adminPass` varchar(256) NOT NULL,
	PRIMARY KEY (`adminID`)
);

CREATE TABLE `adminSchool` (
	`adminID` INT(30) NOT NULL,
	`schoolID` INT(30) NOT NULL
);

CREATE TABLE `moneyLog` (
	`studentID` INT(120) NOT NULL,
	`schoolID` INT(30) NOT NULL,
	`giverID` INT(30) NOT NULL
);

ALTER TABLE `teacherSchool` ADD CONSTRAINT `teacherSchool_fk0` FOREIGN KEY (`teacherID`) REFERENCES `teacher`(`teacherID`);

ALTER TABLE `teacherSchool` ADD CONSTRAINT `teacherSchool_fk1` FOREIGN KEY (`schoolID`) REFERENCES `school`(`schoolID`);

ALTER TABLE `studentGrade` ADD CONSTRAINT `studentGrade_fk0` FOREIGN KEY (`studentID`) REFERENCES `student`(`studentID`);

ALTER TABLE `studentSchool` ADD CONSTRAINT `studentSchool_fk0` FOREIGN KEY (`studentID`) REFERENCES `student`(`studentID`);

ALTER TABLE `studentSchool` ADD CONSTRAINT `studentSchool_fk1` FOREIGN KEY (`SchoolID`) REFERENCES `school`(`schoolID`);

ALTER TABLE `studentMoney` ADD CONSTRAINT `studentMoney_fk0` FOREIGN KEY (`studentID`) REFERENCES `student`(`studentID`);

ALTER TABLE `adminSchool` ADD CONSTRAINT `adminSchool_fk0` FOREIGN KEY (`adminID`) REFERENCES `admin`(`adminID`);

ALTER TABLE `adminSchool` ADD CONSTRAINT `adminSchool_fk1` FOREIGN KEY (`schoolID`) REFERENCES `school`(`schoolID`);

ALTER TABLE `moneyLog` ADD CONSTRAINT `moneyLog_fk0` FOREIGN KEY (`studentID`) REFERENCES `student`(`studentID`);

ALTER TABLE `moneyLog` ADD CONSTRAINT `moneyLog_fk1` FOREIGN KEY (`schoolID`) REFERENCES `school`(`schoolID`);

ALTER TABLE `moneyLog` ADD CONSTRAINT `moneyLog_fk2` FOREIGN KEY (`giverID`) REFERENCES `teacher`(`teacherID`);
