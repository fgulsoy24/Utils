
CREATE DATABASE Company

USE Company

CREATE TABLE dbo.Customer (
 CustomerId  int NOT NULL IDENTITY(1,1) PRIMARY KEY,
 FirstName  varchar (15),
 LastName  varchar (20)  NOT NULL,
 Street   varchar (25),
 City   varchar (20),
 State   varchar (20),
 Zipcode  varchar (10),
 Phone   varchar(13) ) ;

CREATE TABLE dbo.Employee (
    EmployeeId  INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    FirstName  VARCHAR(14)     NOT NULL,
    LastName   VARCHAR(16)     NOT NULL,
	BirthDate  DATE            NOT NULL,
    Gender      varchar(20)  NOT NULL,    
    HireDate   DATE            NOT NULL
);

CREATE TABLE dbo.Product(
ProductId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
ProductName varchar(55),
ProductType varchar(100),
Price float
)


CREATE TABLE dbo.ProductEmployee(
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
EmployeeId int,
ProductId int,
FOREIGN KEY (EmployeeId) REFERENCES dbo.Employee(EmployeeId),
FOREIGN KEY (ProductId) REFERENCES dbo.Product(ProductId)
)

CREATE TABLE dbo.ProductCustomer(
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
CustomerId int,
ProductId int,
FOREIGN KEY (CustomerId) REFERENCES dbo.Customer(CustomerId),
FOREIGN KEY (ProductId) REFERENCES dbo.Product(ProductId)
)

