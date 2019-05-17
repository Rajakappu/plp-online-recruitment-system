create schema [JOBPORTAL]

CREATE TABLE [JOBPORTAL].[Firsttimeuser](
    [UserId] [INT] IDENTITY(1,1) ,
    [Name] [varchaR](50),
	[Password] [varchar](25)  ,	
	[Emailid] [nvarchar](25),	
	[TelNo] [nvarchar](25) ,
	[MobileNo] [nvarchar](25) ,
	[Address] [nvarchar](500)  ,

    CONSTRAINT [pk_Firsttimeuser] PRIMARY KEY (UserId)
	)
	delete from [JOBPORTAL].[Firsttimeuser] where UserId=3

select*from [JOBPORTAL].[Firsttimeuser]



 create table [JOBPORTAL].[JobSeeker]
	 (
	
	 Name varchar(50) primary key,
	 Password varchar(25),  	 
	 Emailid nvarchar(50),
	 MobileNo varchar(20),	 	
	 Location nvarchar(50),
	 photo image ,
	 Position nvarchar(50) ,
	 Experience nvarchar(50) ,
	 PreferredJobLocation varchar(20),
	 Skills nvarchar(50) ,
	 Dateofapplication date ,
	 Resume varbinary(max) 

	 )select * from [JOBPORTAL].[JobSeeker]
	


	alter table [JOBPORTAL].[JobSeeker]
	add Status varchar(15) 

create table [JOBPORTAL].[Employer]
	 (
	
	 Name varchar(50) primary key,
	 Password varchar(25),  	 
	 Emailid nvarchar(50),
	 MobileNo varchar(20),	 	
	 LocationOfTheOpenings nvarchar(50),
	 photo image ,
	 Designation nvarchar(50) ,
	 CurrentOpenings int,
	 Experience nvarchar(50) ,
	 EmployerClients varchar(100),
	 Skills nvarchar(50) ,
	 Updated date 
	
	 )

	 select*from  [JOBPORTAL].[Employer]

 CREATE TABLE [dbo].[SavePDFToTable](

      [ID] [int] IDENTITY(1,1) NOT NULL,
      [PDFFile] [varbinary](max) NULL
)

SELECT * FROM [SavePDFToTable]

DELETE FROM [SavePDFToTable]

select*from [JOBPORTAL].[Firsttimeuser]
select*from [JOBPORTAL].[JobSeeker]
select*from  [JOBPORTAL].[Employer]

create table [JOBPORTAL].[Certification]
(
IdCer int primary key,
CertificationName varchar(50),
LevelCertification int,
FromYear date,
name varchar(50) foreign key references [JOBPORTAL].[JobSeeker](Name)
)


create table [JOBPORTAL].[Education]
(
IDEdu varchar(50) primary key,
InstituteUniverty varchar(50),
TitleOfDiploma varchar(50),
Degree varchar(50),
FromYear date,
Toyear date,
City varchar(25),
Country varchar(50),
name varchar(50) foreign key references [JOBPORTAL].[JobSeeker](Name)

)

create table [JOBPORTAL].[Skills]
(
IdSkill varchar(50),
SkillName varchar(50),
name varchar(50) foreign key references [JOBPORTAL].[JobSeeker](Name)
)

create table [JOBPORTAL].[Skills]
(