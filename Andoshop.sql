-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 22, 2015 at 11:26 PM
-- Server version: 5.5.34
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `andoshops`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_pharmacyAdd`(business_id INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO andoshops.additional_attributes_shop (business_id, created_date, created_by_user_id) VALUES (business_id, category_id, NOW(), created_by_user_id);
SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_pharmacyDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.additional_attributes_pharmacy WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_pharmacyGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.additional_attributes_pharmacy WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_pharmacyGetAll`()
BEGIN
    SELECT * FROM andoshops.additional_attributes_pharmacy;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_pharmacyUpdate`(id INT(11), business_id INT(11), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.additional_attributes_pharmacy SET business_id = business_id, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_restaurantAdd`(business_id INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO andoshops.additional_attributes_shop (business_id, created_date, created_by_user_id) VALUES (business_id, category_id, NOW(), created_by_user_id);
SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_restaurantDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.additional_attributes_restaurant WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_restaurantGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.additional_attributes_restaurant WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_restaurantGetAll`()
BEGIN
    SELECT * FROM andoshops.additional_attributes_restaurant;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_restaurantUpdate`(id INT(11), business_id INT(11), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.additional_attributes_restaurant SET business_id = business_id, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_shopAdd`(business_id INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO andoshops.additional_attributes_shop (business_id, created_date, created_by_user_id) VALUES (business_id, category_id, NOW(), created_by_user_id);
SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_shopDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.additional_attributes_shop WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_shopGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.additional_attributes_shop WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_shopGetAll`()
BEGIN
    SELECT * FROM andoshops.additional_attributes_shop;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_attributes_shopUpdate`(id INT(11), business_id INT(11), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.additional_attributes_shop SET business_id = business_id, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `businessAdd`(name VARCHAR(255), telephone INT(11), email VARCHAR(255), website VARCHAR(255), active TINYINT(1), location_id INT(11), company_id INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO business (name, telephone, email, website, location_id, company_id, created_date, created_by_user_id) VALUES (name, telephone, email, website,  location_id, company_id, NOW(), created_by_user_id);
SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `businessDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.business WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `businessGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.business WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `businessGetAll`()
BEGIN
    SELECT * FROM andoshops.business;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `businessUpdate`(id INT(11), name VARCHAR(255), telephone INT(11), email VARCHAR(255), website VARCHAR(255), active TINYINT(1), location_id INT(11), company_id INT(11), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.business SET name = name, telephone = telephone, email = email, website = website, active = active, location_id = location_id, company_id = company_id, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `business_categoryAdd`(business_id INT(11), category_id INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO business_category (business_id, category_id, created_date, created_by_user_id) VALUES (business_id, category_id, NOW(), created_by_user_id);
SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `business_categoryDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.business_category WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `business_categoryGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.business_category WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `business_categoryGetAll`()
BEGIN
    SELECT * FROM andoshops.business_category;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `business_categoryUpdate`(id INT(11), business_id INT(11), category_id INT(11), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.business_category SET business_id = business_id, category_id = category_id, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `categoryAdd`(name VARCHAR(20), created_date TIMESTAMP, created_by_user_id INT(11))
BEGIN
    INSERT INTO category (name, created_date, created_by_user_id) VALUES (name, NOW(), created_by_user_id);
    SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `categoryDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.category WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `categoryGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.category WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `categoryGetAll`()
BEGIN
    SELECT * FROM andoshops.category;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `categoryUpdate`(id INT(11), name VARCHAR(20), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.category SET name = name, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `companyAdd`(name VARCHAR(20), telephone INT(11), email VARCHAR(20), website VARCHAR(32), active TINYINT(1), location_id INT(11), company_id INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO company (name, telephone, email, website, location_id, company_id, created_date, created_by_user_id) VALUES (name, telephone, email, website,  location_id, company_id, NOW(), created_by_user_id);
    SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `companyDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.company where id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `companyGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.company where id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `companyGetAll`()
BEGIN
    SELECT * FROM andoshops.company;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `companyUpdate`(id INT(11), name VARCHAR(20), slug VARCHAR(2) ,updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.company SET name = name, slug = slug, updated_by_user_id = updated_by_user_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `countryAdd`(name VARCHAR(20), slug VARCHAR(2), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO country (name, slug, created_date, created_by_user_id) VALUES (name, slug, NOW(), created_by_user_id);
    SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `countryDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.country WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `countryGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.country WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `countryGetAll`()
BEGIN
    SELECT * FROM andoshops.country;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `countryUpdate`(id INT(11), name VARCHAR(20), slug VARCHAR(2) ,updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.country SET name = name, slug = slug, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `dropBusiness`(id INT(11))
BEGIN
    DELETE FROM andoshops.business WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getBusiness`(id INT(11))
BEGIN
    SELECT * FROM andoshops.business WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hoursAdd`(day_of_week VARCHAR(10), open TINYINT(1), close TINYINT(1), business_id INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO hours (day_of_week, open, close, business_id, created_date, created_by_user_id) VALUES (day_of_week, open, close, business_id, NOW(), created_by_user_id);
    SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hoursDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.hours WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hoursGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.hours WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hoursGetAll`()
BEGIN
    SELECT * FROM andoshops.hours;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hoursUpdate`(id INT(11), day_of_week VARCHAR(10), open TINYINT(1), close TINYINT(1), business_id INT(11) ,updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.hours SET day_of_week = day_of_week, open = open, close = close, business_id = business_id, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `locationAdd`(full_address VARCHAR(255), city VARCHAR(255), zipcode INT(11), latitude FLOAT(10,6), longitude FLOAT(10,6), country_id INT(11), created_date TIMESTAMP, created_by_user_id INT(11))
BEGIN
    INSERT INTO location (full_address, city, zipcode, latitude, longitude, country_id, created_date, created_by_user_id) VALUES (full_adress, city, zipcode, latitude, longitude, country_id, NOW(), created_by_user_id);
    SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `locationDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.location WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `locationGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.location WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `locationGetAll`()
BEGIN
    SELECT * FROM andoshops.location;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `locationUpdate`(id INT(11), full_address VARCHAR(255), city VARCHAR(255), zipcode INT(11), latitude FLOAT(10,6), longitude FLOAT(10,6), country_id INT(11), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.location SET full_address = full_address, city = city, zipcode = zipcode, latitude = latitude, longitude = longitude, country_id = country_id, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pictureAdd`(name VARCHAR(20), url VARCHAR(255), business_id INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO picture (name, url, business_id, created_date,created_by_user_id) VALUES (name, url, business_id, NOW(),created_by_user_id);
    SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pictureDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.picture WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pictureGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.picture WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pictureGetAll`()
BEGIN
    SELECT * FROM andoshops.picture;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pictureUpdate`(id INT(11), name VARCHAR(20), url VARCHAR(255), business_id INT(11), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.picture SET name = name, url = url, business_id = business_id, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `userAdd`(first_name VARCHAR(20), last_name VARCHAR(20), password varchar(32), email VARCHAR(20), telephone INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO andoshops.user (first_name, last_name, password, email, telephone, created_date, created_by_user_id) VALUES (first_name, last_name, password, email, telephone, NOW(), created_by_user_id);
    SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `userDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.user WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `userGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.user WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `userGetAll`()
BEGIN
    SELECT * FROM andoshops.user;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `userUpdate`(id INT(11), first_name VARCHAR(20), last_name VARCHAR(20), password varchar(32), email VARCHAR(20), telephone INT(11), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.user SET first_name = first_name, last_name = last_name , password = password, email = email, telephone = telephone, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_companyAdd`(user_id INT(11), company_id INT(11), created_date TIMESTAMP,created_by_user_id INT(11))
BEGIN
    INSERT INTO user_company (user_id, company_id, created_date, created_by_user_id) VALUES (user_id, company_id, NOW(), created_by_user_id);
SELECT LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_companyDelete`(id INT(11))
BEGIN
    DELETE FROM andoshops.user_company WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_companyGet`(id INT(11))
BEGIN
    SELECT * FROM andoshops.user_company WHERE id = id;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_companyGetAll`()
BEGIN
    SELECT * FROM andoshops.user_company;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_companyUpdate`(id INT(11), user_id INT(11), company_id INT(11), updated_by_user_id INT(11))
BEGIN
    UPDATE andoshops.user_company SET user_id = user_id, company_id = company_id, updated_by_user_id = updated_by_user_id WHERE id = id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `additional_attributes_pharmacy`
--

CREATE TABLE IF NOT EXISTS `additional_attributes_pharmacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `additional_attributes_restaurant`
--

CREATE TABLE IF NOT EXISTS `additional_attributes_restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `additional_attributes_shop`
--

CREATE TABLE IF NOT EXISTS `additional_attributes_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE IF NOT EXISTS `business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  KEY `company_id` (`company_id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `business_category`
--

CREATE TABLE IF NOT EXISTS `business_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`),
  KEY `category_id` (`category_id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `telephone` int(11) NOT NULL,
  `website` varchar(32) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `slug` varchar(2) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by_user_id` int(11) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE IF NOT EXISTS `hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_of_week` varchar(10) DEFAULT NULL,
  `open` tinyint(1) DEFAULT '0',
  `close` tinyint(1) DEFAULT '0',
  `business_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `business_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telephone` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_company`
--

CREATE TABLE IF NOT EXISTS `user_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `company_id` (`company_id`),
  KEY `created_by_user_id` (`created_by_user_id`),
  KEY `updated_by_user_id` (`updated_by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `additional_attributes_pharmacy`
--
ALTER TABLE `additional_attributes_pharmacy`
  ADD CONSTRAINT `additional_attributes_pharmacy_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `additional_attributes_pharmacy_ibfk_2` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `additional_attributes_pharmacy_ibfk_3` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `additional_attributes_pharmacy_ibfk_4` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `additional_attributes_pharmacy_ibfk_5` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `additional_attributes_restaurant`
--
ALTER TABLE `additional_attributes_restaurant`
  ADD CONSTRAINT `additional_attributes_restaurant_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `additional_attributes_restaurant_ibfk_2` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `additional_attributes_restaurant_ibfk_3` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `additional_attributes_restaurant_ibfk_4` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `additional_attributes_shop`
--
ALTER TABLE `additional_attributes_shop`
  ADD CONSTRAINT `additional_attributes_shop_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `additional_attributes_shop_ibfk_2` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `additional_attributes_shop_ibfk_3` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `business_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `business_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `business_ibfk_3` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `business_ibfk_4` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `business_category`
--
ALTER TABLE `business_category`
  ADD CONSTRAINT `business_category_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `business_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `business_category_ibfk_3` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `business_category_ibfk_4` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_ibfk_2` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_ibfk_2` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `country_ibfk_1` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `country_ibfk_2` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hours`
--
ALTER TABLE `hours`
  ADD CONSTRAINT `hours_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hours_ibfk_2` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hours_ibfk_3` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_3` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `picture_ibfk_2` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `picture_ibfk_3` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_company`
--
ALTER TABLE `user_company`
  ADD CONSTRAINT `user_company_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_company_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_company_ibfk_3` FOREIGN KEY (`created_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_company_ibfk_4` FOREIGN KEY (`updated_by_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
