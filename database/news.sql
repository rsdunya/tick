-- Create tables:
CREATE TABLE `EUR_USD` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `AUD_CAD` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `USD_TRY` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `EUR_TRY` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `USD_JPY` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `USD_CHF` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `GBP_USD` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `NZD_USD` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `EUR_AUD` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `EUD_CAD` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `USD_CAD` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `AUD_USD` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `EUR_JPY` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `EUR_GBP` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `GBP_CHF` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `CHF_JPY` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `AUD_JPY` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `AUD_NZD` (`instrument` varchar(10) NOT NULL,`bid` decimal(15,10) NOT NULL,`ask` decimal(15,10) NOT NULL,`time` datetime(6) NOT NULL);
CREATE TABLE `news` (`name` varchar(100) NOT NULL,`country` varchar(100) NOT NULL,`previous` decimal(15,10),`forecast` decimal(15,10),`frequency` decimal(15,10) NOT NULL,`fInterval` varchar(15) NOT NULL, `actual` decimal(15,10) NOT NULL, `time` datetime NOT NULL);

-- GDP Annualized estmates quarterly since 2013 `name`,`country``forecast`,`actual`,`time`)
insert into news (time, country,name,previous,forecast,actual, frequency, fInterval) values ('2013-04-28','US','GDP',null,null, 1.9, 30,'days'),
('2013-07-29','US','GDP',null,null, 1.1, 30,'days'),
('2013-10-28','US','GDP',null,null, 3.0, 30,'days'),
('2014-01-29','US','GDP',null,null, 3.8, 30,'days'),
('2013-04-28','US','GDP',null,null,-0.9, 30,'days'),
('2013-07-29','US','GDP',null,null, 4.6, 30,'days'),
('2013-10-28','US','GDP',null,null, 4.3, 30,'days'),
('2014-01-29','US','GDP',null,null, 2.1, 30,'days'),
('2013-04-28','US','GDP',null,null, 0.6, 30,'days'),
('2013-07-29','US','GDP',null,null, 3.9, 30,'days'),
('2013-10-28','US','GDP',null,null, 2.0, 30,'days'),
('2014-01-29','US','GDP',null,null, 1.4, 30,'days');


-- Advanced Goods trade balance 2015-2016
insert into news (time, country,name,previous,forecast,actual, frequency, fInterval) values ('2016-06-27 08:30','US','AdvGoodsTB',-57.5,-60.7,-60.6, 30,'days'),
('2016-05-25 08:30','US','AdvGoodsTB',-57.1,-61.3,-57.5, 30,'days'),
('2016-04-27 08:30','US','AdvGoodsTB',-62.9,-62.2,-56.9, 30,'days'),
('2016-03-28 08:30','US','AdvGoodsTB',-62.2,-64.4,-62.9, 30,'days'),
('2016-02-26 08:30','US','AdvGoodsTB',-61.5,-62,-62.2, 30,'days'),
('2016-01-29 08:30','US','AdvGoodsTB',-60.5,-59.2,-61.5, 30,'days'),
('2015-12-29 08:30','US','AdvGoodsTB',-58.41,-62.4,-60.5, 30,'days'),
('2015-11-24 08:30','US','AdvGoodsTB',-59.15,-60.4,-58.41, 30,'days');

-- Consumer Confidence CCI 2015-2016
insert into news (time, country,name,previous,forecast,actual,frequency, fInterval) values ('2015-07-28 10:00','US','CCI',99.8,98,90.9, 30,'days'),
('2015-08-25 10:00','US','CCI',91,93.5,101.5, 30,'days'),
('2015-09-29 10:00','US','CCI',101.3,88.5,103, 30,'days'),
('2015-10-27 10:00','US','CCI',102.6,101,97.6, 30,'days'),
('2015-11-24 10:00','US','CCI',99.1,102,90.4, 30,'days'),
('2015-12-29 10:00','US','CCI',92.6,95,96.5, 30,'days'),
('2016-01-26 10:00','US','CCI',96.3,95,98.1, 30,'days'),
('2016-02-23 10:00','US','CCI',97.8,93.6,92.2, 30,'days'),
('2016-03-29 10:00','US','CCI',94.0,94,96.2, 30,'days'),
('2016-04-26 10:00','US','CCI',96.1,92.5,94.2, 30,'days'),
('2016-05-31 10:00','US','CCI',94.7,98,92.6, 30,'days'),
('2016-06-28 10:00','US','CCI',92.4,95.5,98.0, 30,'days');

