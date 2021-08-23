-- -------------------------------------------------------------------------- --
--                                                                            --
--                        Database Systems -- SE 2222                         --
--                                                                            --
--                                Labwork - 3                                 --
--                                                                            --
--                                Section - 2                                 --
--                                                                            --
--                                 25.12.2020                                 --
--                                                                            --
-- -------------------------------------------------------------------------- --



-- -------------------------------------------------------------------------- --
--
--            I declare that I did not in any way give answers to anyone 
--            else, get answers from others, or act in any way unethical.
--
--            Name:  Burak
--         Surname:  ERCANLI
--  Student Number:  17070001015
--
-- -------------------------------------------------------------------------- --






-- ANSWER 1 ---------------------------------------------------  ( ?? / 50 )  --
	CREATE DATABASE Labwork_3;
	USE Labwork_3;
    
    CREATE TABLE Application_Type (
		AppTypeID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        App_Type_Name VARCHAR(30) NOT NULL
    );
    CREATE TABLE Operating_System (
		OperatingSystemID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        OS_Name VARCHAR(30) NOT NULL
    );
    CREATE TABLE DevStudio (
		DevID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Studio_Name VARCHAR(30) NOT NULL,
        Twitter_Account_Name VARCHAR(30) NOT NULL,
        Website VARCHAR(30) NOT NULL
    );
    CREATE TABLE Tags (
		TagID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Tag_Name VARCHAR(30) NOT NULL
    );
    CREATE TABLE Application (
		AppID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        App_Name VARCHAR(70) NOT NULL,
		Release_Date DATE NOT NULL,
        Lowest_Price INT UNSIGNED NOT NULL,
        Current_Price INT UNSIGNED NOT NULL,
        Pos_rev_num INT UNSIGNED,
        Neg_rev_num INT UNSIGNED,
        AppTypeID INT UNSIGNED,
        DevID INT UNSIGNED,
        OperatingSystemID INT UNSIGNED,
        App_Type INT UNSIGNED,
        FOREIGN KEY (App_Type) REFERENCES Application_Type(AppTypeID),
        Developer INT UNSIGNED,
        FOREIGN KEY (Developer) REFERENCES DevStudio(DevID),
        Publisher INT UNSIGNED,
        FOREIGN KEY (Publisher) REFERENCES DevStudio(DevID),
        Supported_OS INT UNSIGNED,
        FOREIGN KEY (Supported_OS) REFERENCES Operating_System(OperatingSystemID)
        );


-- -------------------------------------------------------------------------- --





-- ANSWER 2 ---------------------------------------------------  ( ?? / 5 )  --
	INSERT INTO Application_Type (App_Type_Name) VALUES ('Game');
    INSERT INTO Application_Type (App_Type_Name) VALUES ('Software');
    
    INSERT INTO Operating_System (OS_Name) VALUES ('Windows 7');
    INSERT INTO Operating_System (OS_Name) VALUES ('Windows 8');
    INSERT INTO Operating_System (OS_Name) VALUES ('Windows 8.1');
    INSERT INTO Operating_System (OS_Name) VALUES ('Windows 10');
    INSERT INTO Operating_System (OS_Name) VALUES ('Mac OS Mojave');
    INSERT INTO Operating_System (OS_Name) VALUES ('Mac OS Big Sur');
    INSERT INTO Operating_System (OS_Name) VALUES ('Ubuntu 16');
    INSERT INTO Operating_System (OS_Name) VALUES ('Ubuntu 18');
    INSERT INTO Operating_System (OS_Name) VALUES ('Ubuntu 20');


-- -------------------------------------------------------------------------- --




