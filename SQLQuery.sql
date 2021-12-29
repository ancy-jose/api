use HotelBookingDb

CREATE TABLE Hotel(
Hotel_Id varchar(200) not null PRIMARY KEY,
Hotel_name varchar(255),
image varchar(300),
Location varchar (200),
Phone_num varchar(200),
Rating float(50)
)
insert into Hotel values 
('PR147','Radisson Blu','https://images.pexels.com/photos/860922/pexels-photo-860922.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','CP','7865462876','4.5')
,('PR178','Vivanta by Taj','https://images.pexels.com/photos/261388/pexels-photo-261388.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Dwarka','6437846840','4'),
('EX324','Le Meridian','https://images.pexels.com/photos/261395/pexels-photo-261395.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','CP','6473984739','4'),
('EX345','Pullman','https://images.pexels.com/photos/2869215/pexels-photo-2869215.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Aerocity','9872536478','3.5'),
('EX765','Roseate House','https://images.pexels.com/photos/4825701/pexels-photo-4825701.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Aerocity','8764563728','4.5'),
('SU786','Trident','https://images.pexels.com/photos/6016679/pexels-photo-6016679.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Gurgaon','9823554676','4'),
('SU023','The Umrao','https://images.pexels.com/photos/261102/pexels-photo-261102.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Gurgaon','9873452657','3.5'),
('SU768','The Oberoi','https://images.pexels.com/photos/70441/pexels-photo-70441.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Udyog Vihar','9965478328','4'),
('SU355','Crown Plaza','https://images.pexels.com/photos/1838640/pexels-photo-1838640.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Rohini','7634526770','3.5'),
('EX333','Lemon Tree','https://images.pexels.com/photos/594077/pexels-photo-594077.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Janakpuri','8764356279','4');

select * from Hotel


CREATE TABLE Room(
Room_num int not null PRIMARY KEY,
Hotel_Id varchar(200) FOREIGN KEY REFERENCES Hotel(Hotel_Id) ON UPDATE CASCADE ON DELETE CASCADE,
Hotel_name varchar(255) ,
Room_img varchar(300),
Room_type varchar(255) not null,
Room_view varchar(200),
Price int,
Occupancy int
)
insert into Room values
('233','PR178','Vivanta by Taj','https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Pool','9500','4'),
('240','PR178','Vivanta by Taj','https://images.pexels.com/photos/26139/pexels-photo-26139.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Lake','6500','4'),
('238','PR178','Vivanta by Taj','https://images.pexels.com/photos/1103808/pexels-photo-1103808.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','3500','3'),
('245','PR178','Vivanta by Taj','https://images.pexels.com/photos/3754594/pexels-photo-3754594.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Garden','4500','2'),
('250','PR178','Vivanta by Taj','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Garden','5500','4'),

('334','PR147','Radisson Blu','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','4000','4'),
('337','PR147','Radisson Blu','https://images.pexels.com/photos/827528/pexels-photo-827528.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','Suite','Mountain','5000','4'),
('342','PR147','Radisson Blu','https://images.pexels.com/photos/1743229/pexels-photo-1743229.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','6000','2'),
('354','PR147','Radisson Blu','https://images.pexels.com/photos/4825701/pexels-photo-4825701.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Garden','7000','4'),
('330','PR147','Radisson Blu','https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Lake','3000','3'),

('426','EX324','Le Meridian','https://images.pexels.com/photos/4825701/pexels-photo-4825701.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Pool','4300','5'),
('435','EX324','Le Meridian','https://images.pexels.com/photos/1743229/pexels-photo-1743229.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Mountain','4500','3'),
('425','EX324','Le Meridian','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','5300','5'),
('450','EX324','Le Meridian','https://images.pexels.com/photos/827528/pexels-photo-827528.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','Executive','Pool','6300','5'),
('407','EX324','Le Meridian','https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Lake','4300','5'),

