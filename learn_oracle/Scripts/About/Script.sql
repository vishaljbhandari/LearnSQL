/*
What is Oracle?
Oracle database is a relational database management system (RDBMS) from Oracle Corporation. 
This article will explain a complete overview of the Oracle database, features, history, and editions. Before discussing the oracle, we will first need to know about the database.

What is a database?
A database refers to the organized collection of structured data stored electronically in a device. 
It allows us to access, manage, and find relevant information frequently. 
The flat file structure was extensively used to store data before the database system was invented. 
The relational database approach becomes popular in comparison to the flat file model because it eliminates redundant data. 
For example, suppose we have an employee and contact information stored in the same file. In such a case, the employees with multiple contacts will show up in many rows.

The RDBMS system manages the relational data. 
Oracle Database is the most famous relational database system (RDBMS) because it shares the largest part of a market among other relational databases. 
Some other popular relational databases are MySQL, DB2, SQL Server, PostgreSQL, etc.

What is the Oracle database?
Oracle database is a relational database management system. It is also called OracleDB, or simply Oracle. 
It is produced and marketed by Oracle Corporation. It was created in 1977 by Lawrence Ellison and other engineers. 
It is one of the most popular relational database engines in the IT market for storing, organizing, and retrieving data.


Oracle Database Features
1) Availability: It is never offline or out of service that means supported 24*7 availability of the database. 
	It provides high availability of databases because of the Oracle Data Guard functionality. 
	This functionality allows using of the secondary database as a copy of the primary database during any failure. 
	As a result, all normal processes such as backups and partial failures do not interrupt the database from being used.
2) Security: Oracle has a mechanism for controlling and accessing the database to prevent unauthorized access. 
	It provides high security because of the Oracle Advanced Security features. It offers two solutions to protect databases that are TDE (Transparent Data Encryption) and Data Redaction. 
	TDE supports data encryption both at the source and after export. 
	Redaction is performed at the application level. Oracle has some other security features like Oracle Database Vault that regulates user privileges and Oracle Label Security.
3) Scalability: It provides features like RAC (Real Application Cluster) and Portability, which makes an Oracle database scalable based on usage. 
	In a clustered environment, it includes capabilities such as rolling instance migrations, performing upgrades, maintaining application continuity, quality of service management, etc.
4) Performance: Oracle provides performance optimization tools such as 
		> Oracle Advanced Compression
		> Oracle Database In-Memory
		> Oracle Real Application Testing
		> Oracle Times Ten Application-Tier Database Cache
	Their main objective is to improve system performance to the highest possible level.
5) Analytics: Oracle has the following solutions in the field of analytics:
	OLAP (Oracle Analytic Processing): It is an implementation of Oracle for doing complicated analytical calculations on business data.
	Oracle Advanced Analytics: It is a technical combination of Oracle R Enterprise and Oracle Data Mining that assists customers in determining predictive business models through data and text mining, as well as statistical data computation.
6)Management: Oracle Multitenant is a database management tool that combines a single container database with many pluggable databases in a consolidated design.


Benefits of Oracle Database
1) Performance: Oracle has procedures and principles that help us to get high levels of database performance. 
	We can increase query execution time and operations with the use of performance optimization techniques in its database. This technique helps to retrieve and alter data faster.
2) Portability: The Oracle database can be ported on all different platforms than any of its competitors.
	We can use this database on around 20 networking protocols as well as over 100 hardware platforms. 
	This database makes it simple to write an Oracle application by making changes to the OS and hardware in a secure manner.
3) Backup and Recovery: It is always better to take a proper backup of your entire oracle online backup and recovery. 
	The Oracle database makes it easy to accomplish recovery quickly by using the. RMAN (Recovery Manager) functionality. 
	It can recover or restore database files during downtime or outages. It can be used for online backups, archived backups, and continuous archiving. 
	We can also use SQL* PLUS for recovery, which is known as user-managed recovery.
4) PL/SQL: One of the greatest benefits of using the Oracle database is to support PL/SQL extension for procedural programming.
5) Multiple Database: Oracle database allows several database instances management on a single server. 
	It provides an instance caging approach for managing CPU allocations on a server hosting database instances. 
	The database resource management and instance caging can work together to manage services across multiple instances.
6) Flashback Technology: This advantage comes with the recent Oracle version. 
	It allows us to recover those data that are incorrectly deleted or lost by human errors like accidental deletion of valuable data, deleting the wrong data, or dropping the table.

Disadvantages of Oracle Database
1) Complexity: Oracle is not recommended to use when the users are not technically savvy and have limited technical skills required to deal with the Oracle Database. 
	It is also not advised to use if the company is looking for a database with limited functionality and easy to use.
2) Cost: The price of Oracle products is very high in comparison to other databases. Therefore users are more likely to choose other less expensive options such as MS SQL Server, MySQL, etc.
3) Difficult to manage: Oracle databases are often much more complex and difficult in terms of the management of certain activities.









*/