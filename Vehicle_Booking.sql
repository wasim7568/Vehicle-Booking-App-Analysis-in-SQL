create database Vehicle_booking_app;
use Vehicle_booking_app;

CREATE TABLE advertising_expenditure (
    year INT,
    advt_channel VARCHAR(50),
    money_spent bigint,
    customer_acquired bigint
);
INSERT INTO advertising_expenditure (year,advt_channel,money_spent,customer_acquired) VALUES
 (2019,'celebrities',1000000,1800)
,(2019,'billboards',1000000,2000)
,(2019,'busstops',1500,400)
,(2019,'buses',70000,2500)
,(2019,'tv',300000,5000)
,(2019,'radio',1500,51)
,(2018,'celebrities',123555,2100)
,(2018,'billboards',500000,1800)
,(2018,'busstops',35000,600)
,(2018,'buses',550000,2300)
,(2018,'tv',500000,5300)
,(2018,'radio',2500,250)
,(2017,'celebrities',300000,1900)
,(2017,'billboards',200200,2100)
,(2017,'busstops',80000,800)
,(2017,'buses',3589000,2700)
,(2017,'tv',80000,4700)
,(2017,'radio',80000,1200);

select * from advertising_expenditure;


-- ----------------------------------------------------------------------------------------------------------------------------------------
-- customer information :→

CREATE TABLE customer_info(
    customer_id varchar(10) PRIMARY KEY NOT NULL,
    Gender ENUM('Male', 'Female'),
    Age INT,
    City VARCHAR(50) NOT NULL,
    PinCode BIGINT NOT NULL
);

insert into customer_info(customer_id,gender, age,city,pincode) values
('c_103','Female',28,'Chennai',400312),
('c_104',2,30,'Bangalore',530061);

insert into customer_info(customer_id,gender, age,city,pincode) values 

('c_105','Male',26,'Chennai',400312), 
('c_106',2,27,'Bangalore',530061), 
('c_107',1,40,'Hydrabad',320051), 
('c_108','Female',32,'Hydrabad',320051), 
('c_109','Male',null,'pune',610032), 
('c_110','Female',null,'pune',610032), 
('c_111','1',34,'Chennai',400311), 
('c_112','2',40,'chennai',400311),
('c_113',null,34,'Bangalore',610033), 
('c_114','1',null,'Bangalore',610035), 
('c_115','2',50,'Bangalore',610034), 
('c_116','1',34,'Hydrabad',320052), 
('c_117','2',33,'Hydrabad',320051), 
('c_118','1',29,'Hydrabad',320050), 
('c_119','2',30,'pune',610031), 
('c_120','1',null,'pune',610031), 
('c_121','1',22,'pune',610033), 
('c_122','2',22,'mumbai',500012), 
('c_123',null,null,'mumbai',500012), 
('c_124','1',25,'mumbai',500011), 
('c_125','2',null,'mumbai',500011), 
('c_126','2',21,'mumbai',500013), 
('c_127','1',34,'Delhi',600032), 
('c_128','2',35,'Delhi',600032), 
('c_129',null,41,'Delhi',600032), 
('c_130','1',null,'Delhi',600032), 
('c_131',null,null,'Mysore',900011), 
('c_132','2',26,'Mysore',900011),
('c_133','1',37,'Mysore',900011), 
('c_134','1',null,'Mysore',900012), 
('c_135','2',36,'Mysore',900012), 
('c_136','2',27,'Mysore',900012), 
('c_137','1',22,'coimbattur',3200018), 
('c_138','2',39,'coimbattur',3200018), 
('c_139','1',null,'coimbattur',3200012), 
('c_140',null,21,'coimbattur',3200012), 
('c_141',null,null,'coimbattur',3200018), 
('c_142','1',40,'coimbattur',3200012), 
('c_143','2',45,'coimbattur',3200018); 

insert into customer_info(customer_id,gender, age,city,pincode) values 
('c_144','2',46,'coimbattur',3200018), 
('c_145','1',45,'coimbattur',3200018), 
('c_146','1',30,'coimbattur',3200018), 
('c_147','1',22,'coimbattur',3200018), 
('c_148','1',45,'Mysore',900012), 
('c_149','2',45,'mysore',900011), 
('c_150','1',25,'mysore',900011), 
('c_151','2',29,'mysore',900011), 
('c_152','2',23,'mysore',900012), 
('c_153',null,null,'mysore',900011), 
('c_154','2',null,'mysore',900011), 
('c_155','2',null,'mysore',900012), 
('c_156','1',36,'Delhi',600032), 
('c_157','2',33,'Delhi',600032), 
('c_158','1',null,'Delhi',600032), 
('c_159','2',36,'Delhi',600033), 
('c_160','1',37,'Delhi',600033), 
('c_161','1',null,'Delhi',600033), 
('c_162',null,null,'Delhi',600033), 
('c_163',null,59,'Delhi',600033), 
('c_164','1',52,'Delhi',600033), 
('c_165','2',21,'mumbai',500011), 
('c_166','1',22,'mumbai',500011), 
('c_167','2',21,'mumbai',500012), 
('c_168','1',32,'mumbai',500012), 
('c_169','2',null,'mumbai',500012), 
('c_170',null,null,'mumbai',500011), 
('c_171','2',30,'pune',610032), 
('c_172','1',28,'pune',610032), 
('c_173','1',29,'pune',610032), 
('c_174','2',null,'pune',610031), 
('c_175',null,22,'pune',610032), 
('c_176','2',47,'pune',610032), 
('c_177',2,34,'Bangalore',610033), 
('c_178','1',null,'Bangalore',610033), 
('c_179','2',35,'Bangalore',610034), 
('c_180','1',34,'Bangalore',610035), 
('c_181',null,44,'Bangalore',610035), 
('c_182','2',34,'Bangalore',610034), 
('c_183','1',null,'Bangalore',610034), 
('c_184','2',39,'Bangalore',610034), 
('c_185','1',33,'Hydrabad',320052), 
('c_186','1',47,'Hydrabad',320050), 
('c_187','2',47,'Hydrabad',320051), 
('c_188','1',null,'Hydrabad',320050), 
('c_189','2',32,'Hydrabad',320050), 
('c_190','1',52,'Hydrabad',320051), 
('c_191','1',null,'Hydrabad',320051), 
('c_192','2',36,'Hydrabad',320051), 
('c_193',null,null,'Hydrabad',320051), 
('c_194','2',52,'Hydrabad',320052), 
('c_195','2',56,'Chennai',400311), 
('c_196','1',49,'Chennai',400311), 
('c_197','1',42,'Chennai',400311), 
('c_198','2',null,'Chennai',400311), 
('c_199',null,24,'Chennai',400311), 
('c_200',null,null,'Chennai',400311), 
('c_201','1',31,'Chennai',400312), 
('c_202','1',36,'Chennai',400312), 
('c_203','2',21,'Chennai',400312), 
('c_204','2',51,'Chennai',400312); 

