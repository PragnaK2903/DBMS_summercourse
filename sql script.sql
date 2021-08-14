-- Table creation --

create table tenants1(
	Tenant_ID char(9),
    Name varchar(30),
    address varchar(100),
    password varchar(15),
    Email_ID varchar(45),
    DOB date,
    Age int,
    Occupation varchar(30),
    primary key(Tenant_ID)
);

create table tenants2(
	Tenant_ID_f char(9),
    phone_no varchar(20),
    foreign key(Tenant_ID_f) references tenants1(Tenant_ID)
);

create table tenants_details1(
	Det_Tenant_ID char(9),
    no_of_Family_members int,
    children int,
    foreign key(Det_Tenant_ID) references tenants1(Tenant_ID)
);

create table tenants_details2(
	Det2_Tenant_ID char(9),
    Members_details varchar(250),
    foreign key(Det2_Tenant_ID) references tenants1(Tenant_ID)
);

create table owners1(
	Owner_ID char(9),
    Name varchar(30),
    Address varchar(100),
    Password varchar(15),
    Document_no varchar(20),
    primary key(Owner_ID)
);

create table owners2(
	Owner_ID_f char(9),
    ohone_no varchar(20),
    foreign key(Owner_ID_f) references owners1(Owner_ID)
);

create table houses1(
	House_ID char(9),
    Type_of_house varchar(100),
    Rent_cost varchar(15),
    Description varchar(200),
    Other_cost_details varchar(100),
    Owener_ID char(9),
    primary key(House_ID),
    foreign key(Owner_ID) references owners1(Owner_ID)
);

create table houses_address(
	House_ID_f char(9),
    door_no varchar(20),
    floor int,
    house_name char(45),
    locality char(50),
    city char(25),
    country char(20),
    primary key(House_ID_f),
    foreign key(House_ID_f) references houses1(House_ID)
);

create table prev_tenants1(
	Tenant_ID char(9),
    Name varchar(30),
    Email_ID varchar(45),
    Maintanence_Cost varchar(15),
    Rent varchar(15),
    Review varchar(100),
    Other_costs_paid varchar(150),
    PrevT_Owner_ID char(9),
    House_ID char(9),
    primary key(Tenant_ID),
    foreign key(PrevT_Owner_ID) references owners1(Owner_ID),
    foreign key(House_ID) references houses1(House_ID)
);

create table prev_tenants2(
	Prev_Tenant_ID_f char(9),
    phone_no varchar(20),
    foreign key(Prev_Tenant_ID_f) references prev_tenants1(Tenant_ID)
);

create table agents1(
	Agent_ID char(9),
    Name varchar(30),
    Email_ID varchar(45),
    Password varchar(15),
    primary key(Agent_ID)
);

create table agents2(
	Agent_ID char(9),
    phone_no varchar(20),
    foreign key(Agent_ID) references agents1(Agent_ID)
);

create table agents3(
	Agent_ID_f CHAR(9),
    Tenant_ID_f CHAR(9),
    Owner_ID_f CHAR(9),
    foreign key(Agent_ID_f) references agents1(Agent_ID),
    foreign key(Tenant_ID_f) references tenants1(Tenant_ID),
    foreign key(Owner_ID_f) references owners1(Owner_ID)
);

-- Insertion of values --

insert into tenants1 values('T21062801', 'Pragna', 'Flat no.302,Sangeetha towers,Vijayawada,India', '123456', 'pragna@gmail.com', '2002-03-29','19', 'Student', 'H21062901');
insert into tenants1 values('T21062802', 'Taylor', 'Vineyard villa,Texas,USA', '135791', 'Taylor42@gmail.com', '1981-09-17', '39', 'Teacher', 'H21062902');
insert into tenants1 values('T21062803', 'Kim tae ho', 'Flatno.302,High rise apartments,Gangnam,South Korea', 'tae7838', 'taeho@gmail.com', '1995-12-31', '25', 'Consigliere', 'H21062903');
insert into tenants1 values('T21062804', 'Thomas', 'House no.22,Green homes colony,Sydney,Australia', 'thomas9', 'tom91@gmail.com', '1991-09-19', '29', 'Manager', 'H21062904');
insert into tenants1 values('T21062805', 'Svetlana', 'Ekspo homes,Street no.3,Saint petersburg,Russia', 'svet2332', 'svet2332@gmail.com', '1986-02-15', '35', 'Curator', 'H21062905');
insert into tenants1 values('T21070201', 'Mahitha', '23-5/13,Modern people colony,Patna,India', 'mahi22', 'mahi223@gmail.com', '1992-11-10', '28', 'Software Engineer', 'H21062906');
insert into tenants1 values('T21070202', 'Evan', 'Flat no.210,Yolo Apartments,Maryland,USA', 'eevan1', 'eevan@gmail.com', '1995-12-20', '25', 'Youtuber', 'H21070201');
insert into tenants1 values('T21070203', 'Yuna', '12-2/191,Itaewon,South Korea', 'kimyuna', '14yuna@gmail.com', '2000-03-14', '21', 'Architect', 'H21070202');