--------CUSTOMER TABLE DATA--------------
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Noak', 'Bleesing', '18432 Southridge Terrace', 'Warren', 'Michigan', '48092', '586-992-3525');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Emylee', 'Pretsel', '75166 Hoffman Lane', 'Sarasota', 'Florida', '34276', '941-492-9225');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Reyna', 'Donovin', '0105 Summerview Street', 'Vero Beach', 'Florida', '32964', '772-289-6665');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Caddric', 'Haeslier', '6 Holmberg Avenue', 'Charleston', 'West Virginia', '25356', '304-338-5252');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Tracie', 'Collard', '32 Mccormick Road', 'Memphis', 'Tennessee', '38150', '901-729-4702');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Welbie', 'Birdseye', '0465 Debs Circle', 'Jamaica', 'New York', '11499', '212-871-1122');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Keefer', 'Lias', '5 Bowman Drive', 'Newark', 'New Jersey', '07112', '973-310-7780');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Donovan', 'McGraffin', '8 Surrey Lane', 'Birmingham', 'Alabama', '35285', '205-721-0145');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Teodoro', 'Eastment', '973 Texas Junction', 'Washington', 'District of Columbia', '20503', '202-215-1891');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Jeffie', 'Rippingale', '45000 Buhler Pass', 'Indianapolis', 'Indiana', '46231', '317-443-1254');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Conney', 'Barg', '751 Sheridan Junction', 'Miami', 'Florida', '33164', '786-208-7479');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Olga', 'Lotze', '6 Vahlen Road', 'Shawnee Mission', 'Kansas', '66286', '913-792-5369');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Randall', 'Rhymes', '555 Brickson Park Terrace', 'Albany', 'New York', '12237', '518-830-4091');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Sharron', 'Predohl', '61491 Kinsman Avenue', 'Tampa', 'Florida', '33633', '813-344-4117');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Lenci', 'Chenery', '47 Hazelcrest Court', 'Richmond', 'Virginia', '23272', '804-465-0921');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Cart', 'Garfitt', '29 Texas Place', 'Huntington', 'West Virginia', '25716', '304-403-8876');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Othella', 'McGarahan', '9948 Sunfield Terrace', 'Little Rock', 'Arkansas', '72204', '501-550-4317');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Bernie', 'Heibel', '759 Golden Leaf Hill', 'Washington', 'District of Columbia', '20535', '202-269-8671');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Gilda', 'Twitching', '418 Butternut Terrace', 'Newport News', 'Virginia', '23605', '757-456-5763');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Muffin', 'Cousans', '208 Lakewood Gardens Avenue', 'Stamford', 'Connecticut', '06905', '203-882-3867');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Tiebout', 'Eadington', '4 Drewry Terrace', 'Dallas', 'Texas', '75241', '469-359-3454');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Benedetta', 'Antonognoli', '135 American Ash Center', 'Birmingham', 'Alabama', '35244', '205-690-7791');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Lynnette', 'Gommery', '0897 Moulton Trail', 'Corpus Christi', 'Texas', '78405', '361-135-8167');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Grant', 'Wisniowski', '82 Park Meadow Trail', 'Reno', 'Nevada', '89550', '775-282-0538');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Deanna', 'Isaak', '995 Dexter Court', 'Lansing', 'Michigan', '48930', '517-686-1276');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Westleigh', 'Ibbs', '6 Hauk Alley', 'Corpus Christi', 'Texas', '78475', '361-352-1404');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Rochester', 'Gettens', '3 David Way', 'Columbia', 'Missouri', '65211', '573-128-6075');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Maxy', 'O''Dyvoie', '12014 East Terrace', 'Rochester', 'New York', '14624', '585-641-4204');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Ivett', 'Dearnaley', '60553 Schlimgen Place', 'Boca Raton', 'Florida', '33487', '305-105-1103');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Winifred', 'Alsopp', '7252 West Alley', 'Atlanta', 'Georgia', '31132', '404-654-6047');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Abrahan', 'Charlwood', '40271 Kinsman Park', 'Aurora', 'Colorado', '80044', '303-714-3796');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Johnette', 'Wiggins', '23977 Hoard Road', 'Salt Lake City', 'Utah', '84110', '801-497-6062');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Sonny', 'Asbery', '0470 Sunfield Junction', 'Sarasota', 'Florida', '34276', '941-735-8167');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Isaac', 'Accomb', '9 Michigan Way', 'San Diego', 'California', '92191', '619-456-2396');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Garrick', 'Hupe', '32232 Hovde Pass', 'Mesa', 'Arizona', '85210', '928-954-8351');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Fred', 'Breeder', '233 Oriole Hill', 'Kansas City', 'Missouri', '64109', '816-384-6734');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Celisse', 'McCutcheon', '7116 Brickson Park Plaza', 'San Francisco', 'California', '94142', '415-870-9179');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Mandy', 'Borit', '3138 Texas Trail', 'Rockford', 'Illinois', '61105', '815-538-5272');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Lindsey', 'Daice', '542 Buell Plaza', 'Houston', 'Texas', '77212', '713-942-8371');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Carri', 'Hintze', '611 Talisman Parkway', 'Van Nuys', 'California', '91499', '213-371-3690');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Humfried', 'Huebner', '55 Oak Valley Terrace', 'Chicago', 'Illinois', '60674', '312-629-0178');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Marco', 'Gowland', '071 Golden Leaf Lane', 'New Orleans', 'Louisiana', '70160', '504-986-9411');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Si', 'Sprigging', '03684 Center Lane', 'Pensacola', 'Florida', '32520', '850-774-0229');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Lillis', 'Camilleri', '84 Marcy Court', 'Columbus', 'Georgia', '31998', '706-231-9478');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Calhoun', 'Jacquot', '6 Oxford Court', 'Kingsport', 'Tennessee', '37665', '423-890-1825');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Gabey', 'Bolliver', '9 6th Court', 'Los Angeles', 'California', '90055', '213-465-8176');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Devi', 'Rosenzveig', '43959 Caliangt Crossing', 'Philadelphia', 'Pennsylvania', '19184', '215-645-8296');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Pauletta', 'MacAllaster', '96071 Pankratz Road', 'Dayton', 'Ohio', '45408', '937-247-4310');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Gabrielle', 'Hammerman', '9194 Schlimgen Trail', 'Fort Wayne', 'Indiana', '46896', '260-858-6426');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Aksel', 'Guy', '32 Farmco Hill', 'Hollywood', 'Florida', '33023', '954-326-5055');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Dulci', 'Espinas', '3 Crest Line Pass', 'Spokane', 'Washington', '99260', '509-514-9072');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Rriocard', 'Van der Beek', '525 Farmco Center', 'Louisville', 'Kentucky', '40220', '502-488-6996');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Maggie', 'Clousley', '0 Pearson Court', 'Inglewood', 'California', '90310', '310-430-8713');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Hall', 'Keer', '3 Magdeline Circle', 'Fresno', 'California', '93715', '209-568-2106');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Nickie', 'Rigby', '9509 Mendota Alley', 'Salt Lake City', 'Utah', '84125', '801-114-2022');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Esra', 'Shillaker', '458 Graceland Crossing', 'Saint Augustine', 'Florida', '32092', '904-294-8260');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Peyter', 'Coldtart', '29 Carey Pass', 'Los Angeles', 'California', '90050', '213-667-8630');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Jule', 'Coase', '09 Kingsford Alley', 'Baton Rouge', 'Louisiana', '70826', '225-745-1186');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Andreana', 'Simonitto', '05 Farragut Place', 'Rochester', 'New York', '14639', '585-315-7894');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Janene', 'Comettoi', '34 Superior Avenue', 'Rochester', 'New York', '14619', '585-527-3921');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Izak', 'Irnis', '8687 Clarendon Alley', 'Charleston', 'West Virginia', '25313', '304-405-5970');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Katuscha', 'Hiscoke', '6 Rockefeller Way', 'Charleston', 'West Virginia', '25362', '304-770-1789');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Rochell', 'McLugaish', '3224 Northport Alley', 'Scottsdale', 'Arizona', '85271', '480-268-7309');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Andrea', 'Bleddon', '012 Blue Bill Park Avenue', 'Oklahoma City', 'Oklahoma', '73142', '405-734-8708');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Sharity', 'Pattenden', '535 Fair Oaks Plaza', 'Naples', 'Florida', '33963', '239-501-1951');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Terry', 'Blazej', '27787 Vermont Terrace', 'West Palm Beach', 'Florida', '33411', '561-976-5358');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Herby', 'Cornewell', '8 Manley Hill', 'Tulsa', 'Oklahoma', '74108', '918-287-2637');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Ximenez', 'Scudder', '9955 Prentice Alley', 'Hartford', 'Connecticut', '06120', '860-613-4798');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Melitta', 'Lamplugh', '5194 Bluejay Place', 'Houston', 'Texas', '77020', '281-341-6127');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Caroline', 'Raxworthy', '84 Superior Park', 'Lakeland', 'Florida', '33805', '863-845-6218');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Shana', 'Annett', '86173 Rutledge Way', 'Jersey City', 'New Jersey', '07310', '551-648-7053');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Lindsy', 'Leates', '68 Westridge Way', 'Washington', 'District of Columbia', '20337', '202-296-5378');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Harriot', 'Beneze', '5909 Stoughton Junction', 'Colorado Springs', 'Colorado', '80915', '719-245-4652');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Daveta', 'Agerskow', '5854 Johnson Parkway', 'Savannah', 'Georgia', '31405', '912-381-0627');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Khalil', 'Fonte', '16 Fuller Point', 'Charlotte', 'North Carolina', '28215', '704-305-9098');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Carmelle', 'Connor', '9 Lukken Trail', 'Raleigh', 'North Carolina', '27610', '919-904-2508');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Shannon', 'Northing', '06 Dakota Crossing', 'Jamaica', 'New York', '11431', '212-621-7279');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Blanche', 'Heyworth', '64 Spaight Center', 'Palm Bay', 'Florida', '32909', '561-656-4701');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Dodi', 'Djekovic', '3 5th Park', 'Albuquerque', 'New Mexico', '87115', '505-314-4479');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Tymothy', 'Brimfield', '4 Dennis Lane', 'Saint Paul', 'Minnesota', '55114', '612-857-0209');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Bette-ann', 'Baiss', '4 Karstens Hill', 'Raleigh', 'North Carolina', '27615', '919-348-2619');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Tory', 'Verryan', '5 Heffernan Avenue', 'Irvine', 'California', '92717', '714-526-5864');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Powell', 'Collop', '12 Hoffman Way', 'Odessa', 'Texas', '79769', '432-942-5931');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Patric', 'Yellop', '1745 Portage Lane', 'Sarasota', 'Florida', '34276', '941-279-7626');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Ezekiel', 'Chance', '92 Carpenter Park', 'Jacksonville', 'Florida', '32215', '904-874-4290');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Lucius', 'Mineghelli', '05 Judy Point', 'Dallas', 'Texas', '75310', '214-757-8289');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Brant', 'Collaton', '12 Lerdahl Terrace', 'Herndon', 'Virginia', '22070', '757-366-4944');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Olympie', 'Tomaselli', '1 Bellgrove Crossing', 'Atlanta', 'Georgia', '31106', '404-113-1956');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Devora', 'Mont', '69558 Shoshone Trail', 'Omaha', 'Nebraska', '68134', '712-718-0423');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Giacobo', 'Duddan', '7 Hanson Place', 'El Paso', 'Texas', '88584', '915-193-7950');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Farrell', 'Scalia', '20911 Moland Plaza', 'Tuscaloosa', 'Alabama', '35405', '205-346-4571');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Huntington', 'Dewhirst', '4185 Fulton Lane', 'Washington', 'District of Columbia', '20575', '202-898-7778');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Lissi', 'Gebuhr', '0347 David Point', 'Orlando', 'Florida', '32835', '321-567-7827');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Willy', 'Hutton', '3902 Sunnyside Way', 'Chicago', 'Illinois', '60652', '312-696-4958');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Carmelina', 'Rayer', '96043 Carpenter Hill', 'Salt Lake City', 'Utah', '84130', '801-417-9293');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Any', 'Lube', '002 Fuller Trail', 'Bismarck', 'North Dakota', '58505', '701-929-2769');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Jacenta', 'Rathke', '20393 Bluejay Street', 'Evansville', 'Indiana', '47737', '812-912-0392');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Eddi', 'Gapp', '1 Larry Place', 'Carson City', 'Nevada', '89706', '775-334-0692');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Delbert', 'Wegner', '81119 Jenifer Court', 'El Paso', 'Texas', '88546', '915-393-8779');
insert into dbo.Customer (FirstName, LastName, Street, City, State, Zipcode, Phone) values ('Thomasin', 'Eyckel', '24059 Schurz Alley', 'Reading', 'Pennsylvania', '19605', '484-429-0296');