select * from customer_info;
desc vehicle_info;
-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Driver Information :→

CREATE TABLE Driver_info (
    Driver_id varchar(10) PRIMARY KEY NOT NULL,
    gender ENUM('Male', 'Female'),
    Age INT,
    driving_exp INT NOT NULL,
    type_of_vehicle VARCHAR(50)
);
insert into driver_info(driver_id, gender,age, driving_exp,type_of_vehicle)
values('d_301',1,35,10,'SUV,Car');

insert into driver_info(driver_id, gender,age, driving_exp,type_of_vehicle)values 
('d_302',1,22,2,'fortune,Car'), 
('d_303',2,30,5,'KIA,Car'), 
('d_304',1,40,15,'Scoda,Car'), 
('d_305',2,25,4,'electric,Car'), 
('d_306',1,35,10,'minitruck'), 
('d_307',2,27,6,'nano,Car'), 
('d_308',1,35,10,'SUV,Car'), 
('d_309',2,29,2,'micro,Car'), 
('d_310',2,40,11,'minitruck'), 
('d_311',1,35,10,'minitruck'), 
('d_312',1,null,10,'SUV,Car'), 
('d_313',1,null,10,'minitruck'), 
('d_314',2,35,9,'minitruck'), 
('d_315',2,35,8,'Car'), 
('d_316',1,null,20,'minitruck'), 
('d_317',1,22,1,'cuv,car'), 
('d_318',1,39,9,'minivan'), 
('d_319',1,30,7,'minivan'), 
('d_320',1,35,10,'cuv,Car'), 
('d_321',1,29,4,'nano,car'), 
('d_322',2,25,3,'kia,Car'),
('d_323',2,25,3,'nano,Car'), 
('d_324',1,25,3,'kia,Car'), 
('d_325',1,39,12,'minivan'), 
('d_326',2,25,3,'cuv,car'), 
('d_327',1,37,5,'kia,Car'), 
('d_328',1,26,3,'nano,car'), 
('d_329',1,36,6,'kia,Car'), 
('d_330',1,40,18,'electric,car'), 
('d_331',1,21,1,'electric,Car'), 
('d_332',2,31,7,'scoda,Car'), 
('d_333',1,33,7,'scoda,Car'), 
('d_334',1,50,22,'suv,Car'), 
('d_335',2,25,3,'electric,Car'), 
('d_336',1,25,4,'kia,Car'), 
('d_337',2,26,3,'fortune,Car'), 
('d_338',2,25,3,'fortune,Car'),
('d_339',1,31,3,'kia,Car'), 
('d_340',2,25,5,'fortune,Car'); 

select * from driver_info;
-- -----------------------------------------------------------------------------------------------------------------------------------------
desc vehicle_info;
-- Vehicle_Info :→
CREATE TABLE vehicle_info (
    vehicle_id VARCHAR(10) PRIMARY KEY NOT NULL,
    type_of_vehicle enum('SUV','Car','Mini Truck') NOT NULL,
    air_condition enum('Yes','No'),
    type_of_fuel enum('Petrol','Diesel','CNG') NOT NULL,
    vehicle_condition INT,
    CONSTRAINT vehicle_condition_Ck CHECK (vehicle_condition BETWEEN 1 AND 10)
);
insert into vehicle_info(vehicle_id,type_of_vehicle, air_condition,type_of_fuel, vehicle_condition)
values('v_701',2,1,2,3);
insert into vehicle_info(vehicle_id,type_of_vehicle, air_condition,type_of_fuel, vehicle_condition) values 
('v_702',3,2,3,4), 
('v_703',3,2,3,7), 
('v_704',1,2,1,2), 
('v_705',1,1,3,9), 
('v_706',1,2,1,2), 
('v_707',2,1,2,1), 
('v_708',1,1,1,1), 
('v_709',1,2,1,3), 
('v_710',2,1,1,4), 
('v_711',3,2,3,1), 
('v_712',1,1,2,5), 
('v_713',2,1,1,7), 
('v_714',3,2,3,4), 
('v_715',3,1,3,3), 
('v_716',3,2,3,2), 
('v_717',1,1,3,4), 
('v_718',1,1,2,6), 
('v_719',1,null,3,4), 
('v_720',2,null,3,null),
('v_721',1,1,1,null), 
('v_722',2,null,1,null), 
('v_723',1,2,2,null), 
('v_724',1,null,1,null), 
('v_725',1,1,3,5), 
('v_726',2,1,2,3), 
('v_727',3,null,3,null), 
('v_728',3,2,3,null), 
('v_729',1,1,3,null), 
('v_730',2,null,2,8), 
('v_731',3,1,2,1), 
('v_732',2,1,2,null), 
('v_733',1,1,3,9),
('v_734',2,2,2,3), 
('v_735',1,1,2,6), 
('v_736',2,null,2,3), 
('v_737',2,1,2,8), 
('v_738',2,2,2,4), 
('v_739',3,1,2,2), 
('v_740',2,null,2,null); 

select * from vehicle_info;
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Trip info :→