-- ANSWER 3 ---------------------------------------------------  ( ?? / 15 )  --
	INSERT INTO Tags (Tag_Name) VALUES ('Action');
    INSERT INTO Tags (Tag_Name) VALUES ('Adventure');
    INSERT INTO Tags (Tag_Name) VALUES ('Racing');
    INSERT INTO Tags (Tag_Name) VALUES ('Strategy');
    INSERT INTO Tags (Tag_Name) VALUES ('FPS');
    INSERT INTO Tags (Tag_Name) VALUES ('Moddable');
    INSERT INTO Tags (Tag_Name) VALUES ('War');
    INSERT INTO Tags (Tag_Name) VALUES ('Massively Multiplayer');
    INSERT INTO Tags (Tag_Name) VALUES ('RPG');
    INSERT INTO Tags (Tag_Name) VALUES ('Early Access');
    INSERT INTO Tags (Tag_Name) VALUES ('Simulation');
    INSERT INTO Tags (Tag_Name) VALUES ('Zombies');
    INSERT INTO Tags (Tag_Name) VALUES ('Horror');
    INSERT INTO Tags (Tag_Name) VALUES ('Co-op');
    INSERT INTO Tags (Tag_Name) VALUES ('Free to play');
    INSERT INTO Tags (Tag_Name) VALUES ('Survival');
    INSERT INTO Tags (Tag_Name) VALUES ('Tactical');
    INSERT INTO Tags (Tag_Name) VALUES ('Sports');
    INSERT INTO Tags (Tag_Name) VALUES ('Soccer');
    INSERT INTO Tags (Tag_Name) VALUES ('Indie');
    INSERT INTO Tags (Tag_Name) VALUES ('Casual');
    INSERT INTO Tags (Tag_Name) VALUES ('Comedy');
    
    INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('Valve','@valve','www.valve.com');
    INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('Rockstar Games','@rockstargames','www.rockstargames.com');
    INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('Ubisoft','@ubisoft','www.ubisoft.com');
	INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('CD PROJEKT RED','@cdprojektred','www.cdprojektred.com');
    INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('Krafton','@krafton','www.krafton.com');
    INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('CAPCOM','@capcom','www.capcom.com');
    INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('Electronic Arts','@ea','www.ea.com');
    INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('SEGA','@sega','www.sega.com');
    INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('Gun Media','@gunmedia','www.gunmedia.com');
    INSERT INTO DevStudio (Studio_Name,Twitter_Account_Name,Website) VALUES ('Rebuilt Games','@rebuiltgames','www.rebuiltgames.com');

	INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('Counter-Strike: Global Offensive','2012-08-21',2,10,4507320,610879,
	1,1,1,3);
    INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('Grand Theft Auto V','2015-04-14',7,11,807977,186397,
	1,2,2,4);
    INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('Tom Clancy\'s Rainbow Six Siege','2015-12-01',2,5,720385,97420,
	1,3,3,2);
    INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('Cyberpunk 2077','2020-12-10',33,33,241187,67799,
	1,4,4,6);
    INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('PLAYERUNKNOWN\'S BATTLEGROUNDS','2017-12-21',11,6,875360,749361,
	1,5,5,7);
    INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('Resident Evil 3','2020-04-03',11,11,30643,10289,
	1,6,6,9);
    INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('Apex Legends','2020-11-05',0,0,93281,5975,
	1,7,7,8);
    INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('Football Manager 2021','2020-11-24',30,30,8141,528,
	1,8,8,5);
    INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('Friday the 13th: The Game','2017-05-26',1,1,39942,11478,
	1,9,9,3);
    INSERT INTO Application (App_Name,Release_Date,Lowest_Price,
	Current_Price,Pos_rev_num,Neg_rev_num,App_Type,Developer,Publisher,
	Supported_OS) VALUES ('Pummel Party','2018-09-20',2,2,4507320,610879,
	1,1,1,3);


-- -------------------------------------------------------------------------- --





-- ANSWER 4 ---------------------------------------------------  ( ?? / 10 )  --
	
    SET SQL_SAFE_UPDATES = 0;
	UPDATE Application SET Current_Price = Current_Price + 0.6 * Current_Price WHERE Developer = 4;


-- -------------------------------------------------------------------------- --





-- ANSWER 5 ---------------------------------------------------  ( ?? / 10 )  --
	
    ALTER TABLE Application ADD Metactiric_Score INT;
	

-- -------------------------------------------------------------------------- --

	



-- ANSWER 6 ---------------------------------------------------  ( ?? / 5 )  --

	DELETE FROM Application WHERE Publisher = 9;
    
-- -------------------------------------------------------------------------- --





-- ANSWER 7 ---------------------------------------------------  ( ?? / 5 )  --

	DROP TABLE Operating_System;
    
    #It did not work because we referenced in Application table.

-- -------------------------------------------------------------------------- --