('506','EX345','Pullman','https://images.pexels.com/photos/8112361/pexels-photo-8112361.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Garden','4800','4'),
('556','EX345','Pullman','https://images.pexels.com/photos/2506990/pexels-photo-2506990.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Pool','4300','3'),
('560','EX345','Pullman','https://images.pexels.com/photos/4825701/pexels-photo-4825701.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Lake','3200','5'),
('534','EX345','Pullman','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','2800','2'),
('500','EX345','Pullman','https://images.pexels.com/photos/827528/pexels-photo-827528.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','Executive','Mountain','1300','4'),


('664','EX765','Roseate House','https://images.pexels.com/photos/6480209/pexels-photo-6480209.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Mountain','5200','6'),
('600','EX765','Roseate House','https://images.pexels.com/photos/8112361/pexels-photo-8112361.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Lake','3000','4'),
('660','EX765','Roseate House','https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Pool','Garden','6200','3'),
('612','EX765','Roseate House','https://images.pexels.com/photos/2506990/pexels-photo-2506990.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Mountain','3600','2'),
('634','EX765','Roseate House','https://images.pexels.com/photos/4825701/pexels-photo-4825701.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Mountain','5000','6'),

('133','SU786','Trident','https://images.pexels.com/photos/2506990/pexels-photo-2506990.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Pool','9500','4'),
('140','SU786','Trident','https://images.pexels.com/photos/3315291/pexels-photo-3315291.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Lake','6500','4'),
('138','SU786','Trident','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','3500','3'),
('145','SU786','Trident','https://images.pexels.com/photos/4112236/pexels-photo-4112236.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Garden','4500','2'),
('150','SU786','Trident','https://images.pexels.com/photos/8112361/pexels-photo-8112361.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Garden','5500','4'),

('734','SU023','The Umrao','https://images.pexels.com/photos/4825701/pexels-photo-4825701.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','4000','4'),
('737','SU023','The Umrao','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Mountain','5000','4'),
('742','SU023','The Umrao','https://images.pexels.com/photos/2506990/pexels-photo-2506990.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','6000','2'),
('754','SU023','The Umrao','https://images.pexels.com/photos/6480209/pexels-photo-6480209.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Garden','7000','4'),
('730','SU023','The Umrao','https://images.pexels.com/photos/4112236/pexels-photo-4112236.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Lake','3000','3'),


('826','SU768','The Oberoi','https://images.pexels.com/photos/26139/pexels-photo-26139.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Pool','4300','5'),
('835','SU768','The Oberoi','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Mountain','4500','3'),
('825','SU768','The Oberoi','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','5300','5'),
('850','SU768','The Oberoi,','https://images.pexels.com/photos/4112236/pexels-photo-4112236.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Pool','6300','5'),
('807','SU768','The Oberoi','https://images.pexels.com/photos/3315291/pexels-photo-3315291.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Lake','4300','5'),

('906','SU355','Crown Plaza','https://images.pexels.com/photos/2506990/pexels-photo-2506990.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Garden','4800','4'),
('956','SU355','Crown Plaza','https://images.pexels.com/photos/4112236/pexels-photo-4112236.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Pool','4300','3'),
('960','SU355','Crown Plaza','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Lake','3200','5'),
('934','SU355','Crown Plaza','https://images.pexels.com/photos/6480209/pexels-photo-6480209.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','2800','2'),
('900','SU355','Crown Plaza','https://images.pexels.com/photos/3315291/pexels-photo-3315291.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Mountain','1300','4'),

('016','EX333','Lemon Tree','https://images.pexels.com/photos/2506990/pexels-photo-2506990.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Garden','4800','4'),
('056','EX333','Lemon Tree','https://images.pexels.com/photos/4112236/pexels-photo-4112236.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Suite','Pool','4300','3'),
('060','EX333','Lemon Tree','https://images.pexels.com/photos/6480209/pexels-photo-6480209.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Lake','3200','5'),
('034','EX333','Lemon Tree','https://images.pexels.com/photos/3315291/pexels-photo-3315291.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Premium','Pool','2800','2'),
('007','EX333','Lemon Tree','https://images.pexels.com/photos/9582661/pexels-photo-9582661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500','Executive','Mountain','1300','4')


select * from Room