-- Initial Claims
insert into news (time, country,name,previous,forecast,actual,frequency, fInterval) values ('2015-07-09 08:30','US','Initial Claims','282','280','296', 7, 'days'),
('2015-07-16 08:30','US','Initial Claims',296,280,281,7,'days'),
('2015-07-23 08:30','US','Initial Claims',281,265,255,7,'days'),
('2015-07-30 08:30','US','Initial Claims',255,273,267,7,'days'),
('2015-08-06 08:30','US','Initial Claims',267,275,269,7,'days'),
('2015-08-13 08:30','US','Initial Claims',269,270,273,7,'days'),
('2015-08-20 08:30','US','Initial Claims',273,270,277,7,'days'),
('2015-08-27 08:30','US','Initial Claims',277,275,270,7,'days'),
('2015-09-03 08:30','US','Initial Claims',270,275,281,7,'days'),
('2015-09-10 08:30','US','Initial Claims',281,275,275,7,'days'),
('2015-09-17 08:30','US','Initial Claims',275,275,264,7,'days'),
('2015-09-24 08:30','US','Initial Claims',264,280,267,7,'days'),
('2015-10-01 08:30','US','Initial Claims',267,275,276,7,'days'),
('2015-10-08 08:30','US','Initial Claims',276,272,262,7,'days'),
('2015-10-15 08:30','US','Initial Claims',262,272,256,7,'days'),
('2015-10-22 08:30','US','Initial Claims',256,265,259,7,'days'),
('2015-10-29 08:30','US','Initial Claims',259,260,260,7,'days'),
('2015-11-05 08:30','US','Initial Claims',260,265,276,7,'days'),
('2015-11-12 08:30','US','Initial Claims',276,260,276,7,'days'),
('2015-11-19 08:30','US','Initial Claims',276,275,272,7,'days'),
('2015-11-25 08:30','US','Initial Claims',272,270,260,7,'days'),
('2015-12-03 08:30','US','Initial Claims',260,270,269,7,'days'),
('2015-12-10 08:30','US','Initial Claims',269,260,282,7,'days'),
('2015-12-17 08:30','US','Initial Claims',282,270,272,7,'days'),
('2015-12-24 08:30','US','Initial Claims',272,275,267,7,'days'),
('2015-12-31 08:30','US','Initial Claims',267,265,287,7,'days'),
('2016-01-07 08:30','US','Initial Claims',287,277,277,7,'days'),
('2016-01-14 08:30','US','Initial Claims',277,275,283,7,'days'),
('2016-01-21 08:30','US','Initial Claims',283,285,294,7,'days'),
('2016-01-28 08:30','US','Initial Claims',294,290,277,7,'days'),
('2016-02-04 08:30','US','Initial Claims',277,290,285,7,'days'),
('2016-02-11 08:30','US','Initial Claims',285,285,269,7,'days'),
('2016-02-18 08:30','US','Initial Claims',269,280,262,7,'days'),
('2016-02-25 08:30','US','Initial Claims',262,270,272,7,'days'),
('2016-03-03 08:30','US','Initial Claims',272,270,277,7,'days'),
('2016-03-10 08:30','US','Initial Claims',277,275,258,7,'days'),
('2016-03-17 08:30','US','Initial Claims',258,265,259,7,'days'),
('2016-03-24 08:30','US','Initial Claims',259,260,265,7,'days'),
('2016-03-31 08:30','US','Initial Claims',265,260,276,7,'days'),
('2016-04-07 08:30','US','Initial Claims',276,275,266,7,'days'),
('2016-04-14 08:30','US','Initial Claims',266,265,253,7,'days'),
('2016-04-21 08:30','US','Initial Claims',253,265,248,7,'days'),
('2016-04-28 08:30','US','Initial Claims',248,260,257,7,'days'),
('2016-05-05 08:30','US','Initial Claims',257,260,274,7,'days'),
('2016-05-12 08:30','US','Initial Claims',274,270,294,7,'days'),
('2016-05-19 08:30','US','Initial Claims',294,265,278,7,'days'),
('2016-05-26 08:30','US','Initial Claims',278,275,268,7,'days'),
('2016-06-02 08:30','US','Initial Claims',268,265,268,7,'days'),
('2016-06-09 08:30','US','Initial Claims',268,265,264,7,'days'),
('2016-06-16 08:30','US','Initial Claims',264,270,277,7,'days'),
('2016-06-23 08:30','US','Initial Claims',277,268,258,7,'days'),
('2016-06-30 08:30','US','Initial Claims',258,265,268,7,'days');