CREATE TABLE trip_info (
    trip_id VARCHAR(10) PRIMARY KEY NOT NULL,
    customer_id VARCHAR(10) NOT NULL,
    driver_id VARCHAR(10) NOT NULL,
    vehicle_id VARCHAR(10) NOT NULL,
    trip_date DATE,
    start_from VARCHAR(50),
    end_from VARCHAR(50),
    booking_time TIME,
    journey_distance INT,
    type_of_fare ENUM('Rent', 'Per hour', 'Per km'),
    FOREIGN KEY (customer_id)
        REFERENCES customer_info (customer_id),
    FOREIGN KEY (driver_id)
        REFERENCES driver_info (driver_id),
    FOREIGN KEY (vehicle_id)
        REFERENCES vehicle_info (vehicle_id)
);
drop table trip_info;
INSERT INTO trip_info(trip_id,customer_id,driver_id,vehicle_id,trip_date,start_from,end_from,booking_time,journey_distance,type_of_fare) VALUES
('t903','c_106','d_307','v_713','2022-03-01','Hydrabad','Bangalore','10:15:18',100,3)
,('t904','c_106','d_306','v_709','2022-03-01','Hydrabad','Bangalore','8:54:29',100,3)
,('t905','c_108','d_302','v_714','2022-03-01','Chennai','Bangalore','9:11:11',100,3)
,('t906','c_106','d_304','v_704','2022-03-01','Pune','Mumbai','17:47:08',100,3)
,('t907','c_104','d_306','v_705','2022-03-01','Delhi','Agra','9:55:11',200,3)
,('t908','c_107','d_313','v_707','2022-03-01','Coimbattur','Oonty','17:33:59',85,2)
,('t909','c_109','d_304','v_713','2022-03-01','Coimbattur','Munnar','16:14:01',160,2)
,('t910','c_106','d_313','v_705','2022-03-01','Delhi','Chandigadh','19:42:46',300,1)
,('t911','c_119','d_322','v_718','2022-03-02','Chennai','Salem','10:08:18',342,2)
,('t912','c_124','d_316','v_716','2022-03-02','Chennai','Vellore','16:36:11',136,3)
,('t913','c_125','d_323','v_720','2022-03-02','Chennai','Pondicherry','19:56:01',140,2)
,('t914','c_120','d_318','v_719','2022-03-02','Bangalore','Mysore','15:30:27',139,1)
,('t915','c_116','d_320','v_719','2022-03-02','Bangalore','Yelagiri Hills','8:49:57',178,1)
,('t916','c_117','d_317','v_722','2022-03-02','Bangalore','Mangalore','18:57:39',400,2)
,('t917','c_127','d_328','v_729','2022-03-02','Hydrabad','Ramoji Film City','15:53:19',100,1)
,('t918','c_122','d_339','v_730','2022-03-02','Hydrabad','Telangana','14:05:32',100,1)
,('t919','c_136','d_331','v_738','2022-03-03','Hydrabad','Anantgiri Hills','10:34:36',100,2)
,('t920','c_130','d_330','v_736','2022-03-03','Chennai','Pondicherry','12:56:14',140,3)
,('t921','c_133','d_335','v_732','2022-03-03','Chennai','Salem','10:47:00',342,2)
,('t922','c_132','d_333','v_725','2022-03-03','Delhi','Chandigadh','19:55:27',300,2)
,('t923','c_124','d_327','v_735','2022-03-03','Delhi','Agra','14:43:27',200,1)
,('t924','c_123','d_334','v_731','2022-03-03','Delhi','Lucknow','19:03:38',250,3)
,('t925','c_140','d_325','v_727','2022-03-03','Bangalore','Mangalore','10:35:49',400,2)
,('t926','c_131','d_332','v_726','2022-03-03','Bangalore','Yelagiri Hills','18:46:31',178,1)
,('t927','c_142','d_301','v_740','2022-03-04','Coimbattur','Oonty','12:44:50',85,1)
,('t928','c_150','d_311','v_716','2022-03-04','Coimbattur','Munnar','9:10:27',160,2)
,('t929','c_153','d_307','v_720','2022-03-04','Coimbattur','Munnar','14:58:52',160,2)
,('t930','c_154','d_306','v_719','2022-03-04','Hydrabad','Ramoji Film City','13:17:28',100,1)
,('t931','c_147','d_302','v_719','2022-03-04','Hydrabad','Telangana','16:58:55',100,3)
,('t932','c_157','d_304','v_722','2022-03-04','Pune','Mumbai','14:02:10',100,1)
,('t933','c_141','d_306','v_714','2022-03-04','Mumbai','Pune','19:26:59',100,1)
,('t934','c_158','d_316','v_704','2022-03-04','Pune','Mumbai','12:00:46',100,2)
,('t935','c_149','d_323','v_705','2022-03-05','Bangalore','Mangalore','13:18:29',400,1)
,('t936','c_146','d_318','v_707','2022-03-05','Bangalore','Yelagiri Hills','15:38:47',178,3)
,('t937','c_125','d_328','v_713','2022-03-05','Mumbai','Kolhapur','18:18:06',100,1)
,('t938','c_120','d_339','v_740','2022-03-05','Mumbai','Pune','18:00:29',100,3)
,('t939','c_116','d_331','v_726','2022-03-05','Delhi','Agra','8:59:04',200,3)
,('t940','c_117','d_330','v_734','2022-03-06','Delhi','Lucknow','10:32:09',250,2)
,('t941','c_127','d_335','v_732','2022-03-06','Delhi','Agra','10:19:47',200,1)
,('t942','c_122','d_333','v_729','2022-03-06','Bangalore','Mangalore','15:01:56',400,3)
,('t943','c_136','d_327','v_733','2022-03-06','Delhi','Jaipur','17:38:42',150,1)
,('t944','c_130','d_334','v_726','2022-03-06','Delhi','Chandigadh','14:11:07',300,3)
,('t945','c_133','d_325','v_738','2022-03-06','Coimbattur','Munnar','18:01:15',160,2)
,('t946','c_203','d_332','v_735','2022-03-06','Coimbattur','Oonty','8:07:06',85,1)
,('t947','c_199','d_311','v_731','2022-03-06','Coimbattur','Oonty','18:11:23',85,3)
,('t948','c_197','d_313','v_703','2022-03-06','Hydrabad','Anantgiri Hills','19:49:05',100,3)
,('t949','c_190','d_312','v_705','2022-03-06','Hydrabad','Ramoji Film City','10:53:59',100,1)
,('t950','c_185','d_340','v_707','2022-03-06','Chennai','Salem','11:35:57',342,2)
,('t951','c_174','d_310','v_709','2022-03-06','Chennai','Vellore','10:40:44',136,1)
,('t952','c_108','d_302','v_714','2022-03-07','Hydrabad','Vijayawada','19:42:45',100,3)
,('t953','c_106','d_304','v_704','2022-03-07','Delhi','Agra','14:00:10',200,3)
,('t954','c_104','d_306','v_705','2022-03-07','Delhi','Lucknow','16:39:56',250,3)
,('t955','c_107','d_313','v_707','2022-03-07','Delhi','Chandigadh','11:11:53',300,1)
,('t956','c_109','d_304','v_713','2022-03-07','Delhi','Jaipur','8:59:56',150,3)
,('t957','c_106','d_313','v_705','2022-03-07','Delhi','Jaipur','13:06:31',150,3)
,('t958','c_119','d_322','v_718','2022-03-07','Bangalore','Yelagiri Hills','16:54:47',178,2)
,('t959','c_124','d_316','v_716','2022-03-08','Bangalore','Mangalore','17:02:59',400,2)
,('t960','c_125','d_323','v_720','2022-03-08','Hydrabad','Ramoji Film City','15:09:25',100,2)
,('t961','c_120','d_318','v_719','2022-03-08','Coimbattur','Munnar','9:07:54',160,1)
,('t962','c_116','d_320','v_711','2022-03-08','Chennai','Vellore','17:25:55',136,3)
,('t963','c_177','d_330','v_729','2022-03-09','Hydrabad','Anantgiri Hills','8:37:19',100,1)
,('t964','c_130','d_335','v_726','2022-03-09','Coimbattur','Oonty','11:25:55',85,3)
,('t965','c_161','d_333','v_734','2022-03-09','Hydrabad','Anantgiri Hills','13:41:39',100,3)
,('t966','c_117','d_327','v_732','2022-03-09','Hydrabad','Ramoji Film City','17:18:08',100,1)
,('t967','c_169','d_334','v_729','2022-03-09','Chennai','Salem','16:43:45',342,3)
,('t968','c_179','d_325','v_733','2022-03-09','Chennai','Vellore','8:12:36',136,1)
,('t969','c_173','d_332','v_726','2022-03-09','Hydrabad','Vijayawada','9:59:45',100,2)
,('t970','c_171','d_311','v_738','2022-03-09','Delhi','Agra','12:26:50',200,3)
,('t971','c_166','d_319','v_701','2022-03-09','Delhi','Lucknow','12:31:54',250,2)
,('t972','c_164','d_321','v_713','2022-03-10','Delhi','Chandigadh','9:28:00',300,1)
,('t973','c_197','d_318','v_709','2022-03-10','Delhi','Jaipur','12:33:14',150,3)
,('t974','c_187','d_313','v_713','2022-03-10','Mumbai','Kolhapur','13:24:20',100,3)
,('t975','c_184','d_337','v_709','2022-03-10','Mumbai','Pune','8:33:49',100,3)
,('t976','c_198','d_312','v_714','2022-03-11','Delhi','Chandigadh','13:23:40',300,2)
,('t977','c_191','d_303','v_713','2022-03-11','Bangalore','Mangalore','8:09:56',400,2)
,('t978','c_138','d_302','v_707','2022-03-11','Hydrabad','Bangalore','17:21:25',100,1)
,('t979','c_183','d_301','v_726','2022-03-11','Hydrabad','Bangalore','14:58:41',100,2)
,('t980','c_190','d_315','v_734','2022-03-11','Chennai','Bangalore','14:33:53',100,3)
,('t981','c_195','d_317','v_732','2022-03-12','Pune','Mumbai','16:33:25',100,3)
,('t982','c_185','d_321','v_729','2022-03-12','Delhi','Agra','15:07:48',200,3)
,('t983','c_106','d_328','v_733','2022-03-12','Coimbattur','Oonty','12:09:24',85,2)
,('t984','c_108','d_329','v_726','2022-03-12','Coimbattur','Munnar','9:17:59',160,3)
,('t985','c_106','d_330','v_738','2022-03-13','Delhi','Chandigadh','13:15:43',300,1)
,('t986','c_104','d_331','v_735','2022-03-13','Chennai','Salem','19:54:13',342,3)
,('t987','c_107','d_332','v_720','2022-03-13','Chennai','Vellore','18:38:39',136,3)
,('t988','c_109','d_333','v_719','2022-03-13','Chennai','Pondicherry','14:09:39',140,2)
,('t989','c_106','d_334','v_711','2022-03-15','Bangalore','Mysore','12:07:03',139,1)
,('t990','c_119','d_335','v_729','2022-03-15','Bangalore','Yelagiri Hills','18:16:24',178,1)
,('t991','c_124','d_336','v_726','2022-03-15','Delhi','Jaipur','16:49:30',150,3)
,('t992','c_125','d_337','v_734','2022-03-15','Delhi','Chandigadh','9:28:28',300,2)
,('t993','c_120','d_338','v_732','2022-03-17','Coimbattur','Munnar','17:50:49',160,1)
,('t994','c_116','d_339','v_729','2022-03-17','Coimbattur','Oonty','10:18:03',85,2)
,('t995','c_117','d_340','v_733','2022-03-17','Coimbattur','Oonty','8:38:25',85,2)
,('t996','c_127','d_304','v_737','2022-03-17','Hydrabad','Anantgiri Hills','18:53:14',100,3)
,('t997','c_133','d_306','v_714','2022-03-17','Hydrabad','Ramoji Film City','14:18:15',100,1)
,('t998','c_132','d_316','v_725','2022-03-17','Chennai','Salem','12:58:10',342,2)
,('t999','c_124','d_323','v_731','2022-03-18','Chennai','Vellore','14:49:51',136,3)
,('t1000','c_123','d_318','v_732','2022-03-18','Hydrabad','Vijayawada','17:38:01',100,3)
,('t1001','c_140','d_328','v_733','2022-03-18','Delhi','Agra','13:33:10',200,3)
,('t1002','c_131','d_339','v_734','2022-03-19','Delhi','Lucknow','12:07:04',250,2)
,('t1003','c_142','d_331','v_735','2022-03-19','Delhi','Chandigadh','15:50:11',300,1)
,('t1004','c_150','d_330','v_736','2022-03-19','Coimbattur','Oonty','17:58:54',85,2)
,('t1005','c_153','d_335','v_737','2022-03-19','Coimbattur','Munnar','11:11:20',160,2)
,('t1006','c_154','d_301','v_738','2022-03-21','Delhi','Chandigadh','14:43:35',300,3)
,('t1007','c_147','d_302','v_739','2022-03-21','Chennai','Salem','17:44:02',342,2)
,('t1008','c_157','d_303','v_740','2022-03-21','Chennai','Vellore','19:45:40',136,2)
,('t1009','c_141','d_304','v_713','2022-03-21','Chennai','Pondicherry','14:46:41',140,3)
,('t1010','c_158','d_305','v_714','2022-03-22','Bangalore','Mysore','18:17:32',139,1)
,('t1011','c_179','d_306','v_715','2022-03-22','Bangalore','Yelagiri Hills','13:23:36',178,1)
,('t1012','c_173','d_307','v_716','2022-03-22','Delhi','Jaipur','15:10:08',150,1)
,('t1013','c_171','d_308','v_717','2022-03-22','Delhi','Chandigadh','9:51:18',300,2)
,('t1014','c_166','d_309','v_718','2022-03-22','Coimbattur','Munnar','9:50:25',160,3)
,('t1015','c_164','d_310','v_719','2022-03-22','Coimbattur','Oonty','19:38:46',85,1)
,('t1016','c_197','d_311','v_720','2022-03-25','Coimbattur','Oonty','14:34:21',85,2)
,('t1017','c_187','d_312','v_721','2022-03-25','Hydrabad','Anantgiri Hills','9:47:38',100,3)
,('t1018','c_184','d_313','v_722','2022-03-25','Coimbattur','Oonty','9:42:20',85,2)
,('t1019','c_198','d_314','v_723','2022-03-25','Coimbattur','Munnar','12:24:14',160,2)
,('t1020','c_191','d_315','v_724','2022-03-27','Delhi','Chandigadh','17:52:56',300,2)
,('t1021','c_138','d_316','v_725','2022-03-27','Chennai','Salem','18:11:14',342,3)
,('t1022','c_183','d_317','v_726','2022-03-27','Chennai','Vellore','14:05:51',136,2)
,('t1023','c_190','d_318','v_716','2022-03-27','Chennai','Pondicherry','9:10:31',140,3)
,('t1024','c_126','d_319','v_728','2022-03-27','Bangalore','Mysore','13:57:38',139,2)
,('t1025','c_127','d_320','v_717','2022-03-29','Bangalore','Yelagiri Hills','15:29:06',178,3)
,('t1026','c_128','d_321','v_702','2022-03-29','Delhi','Jaipur','11:58:08',150,1)
,('t1027','c_129','d_322','v_722','2022-03-29','Delhi','Chandigadh','9:39:55',300,2)
,('t1028','c_103','d_323','v_709','2022-03-29','Coimbattur','Munnar','17:32:16',160,2)
,('t1029','c_131','d_324','v_725','2022-03-31','Coimbattur','Oonty','13:15:36',85,2)
,('t1030','c_132','d_325','v_737','2022-03-31','Coimbattur','Oonty','19:45:40',85,1)
,('t1031','c_185','d_326','v_707','2022-03-31','Hydrabad','Anantgiri Hills','13:34:09',100,3)
,('t1032','c_134','d_327','v_704','2022-04-01','Coimbattur','Munnar','17:22:08',160,1)
,('t1033','c_136','d_328','v_714','2022-04-01','Coimbattur','Oonty','19:15:14',85,2)
,('t1034','c_130','d_329','v_721','2022-04-01','Coimbattur','Oonty','14:11:09',85,2)
,('t1035','c_133','d_330','v_734','2022-04-01','Hydrabad','Anantgiri Hills','14:34:29',100,2)
,('t1036','c_203','d_331','v_737','2022-04-02','Coimbattur','Oonty','8:57:31',85,2)
,('t1037','c_199','d_332','v_717','2022-04-02','Coimbattur','Munnar','14:07:42',160,1)
,('t1038','c_197','d_333','v_702','2022-04-03','Delhi','Chandigadh','18:03:41',300,3)
,('t1039','c_190','d_334','v_736','2022-04-03','Chennai','Salem','11:15:21',342,3)
,('t1040','c_185','d_335','v_709','2022-04-03','Chennai','Vellore','8:47:53',136,1)
,('t1041','c_174','d_336','v_713','2022-04-04','Chennai','Pondicherry','8:40:25',140,3)
,('t1042','c_158','d_337','v_709','2022-04-04','Bangalore','Mysore','8:04:19',139,3)
,('t1043','c_159','d_338','v_714','2022-04-05','Pune','Mumbai','13:30:02',100,2)
,('t1044','c_160','d_339','v_704','2022-04-05','Delhi','Agra','13:21:59',200,3)
,('t1045','c_161','d_320','v_705','2022-04-05','Coimbattur','Oonty','9:48:20',85,3)
,('t1046','c_162','d_321','v_707','2022-04-06','Coimbattur','Munnar','12:39:38',160,1)
,('t1047','c_163','d_322','v_713','2022-04-06','Delhi','Chandigadh','15:13:49',300,1)
,('t1048','c_164','d_323','v_705','2022-04-06','Chennai','Salem','17:30:30',342,1)
,('t1049','c_165','d_324','v_718','2022-04-06','Chennai','Vellore','14:23:22',136,1)
,('t1050','c_166','d_325','v_716','2022-04-07','Chennai','Pondicherry','8:42:03',140,3)
,('t1051','c_167','d_326','v_720','2022-04-07','Bangalore','Mysore','9:18:10',139,2)
,('t1052','c_168','d_331','v_719','2022-04-07','Bangalore','Yelagiri Hills','16:29:56',178,3)
,('t1053','c_169','d_332','v_719','2022-04-07','Bangalore','Mangalore','14:50:07',400,1)
,('t1054','c_198','d_333','v_722','2022-04-08','Hydrabad','Ramoji Film City','13:24:24',100,1)
,('t1055','c_199','d_334','v_711','2022-04-08','Hydrabad','Telangana','19:11:26',100,1)
,('t1056','c_200','d_335','v_720','2022-04-08','Hydrabad','Anantgiri Hills','10:35:37',100,1)
,('t1057','c_201','d_303','v_719','2022-04-08','Chennai','Pondicherry','17:36:33',140,2)
,('t1058','c_202','d_304','v_711','2022-04-09','Chennai','Salem','10:57:20',342,1)
,('t1059','c_203','d_305','v_729','2022-04-09','Bangalore','Yelagiri Hills','15:46:53',178,3)
,('t1060','c_204','d_306','v_726','2022-04-09','Mumbai','Kolhapur','11:34:51',100,1)
,('t1061','c_103','d_307','v_734','2022-04-10','Mumbai','Pune','16:21:00',100,1)
,('t1062','c_104','d_308','v_732','2022-04-10','Delhi','Agra','10:39:39',200,2)
,('t1063','c_105','d_309','v_729','2022-04-10','Delhi','Lucknow','13:27:19',250,3)
,('t1064','c_106','d_318','v_705','2022-04-10','Delhi','Agra','14:39:38',200,2)
,('t1065','c_107','d_320','v_706','2022-04-10','Bangalore','Mangalore','14:54:43',400,3)
,('t1066','c_108','d_317','v_707','2022-04-10','Delhi','Jaipur','19:26:30',150,2)
,('t1067','c_109','d_328','v_708','2022-04-13','Delhi','Chandigadh','8:34:41',300,3)
,('t1068','c_110','d_339','v_709','2022-04-13','Coimbattur','Munnar','17:29:19',160,1)
,('t1069','c_111','d_331','v_710','2022-04-13','Coimbattur','Oonty','12:54:37',85,3)
,('t1070','c_112','d_330','v_711','2022-04-13','Coimbattur','Oonty','9:39:52',85,1)
,('t1071','c_113','d_335','v_712','2022-04-13','Hydrabad','Anantgiri Hills','10:36:09',100,2)
,('t1072','c_114','d_333','v_713','2022-04-15','Hydrabad','Ramoji Film City','13:03:11',100,3)
,('t1073','c_115','d_327','v_714','2022-04-15','Delhi','Agra','15:05:19',200,3)
,('t1074','c_116','d_328','v_715','2022-04-15','Delhi','Jaipur','19:03:29',150,2)
,('t1075','c_117','d_324','v_716','2022-04-15','Delhi','Lucknow','18:51:32',250,2)
,('t1076','c_123','d_306','v_717','2022-04-16','Delhi','Chandigadh','16:44:55',300,3)
,('t1077','c_140','d_313','v_718','2022-04-16','Chennai','Vellore','13:25:08',136,3)
,('t1078','c_131','d_304','v_719','2022-04-16','Chennai','Salem','16:10:04',342,2)
,('t1079','c_142','d_307','v_720','2022-04-18','Chennai','Pondicherry','18:19:42',140,2)
,('t1080','c_150','d_340','v_721','2022-04-18','Bangalore','Mangalore','18:05:27',400,3)
,('t1081','c_153','d_322','v_729','2022-04-18','Bangalore','Mysore','12:43:28',139,3)
,('t1082','c_154','d_305','v_726','2022-04-18','Bangalore','Yelagiri Hills','9:44:22',178,1)
,('t1083','c_147','d_337','v_734','2022-04-21','Coimbattur','Oonty','10:18:11',85,1)
,('t1084','c_157','d_329','v_732','2022-04-21','Coimbattur','Munnar','17:04:40',160,2)
,('t1085','c_141','d_318','v_729','2022-04-21','Hydrabad','Ramoji Film City','8:45:06',100,3)
,('t1086','c_158','d_333','v_705','2022-04-21','Hydrabad','Anantgiri Hills','18:19:08',100,2)
,('t1087','c_179','d_327','v_717','2022-04-21','Hydrabad','Telangana','9:03:05',100,2)
,('t1088','c_173','d_318','v_702','2022-04-21','Hydrabad','Telangana','16:40:58',100,1)
,('t1089','c_171','d_338','v_736','2022-04-21','Hydrabad','Golkonda','17:04:33',100,2)
,('t1090','c_175','d_327','v_709','2022-04-22','Hydrabad','Ramoji Film City','12:09:54',100,3)
,('t1091','c_176','d_317','v_713','2022-04-22','Bangalore','Mangalore','16:13:13',400,3)
,('t1092','c_177','d_339','v_709','2022-04-22','Mumbai','Pune','13:44:11',100,3)
,('t1093','c_178','d_335','v_714','2022-04-22','Pune','Mumbai','9:21:48',100,1)
,('t1094','c_179','d_321','v_704','2022-04-22','Delhi','Lucknow','14:57:12',250,2)
,('t1095','c_180','d_310','v_715','2022-04-22','Delhi','Agra','15:20:33',200,1)
,('t1096','c_181','d_309','v_720','2022-04-22','Delhi','Chandigadh','16:21:42',300,3)
,('t1097','c_182','d_339','v_721','2022-04-22','Delhi','Jaipur','17:00:24',150,2)
,('t1098','c_183','d_307','v_722','2022-04-23','Chennai','Pondicherry','18:12:12',140,2)
,('t1099','c_184','d_320','v_723','2022-04-23','Chennai','Vellore','10:52:31',136,3)
,('t1100','c_185','d_324','v_724','2022-04-24','Hydrabad','Golkonda','15:55:42',100,1)
,('t1101','c_186','d_315','v_725','2022-04-24','Hydrabad','Ramoji Film City','19:03:08',100,3)
,('t1102','c_187','d_338','v_726','2022-04-24','Bangalore','Mangalore','15:34:27',400,2)
,('t1103','c_188','d_331','v_727','2022-04-025','Mumbai','Pune','10:33:31',100,1)
,('t1104','c_189','d_308','v_728','2022-04-025','Pune','Mumbai','18:38:57',100,1)
,('t1105','c_190','d_326','v_729','2022-04-025','Hydrabad','Telangana','17:59:13',100,3)
,('t1106','c_191','d_312','v_730','2022-04-025','Hydrabad','Anantgiri Hills','18:59:13',100,1)
,('t1107','c_192','d_319','v_731','2022-04-025','Chennai','Pondicherry','19:59:13',140,2)
,('t1108','c_193','d_309','v_732','2022-04-025','Chennai','Salem','20:59:13',342,3);