CREATE TABLE Booking(
Booking_Id int not null PRIMARY KEY,
Hotel_name varchar(255),
Hotel_Id varchar(200) FOREIGN KEY REFERENCES Hotel(Hotel_Id) ON UPDATE CASCADE ON DELETE CASCADE,
Room_num INT FOREIGN KEY REFERENCES Room(Room_num) ON UPDATE NO ACTION ON DELETE NO ACTION,
Booking_date DATE
)
insert into Booking values
('10001','Vivanta by Taj','PR178','250','2021-12-10'),
('10002','Vivanta by Taj','PR178','233','2021-02-13'),
('10012','Vivanta by Taj','PR178','238','2021-02-13'),
('10022','Vivanta by Taj','PR178','240','2021-02-13'),
('10032','Vivanta by Taj','PR178','245','2021-02-13'),


('10003','Le Meridian','EX324','407','2021-10-15'),
('10013','Le Meridian','EX324','425','2021-10-15'),
('10023','Le Meridian','EX324','426','2021-10-15'),
('10033','Le Meridian','EX324','435','2021-10-15'),
('10133','Le Meridian','EX324','450','2021-10-15'),

('10004','Pullman','EX345','500','2021-12-10'),
('10054','Pullman','EX345','506','2021-12-10'),
('10014','Pullman','EX345','534','2021-12-10'),
('10007','Pullman','EX345','556','2021-09-05'),
('10024','Pullman','EX345','560','2021-12-10'),

('10011','Radisson Blu','PR147','330','2021-12-10'),
('10031','Radisson Blu','PR147','337','2021-12-10'),
('10021','Radisson Blu','PR147','334','2021-12-10'),
('10041','Radisson Blu','PR147','342','2021-12-10'),
('10141','Radisson Blu','PR147','354','2021-12-10'),

('10006','Trident','SU786','138','2021-06-04'),
('10016','Trident','SU786','140','2021-06-04'),
('10026','Trident','SU786','145','2021-06-04'),
('10036','Trident','SU786','150','2021-06-04'),
('10060','Trident','SU786','133','2021-12-09'),


('10008','The Oberoi','SU768','835','2021-11-05'),
('10018','The Oberoi','SU768','807','2021-11-05'),
('10028','The Oberoi','SU768','825','2021-11-05'),
('10038','The Oberoi','SU768','826','2021-11-05'),
('10048','The Oberoi','SU768','850','2021-11-05'),

('10010','Lemon Tree','EX333','7','2021-12-09'),
('10020','Lemon Tree','EX333','16','2021-12-09'),
('10030','Lemon Tree','EX333','34','2021-12-09'),
('10040','Lemon Tree','EX333','56','2021-12-09'),
('10050','Lemon Tree','EX333','60','2021-12-09'),

('10015','Roseate House','EX765','612','2021-07-05'),
('10035','Roseate House','EX765','660','2021-07-05') ,
('10055','Roseate House','EX765','664','2021-06-04') ,
('10045','Roseate House','EX765','600','2021-07-05'),
('10025','Roseate House','EX765','634','2021-07-05'),

('10017','The Umrao','SU023','730','2021-09-05'),
('10037','The Umrao','SU023','734','2021-09-05'),
('10057','The Umrao','SU023','742','2021-09-05'),
('10047','The Umrao','SU023','737','2021-09-05'),
('10027','The Umrao','SU023','754','2021-09-05'),

('10019','Crown Plaza','SU355','960','2021-08-15'),
('10049','Crown Plaza','SU355','900','2021-08-15'),
('10059','Crown Plaza','SU355','906','2021-08-15'),
('10039','Crown Plaza','SU355','956','2021-08-15'),
('10029','Crown Plaza','SU355','934','2021-08-15');



SELECT * from Booking

CREATE TABLE Guest(
Guest_Id varchar(250) not null PRIMARY KEY,
Name varchar(250), 
Phone_num varchar(250),
Email varchar(250) 
)
insert into Guest values
('BM345','Nipurn','6747094775','nipurn@gmail.com'),('AR678','Ronaldo','9833546772','ronaldo99@gmail.com'),('JV086','Rashford','6554458699','rash@gmail.com');

select * from Guest