insert into tenants2 values('T21062801', '+91-8123235252');
insert into tenants2 values('T21062801', '+91-8122339190');
insert into tenants2 values('T21062802', '+1-2406596591');
insert into tenants2 values('T21062802', '+1-2407839251');
insert into tenants2 values('T21062803', '+82-1025522563');
insert into tenants2 values('T21062803', '+82-1098243567');
insert into tenants2 values('T21062804', '+6-1412412342');
insert into tenants2 values('T21062805', '+7-8123235665');
insert into tenants2 values('T21062805', '+7-8120095613');
insert into tenants2 values('T21070201', '+91-812896252');
insert into tenants2 values('T21070202', '+1-2408622791');
insert into tenants2 values('T21070202', '+1-240867390');
insert into tenants2 values('T21070203', '+82-102781539');

insert into tenants_details1 values('T21062801', '2', '0');
insert into tenants_details1 values('T21062802', '4', '2');
insert into tenants_details1 values('T21062803', '1', '0');
insert into tenants_details1 values('T21062804', '2', '0');
insert into tenants_details1 values('T21062805', '2', '1');
insert into tenants_details1 values('T21070201', '2', '1');
insert into tenants_details1 values('T21070202', '1', '0');
insert into tenants_details1 values('T21070203', '0', '0');

insert into tenants_details2 values('T21062801', 'Sister(F,17,Student),Friend(F,19,Student)');
insert into tenants_details2 values('T21062802', 'Wife(F,35,House wife),children-2(M 16&F 12,Students)');
insert into tenants_details2 values('T21062803', 'Girlfriend(F,23,beautician)');
insert into tenants_details2 values('T21062804', 'Wife(F,30,Engineer),Sister(F,26,Teacher)');
insert into tenants_details2 values('T21062805', 'Husband(M,36,Manager),Daughter(F,11,Student)');
insert into tenants_details2 values('T21070201', 'Husband(M,29,Manager),Son(M,2)');
insert into tenants_details2 values('T21070202', 'Girlfriend(F,27,Artist)');
insert into tenants_details2 values('T21070203', 'nil');

insert into owners1 values('O21062901', 'Hitesh mehta', 'Green hills,Madhapur,Hyderbad,India', 'hitechy99', 'D23405');
insert into owners1 values('O21062902', 'Charlie Gray', 'Sunset villa,Hollywood,LA,USA', 'charlieg05', 'D13663');
insert into owners1 values('O21062903', 'Lee Min Hoo', 'Del luna Apartment,Seoul,South Korea', 'minhoo33', 'D23405');
insert into owners1 values('O21062904', 'William', 'Flat no103,Personal Taste Apartment,Sydney,Australia', 'will121', 'D77881');
insert into owners1 values('O21062905', 'Jayanth', 'Three bears,Road no3,Navi Mumbai,India', 'jays@1991', 'D55284');
insert into owners1 values('O21062906', 'Karina', 'Good times,Road no19,Basmanny streets,Moscow,Russia', 'carina231', 'D52456');
insert into owners1 values('O21070201', 'Charlotte', '88-4/37,Highhett streets,Melbourne,Australia', 'charl1987', 'D23643');
insert into owners1 values('O21070202', 'Jimin', 'Flat no.21,Mom\'s care Apartment,Sinchon Streets,South korea', 'jimin25', 'D89731');
insert into owners1 values('O21070203', 'Ellen', 'Valley view Villa,Meetup streets,Chicago,USA', 'elleyo', 'D12456');

