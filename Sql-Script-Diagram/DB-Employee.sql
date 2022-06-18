CREATE DATABASE EMPLOYEE_MANAGEMENT;

USE EMPLOYEE_MANAGEMENT;

CREATE TABLE IF NOT EXISTS CARGO 
(
	ID 					INT 		 AUTO_INCREMENT    NOT NULL,
	DESCRICAO 			VARCHAR(50) 		           NOT NULL,
	PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS FUNCIONARIO
(
	ID 					INT 		 AUTO_INCREMENT       NOT NULL,
	ID_CARGO			INT 							  NOT NULL,
	NOME 				VARCHAR(50) 					  NOT NULL,
	SOBRENOME 			VARCHAR(50)				  		  NOT NULL,
	CARGO 				VARCHAR(50)					  	  NOT NULL,
	DATA_NASCIMENTO 	DATE 			  				  NOT NULL,
	SALARIO 			DECIMAL(5,2)					  NOT NULL,
	PRIMARY KEY(ID),
	FOREIGN KEY (ID_CARGO) REFERENCES CARGO(ID)
);