select * from vehicle_info;
select * from customer_info;
select * from driver_info;
select * from trip_info;
-- --------------------------------------------------------------------------------------------------------------------------------------
-- feedback_info :→

CREATE TABLE feedback_info (trip_id varchar(10) not null,
    customer_ID VARCHAR(10) NOT NULL,
    trip_status ENUM('Enjoy', 'Good', 'not good'),
    trip_rating INT,
    CONSTRAINT trip_rating_Ck CHECK (trip_rating BETWEEN 1 AND 4),
    driver_behavior ENUM('Good', 'Friendly', 'Rude'),
    vehicle_comfort ENUM('Good', 'average', 'Luxury'),
    FOREIGN KEY (customer_id)
        REFERENCES customer_info (customer_id),
    FOREIGN KEY (trip_id)
        REFERENCES trip_info (trip_id)
);

drop table feedback_info;
INSERT INTO feedback_info(trip_id,customer_id,trip_status,trip_rating,driver_behavior,vehicle_comfort) VALUES
 ('t901','c_108',1,2,2,2)
,('t902','c_110',2,3,2,3)
,('t903','c_106',3,2,1,1)
,('t904','c_106',3,1,3,2)
,('t905','c_108',2,1,2,3)
,('t906','c_106',1,4,2,1)
,('t907','c_104',3,3,1,3)
,('t908','c_107',1,2,3,1)
,('t909','c_109',3,4,3,1)
,('t910','c_106',1,4,3,2)
,('t911','c_119',2,1,2,2)
,('t912','c_124',1,1,1,1)
,('t913','c_125',3,2,1,1)
,('t914','c_120',3,4,3,2)
,('t915','c_116',1,1,1,3)
,('t916','c_117',2,2,3,1)
,('t917','c_127',1,1,3,2)
,('t918','c_122',2,4,2,2)
,('t919','c_136',3,2,2,2)
,('t920','c_130',2,4,2,1)
,('t921','c_133',3,4,2,3)
,('t922','c_132',3,2,1,3)
,('t923','c_124',2,3,2,3)
,('t924','c_123',3,2,3,1)
,('t925','c_140',1,3,3,2)
,('t926','c_131',3,1,2,2)
,('t927','c_142',1,1,3,3)
,('t928','c_150',1,4,2,3)
,('t929','c_153',1,3,2,3)
,('t930','c_154',2,3,1,2)
,('t931','c_147',2,3,3,1)
,('t932','c_157',1,3,2,1)
,('t933','c_141',1,2,1,3)
,('t934','c_158',2,1,2,2)
,('t935','c_149',1,3,3,2)
,('t936','c_146',2,2,3,2)
,('t937','c_125',3,1,3,1)
,('t938','c_120',1,1,3,2)
,('t939','c_116',1,1,2,2)
,('t940','c_117',3,3,3,1)
,('t941','c_127',1,2,2,1)
,('t942','c_122',1,1,1,3)
,('t943','c_136',2,1,1,2)
,('t944','c_130',2,2,1,1)
,('t945','c_133',3,4,2,2)
,('t946','c_203',2,2,2,3)
,('t947','c_199',2,2,2,3)
,('t948','c_197',1,2,1,1)
,('t949','c_190',2,3,3,3)
,('t950','c_185',3,1,3,2)
,('t951','c_174',3,3,3,2)
,('t952','c_108',1,3,1,1)
,('t953','c_106',3,2,2,1)
,('t954','c_104',3,4,2,2)
,('t955','c_107',2,2,3,2)
,('t956','c_109',3,4,1,3)
,('t957','c_106',1,2,2,3)
,('t958','c_119',2,2,3,3)
,('t959','c_124',1,4,3,2)
,('t960','c_125',3,3,2,1)
,('t961','c_120',3,2,1,3)
,('t962','c_116',3,1,3,2)
,('t963','c_177',3,1,3,2)
,('t964','c_130',1,1,2,3)
,('t965','c_161',3,4,1,3)
,('t966','c_117',3,3,1,3)
,('t967','c_169',3,1,1,2)
,('t968','c_179',1,4,3,1)
,('t969','c_173',2,4,1,2)
,('t970','c_171',1,4,3,3)
,('t971','c_166',3,2,2,3)
,('t972','c_164',1,1,1,1)
,('t973','c_197',3,3,3,3)
,('t974','c_187',2,1,2,1)
,('t975','c_184',2,2,3,1)
,('t976','c_198',3,1,3,1)
,('t977','c_191',3,1,2,2)
,('t978','c_138',3,2,2,2)
,('t979','c_183',3,2,3,3)
,('t980','c_190',2,3,3,1)
,('t981','c_195',3,3,3,1)
,('t982','c_185',2,2,1,1)
,('t983','c_106',2,4,1,3)
,('t984','c_108',1,2,3,3)
,('t985','c_106',3,2,3,3)
,('t986','c_104',1,1,3,3)
,('t987','c_107',2,4,1,1)
,('t988','c_109',3,4,1,3)
,('t989','c_106',1,1,1,1)
,('t990','c_119',3,4,3,1)
,('t991','c_124',3,1,1,2)
,('t992','c_125',2,4,3,3)
,('t993','c_120',2,2,1,1)
,('t994','c_116',3,1,1,3)
,('t995','c_117',1,4,3,1)
,('t996','c_127',3,1,1,3)
,('t997','c_133',1,4,2,3)
,('t998','c_132',1,3,2,2)
,('t999','c_124',1,2,3,3)
,('t1000','c_123',1,4,1,2)
,('t1001','c_140',2,4,1,1)
,('t1002','c_131',3,1,2,2)
,('t1003','c_142',3,3,2,3)
,('t1004','c_150',2,3,1,2)
,('t1005','c_153',1,1,3,2)
,('t1006','c_154',2,1,3,1)
,('t1007','c_147',1,3,2,3)
,('t1008','c_157',3,1,2,2)
,('t1009','c_141',1,1,1,3)
,('t1010','c_158',3,4,1,2)
,('t1011','c_179',2,2,2,1)
,('t1012','c_173',3,1,3,1)
,('t1013','c_171',1,2,2,1)
,('t1014','c_166',1,2,3,2)
,('t1015','c_164',2,4,2,3)
,('t1016','c_197',1,3,3,1)
,('t1017','c_187',2,2,1,3)
,('t1018','c_184',1,4,1,2)
,('t1019','c_198',2,2,2,3)
,('t1020','c_191',1,4,2,1)
,('t1021','c_138',1,2,1,2)
,('t1022','c_183',2,3,2,2)
,('t1023','c_190',2,2,2,3)
,('t1024','c_126',3,4,2,3)
,('t1025','c_127',3,1,1,2)
,('t1026','c_128',1,2,2,2)
,('t1027','c_129',1,1,1,2)
,('t1028','c_103',3,4,3,3)
,('t1029','c_131',2,4,1,3)
,('t1030','c_132',2,1,3,1)
,('t1031','c_185',3,4,2,1)
,('t1032','c_134',2,4,2,2)
,('t1033','c_136',1,4,3,2)
,('t1034','c_130',2,1,1,3)
,('t1035','c_133',1,3,3,2)
,('t1036','c_203',2,1,2,3)
,('t1037','c_199',1,3,3,1)
,('t1038','c_197',2,4,3,2)
,('t1039','c_190',1,4,1,1)
,('t1040','c_185',2,3,1,1)
,('t1041','c_174',2,3,3,3)
,('t1042','c_158',2,1,2,3)
,('t1043','c_159',1,2,1,3)
,('t1044','c_160',3,1,3,2)
,('t1045','c_161',1,4,3,1)
,('t1046','c_162',2,1,2,1)
,('t1047','c_163',1,4,2,2)
,('t1048','c_164',1,3,2,1)
,('t1049','c_165',2,3,2,1)
,('t1050','c_166',2,4,3,3)
,('t1051','c_167',3,4,3,1)
,('t1052','c_168',3,3,1,3)
,('t1053','c_169',1,4,3,1)
,('t1054','c_198',1,3,1,2)
,('t1055','c_199',2,1,1,3)
,('t1056','c_200',3,4,3,2)
,('t1057','c_201',3,2,3,1)
,('t1058','c_202',1,2,1,1)
,('t1059','c_203',3,1,1,1)
,('t1060','c_204',1,3,3,1)
,('t1061','c_103',3,2,2,2)
,('t1062','c_104',1,1,2,2)
,('t1063','c_105',3,2,1,3)
,('t1064','c_106',1,1,1,1)
,('t1065','c_107',2,3,2,3)
,('t1066','c_108',2,3,1,3)
,('t1067','c_109',3,2,2,3)
,('t1068','c_110',1,1,3,3)
,('t1069','c_111',2,1,1,2)
,('t1070','c_112',1,2,2,1)
,('t1071','c_113',1,4,3,2)
,('t1072','c_114',2,3,1,1)
,('t1073','c_115',1,3,1,1)
,('t1074','c_116',3,4,2,2)
,('t1075','c_117',1,1,3,1)
,('t1076','c_123',1,4,3,3)
,('t1077','c_140',3,4,3,2)
,('t1078','c_131',1,3,3,3)
,('t1079','c_142',1,3,3,3)
,('t1080','c_150',1,1,2,2)
,('t1081','c_153',3,3,2,1)
,('t1082','c_154',2,2,1,2)
,('t1083','c_147',2,1,2,3)
,('t1084','c_157',3,3,2,2)
,('t1085','c_141',1,3,1,1)
,('t1086','c_158',2,2,3,1)
,('t1087','c_179',1,2,3,3)
,('t1088','c_173',1,3,2,3)
,('t1089','c_171',1,3,2,3)
,('t1090','c_175',3,4,3,1)
,('t1091','c_176',2,2,3,2)
,('t1092','c_177',2,4,1,3)
,('t1093','c_178',3,3,1,2)
,('t1094','c_179',2,4,2,3)
,('t1095','c_180',3,3,2,1)
,('t1096','c_181',3,3,1,3)
,('t1097','c_182',1,3,2,2)
,('t1098','c_183',2,2,2,3)
,('t1099','c_184',1,3,1,3)
,('t1100','c_185',1,2,1,2)
,('t1101','c_186',2,4,3,2)
,('t1102','c_187',1,1,1,2)
,('t1103','c_188',1,4,1,1)
,('t1104','c_189',1,3,3,1)
,('t1105','c_190',2,1,3,3)
,('t1106','c_191',3,2,3,3)
,('t1107','c_192',2,2,2,2)
,('t1108','c_193',3,1,3,3);
select * from feedback_info;
-- ----------------------------------------------------------------------------------------------------------------------------------------------

-- About Customer Detailed operation

select * from customer_info;

SELECT 
    gender, COUNT(customer_id) AS num_of_customer
FROM
    customer_info
GROUP BY 1;

select avg(age) from customer_info;


