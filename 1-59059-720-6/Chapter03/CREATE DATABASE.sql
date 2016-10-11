CREATE DATABASE ApressFinancial ON PRIMARY
( NAME = N'ApressFinancial',
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\ApressFinancial.mdf' , SIZE = 3072KB ,
MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
LOG ON
( NAME = 'ApressFinancial_log',
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\ApressFinancial_log.ldf' ,
SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
COLLATE SQL_Latin1_General_CP1_CI_AS
GO