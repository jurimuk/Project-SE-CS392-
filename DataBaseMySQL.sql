-- Users table

CREATE TABLE Users (

email VARCHAR(40) NOT NULL UNIQUE,

password_ VARCHAR(15) NOT NULL ,

type VARCHAR(10) DEFAULT 'User' ,

PRIMARY KEY (email)

);





-- inserting 2 users

INSERT INTO Users VALUES('jurimuk2014@gmail.com', 12345678 , 'Admin');

INSERT INTO Users VALUES('Reemeeee112@gmail.com' , 12345678 , 'User ');

INSERT INTO Users VALUES('DanaAbdulaah@gmail.com' , 12345678 , 'User ');

Select * from Users;




CREATE TABLE Registrations (

registrationNumber INT AUTO_INCREMENT NOT NULL UNIQUE ,

email VARCHAR(40) , 

parentFullName VARCHAR(40),

phoneNumber INT,

parentId INT,

job VARCHAR(30),

Employer VARCHAR(30),

childFullName VARCHAR(40),

gender VARCHAR(30),

age INT,

nationality VARCHAR(30),

childId INT,

HijriBirthday DATE ,

georgianBirthday DATE,

motherName VARCHAR(30),

motherPhoneNumber INT,

name VARCHAR(30),

realtionship VARCHAR(30),

otherPhoneNumber INT,

WhoChildLivesWith VARCHAR(30),

parentStatus VARCHAR(30),

ResidentialAddress VARCHAR(40) ,

FamilyMembersNumber INT,

childOrderInFamily INT ,

resposiblePerson VARCHAR(30),

maidAvailablity BOOLEAN,

healthcheck LONGBLOB ,

childPicture LONGBLOB,

idfamilyCardPicture LONGBLOB,

birthCertificatePicture LONGBLOB,

vaccinationCertificatePicture LONGBLOB,


accepted VARCHAR(30), 

PRIMARY KEY(registrationNumber),

FOREIGN KEY(email) REFERENCES Users(email)

);

-- who child live 
--  kindergarten pledge removed 
-- adding a registration 


INSERT INTO Registrations(email,parentFullName,phoneNumber,parentId,job,Employer,
childFullName,gender,age,nationality,childId,HijriBirthday,georgianBirthday,
motherName,motherPhoneNumber,name,realtionship,otherPhoneNumber,WhoChildLivesWith,parentStatus,
ResidentialAddress,FamilyMembersNumber,childOrderInFamily,resposiblePerson,
maidAvailablity,healthcheck,childPicture,idfamilyCardPicture,birthCertificatePicture,
vaccinationCertificatePicture,accepted
)
VALUES ('Reemeeee112@gmail.com','Reem Mohammed Abdulaah', 0535798197 , 1101234666 ,
'Programmer' ,'oracle','Lana Sulaiman','Female',4, 'Saudi', '1012345678', '1433-11-09','2010-11-09','Reem', 
0535798197, 'Sara', 'Aunt', 0567779915,'Both parents','married', 'Riyadh,Alqairawan',6,3,'Sara', false , 1000 , 10000, 
1 , 1 , 1, 'Undecided');

--  second record 

INSERT INTO Registrations(email,parentFullName,phoneNumber,parentId,job,Employer,
childFullName,gender,age,nationality,childId,HijriBirthday,georgianBirthday,
motherName,motherPhoneNumber,name,realtionship,otherPhoneNumber,WhoChildLivesWith,parentStatus,
ResidentialAddress,FamilyMembersNumber,childOrderInFamily,resposiblePerson,
maidAvailablity,healthcheck,childPicture,idfamilyCardPicture,birthCertificatePicture,
vaccinationCertificatePicture,accepted
)
VALUES ('Reemeeee112@gmail.com','Reem Mohammed Abdulaah', 0535798197 , 1101234777 ,
'Programmer' ,'oracle','Abdulazize Sulaiman','Female',4, 'Saudi', '1012345678', '1433-11-09','2010-11-09','Reem', 
0535798197, 'Sara', 'Aunt', 0567779915,'Both parents','married', 'Riyadh,Alqairawan',6,3,'Sara', false , 1000 , 10000, 
1 , 1 , 1, 'Undecided');

-- third record 

INSERT INTO Registrations(email,parentFullName,phoneNumber,parentId,job,Employer,
childFullName,gender,age,nationality,childId,HijriBirthday,georgianBirthday,
motherName,motherPhoneNumber,name,realtionship,otherPhoneNumber,WhoChildLivesWith,parentStatus,
ResidentialAddress,FamilyMembersNumber,childOrderInFamily,resposiblePerson,
maidAvailablity,healthcheck,childPicture,idfamilyCardPicture,birthCertificatePicture,
vaccinationCertificatePicture,accepted
)
VALUES ('DanaAbdulaah@gmail.com','Dana Mohammed Abdulaah', 0535798197 , 1101234888 ,
'Accountant' ,'SIDF','Saad Abdulaah','Female',4, 'Saudi', '1012345678', '1433-11-09','2010-11-09','Reem', 
0535798197, 'Sara', 'Aunt', 0567779915, 'Mother','married', 'Riyadh,Alqairawan',6,3,'Sara', false , 1000 , 10000, 
1 , 1 , 1,'Undecided');






-- Admin page quiries 
-- Displaying the data 

SELECT * from Registrations;

-- Approving a registration  

Update Registrations Set accepted = 'Approved' where registrationNumber = 1;


-- Rejecting a Registrations

Update Registrations Set accepted = 'Rejected' where registrationNumber = 2;


-- User page queries 
-- Displaying registration related to one user(User page)

Select * from Registrations Where email='Reemeeee112@gmail.com';

