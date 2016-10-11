USE ApressFinancial
GO
CREATE TABLE CustomerDetails.Title
(CustomerTitleId int primary key,TitleDescription varchar(16))
GO
INSERT INTO CustomerDetails.Title VALUES (1,'Mr')
INSERT INTO CustomerDetails.Title VALUES (2,'Ms')
INSERT INTO CustomerDetails.Title VALUES (3,'Dr')