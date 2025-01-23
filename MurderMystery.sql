create database project;

	--  Looking for the murder that happened on 9th March,2023. in Atom city

select * from crime_scene_report
where date ="3092023" and city ="atom-city";

	-- So case index-report is 15 
    --  Description : 'Security footage shows that there were 2 witnesses. The first witness lives  at the last house in "Saddar Bazaar Rawalpindi"".
--     The second witness  named Sanam Akhtar lives somewhere on ""Gulshan-e-Ravi Lahore""."'


select * from accused_person
where address_street_name = "Saddar Bazaar, Rawalpindi" or address_street_name = "Gulshan-e-Ravi, Lahore";

select * from accused_person
where name = "Sanam Akhtar" and address_street_name = "Gulshan-e-Ravi, Lahore";

--  Snanam's person_id = 205019 and unable to find second witness till now 



select * from interviews
where person_id = "205019";

-- Her statement "'I saw the murder happen, i recognize the killer from the gym when i was working out last week on "3/9/2023""."'"

select * from atom_fit
where check_in_date = "3092023";

-- So the person's id is 184448 

-- Feeling like ACP PRADYUMAN

select * from interviews
where person_id = "184448";

-- His statement "'I was hired by a woman and she is a millionaire. 
-- I don''t have much information about her but she has blue eyes 
-- and her age is 60 and she drives a mercedes benz. 
-- She also told me that she will attend a dinner of a data company on 3/9/2023.'"

select * from drivers_license
where age = "60" and  eye_color = "blue" and car_make = "mercedes" and car_model = "Benz";

-- Founnd two suspects..... Having license_id "573532" and "433382"

select * from accused_person
where license_id = '433382' or license_id = '573532';

-- So Their names are Shabnam Akhtar id: '541190' ssn: '967694038' and Alia Khan id: '272601' ssn '160048319'

select * from annual_income 
where ssn ='160048319' or ssn = '967694038';

-- So person with ssn:'967694038' having id '541190' is a millionaire 


select * from atomcamp_annualdinner
where person_id = "541190";


select name from accused_person
where person_id = "541190";

-- So main culprit is Shabnam AKhtar 
-- Umar qad sunai jati he 