insert into owners2 values('O21062901', '+91-9491274920');
insert into owners2 values('O21062901', '+91-7882481930');
insert into owners2 values('O21062902', '+1-2408249251');
insert into owners2 values('O21062902', '+1-2406392746');
insert into owners2 values('O21062903', '+82-1097413592');
insert into owners2 values('O21062904', '+61419183429');
insert into owners2 values('O21062905', '+91-7200294021');
insert into owners2 values('O21062905', '+91-8220468246');
insert into owners2 values('O21062906', '+7-81209163002');
insert into owners2 values('O21070201', '+91-7435875831');
insert into owners2 values('O21070202', '+82-1033417613');
insert into owners2 values('O21070202', '+82-1044133592');
insert into owners2 values('O21070203', '+1-2408232572');

insert into houses1 values('H21062901', '3BHK, Inividual house', '42000/-', 'This is located in outskirts of Whitefield.This house has a garden and a outdoor swimming pool.', 'Advance:830$,Garden costs:150$', 'O21062901');
insert into houses1 values('H21062902', 'Villa ', '2250$', 'This villa contains 10+ rooms,a swimming pool and balconies with beautiful views', 'Advance:1620$,Community costs:200$', 'O21062902');
insert into houses1 values('H21062903', '2BHK flat in Apartment', '1400$', 'This flat has most beutiful view from balcony and contains best furniture', 'Advance:980$,Community costs:120$', 'O21062903');
insert into houses1 values('H21062904', '1BHK Individual house', '1900$', 'This has bigger rooms with best furniture and located in the middle of city', 'Advance:1270$,Furniture costs:900$', 'O21062904');
insert into houses1 values('H21062905', 'More than 3BHK Individual house', '108000/-', 'This has 9 rooms in which  there are 4 bedrooms and a swimming pool.This is located in the middle of city', 'Advance:26500/-', 'O21062905');
insert into houses1 values('H21062906', 'Villa', '1120$', 'This villa contains 10 rooms,a outdoor swimming pool and a outdoor garden', 'Advance:850$,Garden costs:150$', 'O21062906');
insert into houses1 values('H21070201', '3BHK Group house', '1090$', 'This house in located in a group house colony with excellent furniture and high class resourses', 'Advance:950$,Furniture:1000$', 'O21070201');
insert into houses1 values('H21070202', '2BHK flat in apartment', '980$', 'This flat have a nice interior with beautiful balconies', 'Advance:860$,Interiors:780$', 'O21070202');
insert into houses1 values('H21070203', 'Villa', '2100$', 'This villa has beautiful interior with a outdoor swimming pool', 'Advance:1800$,Interiors:1150$', 'O21070203');

insert into houses_address values('H21062901', '132-4/22', NULL, 'Dowm Medows', 'Whitefield', 'Bangalore', 'India');
insert into houses_address values('H21062902', NULL, NULL, 'Sunrise villa', 'Hollywood', 'LA', 'USA');
insert into houses_address values('H21062903', 'Flatno.519', '3', 'Del luna Apartment', NULL, 'Seoul', 'South Korea');
insert into houses_address values('H21062904', '21-22/921', NULL, NULL, 'Bees Colony', 'Sydney', 'Australia');
insert into houses_address values('H21062905', 'Flat no.221', NULL, NULL, 'Highrise Colony', 'Navi Mumbai', 'India');
insert into houses_address values('H21062906', NULL, NULL, 'Good times villa', 'Basmanny streets', 'Moscow', 'Russia');
insert into houses_address values('H21070201', '88-4/37', NULL, NULL, 'Highhett streets', 'Melbourne', 'Australia');
insert into houses_address values('H21070202', 'Flat no.21', '5', 'Moms care Apartment', 'Sinchon Streets', 'Daegu', 'South korea');
insert into houses_address values('H21070203', NULL, NULL, 'Valley view Villa', 'Meetup streets', 'Chicago', 'USA');