------------EMPLOYEE LIST --------------
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Werner', 'Dugood', '6/27/2018', 'Male', '6/1/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Evin', 'Olechnowicz', '7/30/2018', 'Male', '3/14/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Andeee', 'Glamart', '5/23/2018', 'Female', '5/22/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Colan', 'Fasset', '12/9/2017', 'Male', '5/19/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Meagan', 'Letessier', '9/4/2018', 'Female', '6/10/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Berna', 'Eim', '12/24/2017', 'Female', '5/12/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Jud', 'Shirer', '10/3/2018', 'Male', '4/11/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Abbe', 'Vauls', '10/10/2018', 'Female', '6/9/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Concettina', 'Wilbud', '9/13/2018', 'Female', '10/17/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Dolph', 'Bang', '7/18/2018', 'Male', '9/6/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Culley', 'Dust', '8/15/2018', 'Male', '8/22/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Bonnie', 'Dilleston', '5/7/2018', 'Female', '3/17/2018');
insert into dbo.Employee (FirstName, LastName, BirthDate, Gender, HireDate) values ('Tadd', 'Gutman', '12/9/2017', 'Male', '7/11/2018');

------------------PRODUCT LIST-----------------

insert into dbo.Product(ProductName, ProductType, Price) values ('Oil - Margarine', 'Supplement L Hip Muscle with Nonaut Sub, Perc Endo Approach', '1.46');
insert into dbo.Product (ProductName, ProductType, Price) values ('Vinegar - Balsamic', 'Repair Peritoneum, Percutaneous Approach', '2.99');
insert into dbo.Product (ProductName, ProductType, Price) values ('True - Vue Containers', 'Occlusion of Anus with Intraluminal Device, Open Approach', '2.23');
insert into dbo.Product (ProductName, ProductType, Price) values ('Hand Towel', 'Dilation of 3 Cor Art with Radioact Intralum, Perc Approach', '3.77');
insert into dbo.Product (ProductName, ProductType, Price) values ('Soup - French Onion, Dry', 'Drainage of Left Upper Arm Tendon, Perc Endo Approach', '1.76');
insert into dbo.Product (ProductName, ProductType, Price) values ('Toamtoes 6x7 Select', 'Dilation of R Femor Vein with Intralum Dev, Perc Approach', '0.77');
insert into dbo.Product (ProductName, ProductType, Price) values ('V8 Splash Strawberry Banana', 'Replace R Lacrimal Bone w Nonaut Sub, Perc Endo', '9.38');
insert into dbo.Product (ProductName, ProductType, Price) values ('Tomatoes - Plum, Canned', 'Coordination/Dexterity Treatment of Integu Body', '2.78');
insert into dbo.Product (ProductName, ProductType, Price) values ('Lettuce - Belgian Endive', 'Release Thorax Lymphatic, Percutaneous Endoscopic Approach', '5.46');
insert into dbo.Product (ProductName, ProductType, Price) values ('Veal - Shank, Pieces', 'Occlusion of Hepatic Vein with Extralum Dev, Perc Approach', '3.48');
insert into dbo.Product (ProductName, ProductType, Price) values ('Juice - Orange', 'Removal of Drain Dev from R Shoulder Jt, Extern Approach', '0.50');
insert into dbo.Product (ProductName, ProductType, Price) values ('Soup Campbells Beef With Veg', 'Extraction of L Knee Bursa/Lig, Perc Endo Approach', '3.00');
insert into dbo.Product (ProductName, ProductType, Price) values ('Juice - Orange, 341 Ml', 'Restriction of R Foot Vein with Intralum Dev, Open Approach', '1.14');
insert into dbo.Product (ProductName, ProductType, Price) values ('Ecolab Digiclean Mild Fm', 'Magnetic Resonance Imaging (MRI) of Ear using Other Contrast', '0.58');
insert into dbo.Product (ProductName, ProductType, Price) values ('Lid Tray - 16in Dome', 'Supplement Left Little Finger with Autol Sub, Open Approach', '3.14');
insert into dbo.Product (ProductName, ProductType, Price) values ('Butter - Unsalted', 'Plain Radiography of R Pulm Art using L Osm Contrast', '6.02');
insert into dbo.Product (ProductName, ProductType, Price) values ('Pate - Peppercorn', 'Bypass Low Esophag to Stomach with Nonaut Sub, Open Approach', '1.86');
insert into dbo.Product (ProductName, ProductType, Price) values ('Cape Capensis - Fillet', 'Removal of Int Fix from L Tarsal, Perc Endo Approach', '8.12');
insert into dbo.Product (ProductName, ProductType, Price) values ('Wine - Niagara,vqa Reisling', 'Release Right Hand Tendon, Open Approach', '1.96');
insert into dbo.Product (ProductName, ProductType, Price) values ('Wine - Pinot Grigio Collavini', 'Supplement Right Patella with Nonaut Sub, Perc Endo Approach', '3.40');
insert into dbo.Product (ProductName, ProductType, Price) values ('Wine - Placido Pinot Grigo', 'Insertion of Hearing Device into R Inner Ear, Open Approach', '2.59');
insert into dbo.Product (ProductName, ProductType, Price) values ('Flour - Chickpea', 'Excision of Neck, Percutaneous Endoscopic Approach', '0.66');
insert into dbo.Product (ProductName, ProductType, Price) values ('Sprouts - Pea', 'Fusion Thor Jt w Intbd Fus Dev, Ant Appr A Col, Perc Endo', '9.21');
insert into dbo.Product (ProductName, ProductType, Price) values ('Compound - Raspberry', 'Supplement L Glenoid Cav with Nonaut Sub, Open Approach', '4.20');
insert into dbo.Product (ProductName, ProductType, Price) values ('Fennel', 'Bypass Sup Vena Cava to Pulm Trunk w Zooplastic, Perc Endo', '4.85');
insert into dbo.Product (ProductName, ProductType, Price) values ('Trout - Smoked', 'Repair Right Lacrimal Duct, Open Approach', '5.81');
insert into dbo.Product (ProductName, ProductType, Price) values ('Wine - Gato Negro Cabernet', 'Removal of Drainage Device from Lymphatic, External Approach', '6.55');
insert into dbo.Product (ProductName, ProductType, Price) values ('Muffin Hinge - 211n', 'Release Right Upper Arm Muscle, Perc Endo Approach', '6.61');
insert into dbo.Product (ProductName, ProductType, Price) values ('Rambutan', 'Resection of Right Axillary Lymphatic, Open Approach', '0.42');
insert into dbo.Product (ProductName, ProductType, Price) values ('Carbonated Water - Peach', 'Dilation of Jejunum, Percutaneous Endoscopic Approach', '5.67');
insert into dbo.Product (ProductName, ProductType, Price) values ('Longos - Greek Salad', 'Occlusion of L Innom Vein with Intralum Dev, Perc Approach', '5.52');
insert into dbo.Product (ProductName, ProductType, Price) values ('Taro Leaves', 'Change Traction Apparatus on Left Toe', '8.49');
insert into dbo.Product (ProductName, ProductType, Price) values ('Lobster - Live', 'HDR Brachytherapy of Mediastinum using Iodine 125', '8.69');
insert into dbo.Product (ProductName, ProductType, Price) values ('Doilies - 7, Paper', 'Introduction of Oth Therap Subst into Nose, Extern Approach', '0.10');
insert into dbo.Product (ProductName, ProductType, Price) values ('Oil - Truffle, White', 'Excision of Left Upper Femur, Percutaneous Approach', '8.39');
insert into dbo.Product (ProductName, ProductType, Price) values ('Chicken - Thigh, Bone In', 'Revise Nonaut Sub in L Metatarsotars Jt, Perc Endo', '8.92');
insert into dbo.Product (ProductName, ProductType, Price) values ('Muffin - Zero Transfat', 'Repair Lumbosacral Plexus, Percutaneous Endoscopic Approach', '4.99');
insert into dbo.Product (ProductName, ProductType, Price) values ('Spinach - Frozen', 'Transfer Acoustic Nerve to Trochlear Nrv, Perc Endo Approach', '1.90');
insert into dbo.Product (ProductName, ProductType, Price) values ('Eel Fresh', 'Bypass Periton Cav to Pelvic Cav w Synth Sub, Perc Endo', '2.10');

INSERT INTO dbo.ProductCustomer(CustomerId,ProductId)
SELECT Top 1000 CustomerId,ProductId FROM dbo.Customer CROSS JOIN dbo.Product

INSERT INTO dbo.ProductEmployee(EmployeeId,ProductId)
SELECT Top 1000 EmployeeId,ProductId FROM dbo.Employee CROSS JOIN dbo.Product



SELECT TOP 5 * FROM [dbo].[Customer] 
SELECT TOP 5 * FROM [dbo].[Employee]
SELECT TOP 5 * FROM [dbo].[Product]
SELECT TOP 5 * FROM [dbo].[ProductCustomer]
SELECT TOP 5 * FROM [dbo].[ProductEmployee]