insert into prev_tenants1 values('T21062901', 'Harish', 'harish@gmail.com', '9000/-', '40000/-', 'This is peaceful place to live. Only problem is it is a little far away from subway terminal', 'Advance:15000/-,Garden costs:3000/-', 'O21062901', 'H21062901');
insert into prev_tenants1 values('T21062902', 'Kristen', 'kristen@gmail.com', '500$', '2100$', 'This is a perfect place for every working household', 'Advance:1600$,Community costs:200$', 'O21062902', 'H21062902');
insert into prev_tenants1 values('T21062903', 'Park Bo gum', 'bogum8@gmail.com', '250$', '1300$', 'This place is soo good. It is simple and perfect place for newly weds', 'Advance:970$,nil', 'O21062903', 'H21062903');
insert into prev_tenants1 values('T21062904', 'Diana', 'ddianaa@gmail.com', '370$', '1750$', 'As this house is in middle of city we need not worry about tansportation, only problem is pollution', 'Advance:1200$,Furniture costs:900$', 'O21062904', 'H21062904');
insert into prev_tenants1 values('T21062905', 'Ahana', 'ahanaa@gmail.com', '12000/-', '100000/-', 'The house is perfect for bachelors and students', 'Advance:26000/-', 'O21062905', 'H21062905');
insert into prev_tenants1 values('T21062906', 'Maxim', 'maximxx@gmail.com', '200$', '1050$', 'This place is soo cool. There are many places to go and hangout near by', 'Advance:830$,Garden costs:150$', 'O21062906', 'H21062906');
insert into prev_tenants1 values('T21070301', 'Meghan', 'meghan32@gmail.com', '370$', '980$', 'This is a good place only thing is locality is very dangerous', 'Advance:950$,Furniture:970$', 'O21070201', 'H21070201');
insert into prev_tenants1 values('T21070302', 'Jiyoo', 'Jiyoo@gmail.com', '320$', '900$', 'Nice place and comfartable for college students', 'Advance:820$,Interiors:770$', 'O21070202', 'H21070202');
insert into prev_tenants1 values('T21070303', 'Ellen', '1998ellen@gmail.com', '1100$', '1800$', 'This is beautiful place for family to live with nice interiors', 'Advance:1470$,Interiors:910$', 'O21070203', 'H21070203');

insert into prev_tenants2 values('T21062901', '+91-9441077881');
insert into prev_tenants2 values('T21062902', '+1-2406392888');
insert into prev_tenants2 values('T21062902', '+1-2407752755');
insert into prev_tenants2 values('T21062903', '+82-1094233562');
insert into prev_tenants2 values('T21062903', '+82-1087232587');
insert into prev_tenants2 values('T21062904', '+61419155279');
insert into prev_tenants2 values('T21062905', '+91-7727465567');
insert into prev_tenants2 values('T21062906', '+7-81226227846');
insert into prev_tenants2 values('T21070301', '+61419235245');
insert into prev_tenants2 values('T21070301', '+61419289050');
insert into prev_tenants2 values('T21070302', '+82-109422619');
insert into prev_tenants2 values('T21070303', '+1-2406791208');
insert into prev_tenants2 values('T21070303', '+1-2403592009');

insert into agents1 values('A21062901', 'Siddarth', 'siddu@gmail.com', 'sidd01');
insert into agents1 values('A21062902', 'Justin', 'justin44@gmail.com', 'justin@4');
insert into agents1 values('A21062903', 'Hana', 'hanaa@gmail.com', '23hanaa');
insert into agents1 values('A21062904', 'Ivan', 'ivan23@gmail.com', 'ivan23');
insert into agents1 values('A21070201', 'Lara', 'laraa88@gmail.com', 'lara881');
insert into agents1 values('A21070202', 'Hemanth', '09hemanthh@gmail.com', 'hems0912');

insert into agents2 values('A21062901', '+91-9413235552');
insert into agents2 values('A21062902', '+1-2406849226');
insert into agents2 values('A21062903', '+82-1097395480');
insert into agents2 values('A21062904', '+7-8120745765');
insert into agents2 values('A21070201', '+6141922758');
insert into agents2 values('A21070202', '+91-7913120649');
insert into agents2 values('A21062903', '+82-1097728431');
insert into agents2 values('A21070202', '+91-6539392103');
insert into agents2 values('A21062904', '+7-8123699202');

insert into agents3 values('A21062901', 'T21062801', 'O21070202');
insert into agents3 values('A21062901', 'T21062805', NULL);
insert into agents3 values('A21062902', 'T21062802', 'O21062901');
insert into agents3 values('A21062902', NULL, 'O21062904');
insert into agents3 values('A21062903', 'T21062803', 'O21062902');
insert into agents3 values('A21062904', 'T21062804', 'O21070201');
insert into agents3 values('A21062904', 'T21062805', NULL);
insert into agents3 values('A21070201', 'T21070203', 'O21062905');
insert into agents3 values('A21070202', NULL, 'O21062903');
insert into agents3 values('A21070202', 'T21070202', 'O21070203');
insert into agents3 values('A21062901', 'T21062801', 'O21070202');
insert into agents3 values('A21062901', 'T21062801', 'O21070202');
