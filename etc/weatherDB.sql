-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Host: 127.8.200.130:3306
-- Generation Time: Nov 01, 2015 at 07:24 PM
-- Server version: 5.5.45
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `weatherpistation`
--

-- --------------------------------------------------------

--
-- Table structure for table `weatherDB`
--

CREATE TABLE IF NOT EXISTS `weatherDB` (
  `RPi_id` mediumtext COLLATE utf8_bin NOT NULL,
  `jsonData` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `weatherDB`
--

INSERT INTO `weatherDB` (`RPi_id`, `jsonData`) VALUES
('000db34', '{"Date and time":"2015-06-26 19:23:00.263133","Unix time":"1435335780.28","Relative_Humidity":"31.6000003815","Temperature-DHT":"28.3999996185","Light_Level":"612.033195021","Carbon_Monoxide":"205373.134328","Volume":"2793.5483871"}'),
('000cs98', '{"Date and time":"2015-06-26 19:28:00.349636","Unix time":"1435336080.9","Relative_Humidity":"31.6000003815","Temperature-DHT":"28.3999996185","Light_Level":"678.496868476","Carbon_Monoxide":"204464.285714","Volume":"2612.90322581"}'),
('000cs98', '{"Date and time":"2015-06-26 19:28:00.349636","Unix time":"1435336080.9","Relative_Humidity":"31.6000003815","Temperature-DHT":"28.3999996185","Light_Level":"678.496868476","Carbon_Monoxide":"204464.285714","Volume":"2612.90322581"}'),
('rpi-demo1', '{"Date and time":"2015-06-03 17:54:00.669316","Unix time":"1433343241.25","Temperature-BMP":"33.5","Pressure":"1018.17570699","Relative_Humidity":"25.6000003815","Temperature-DHT":"30.8999996185","Light_Level":"601.03626943","Nitrogen_Dioxide":"114756.097561","Volume":"6.45161290323"}'),
('rpi-demo1', '{"Date and time":"2015-06-03 17:51:30.569140","Unix time":"1433343091.15","Temperature-BMP":"33.4","Pressure":"1018.17570699","Relative_Humidity":"25.5","Temperature-DHT":"30.8999996185","Light_Level":"590.062111801","Nitrogen_Dioxide":"119493.670886","Volume":"25.8064516129"}'),
('rpi-demo1', '{"Date and time":"2015-06-03 17:49:00.468909","Unix time":"1433342941.05","Temperature-BMP":"33.5","Pressure":"1018.29218368","Relative_Humidity":"25.8999996185","Temperature-DHT":"31.0","Light_Level":"623.052959502","Nitrogen_Dioxide":"101195.652174","Volume":"29.0322580645"}'),
('rpi-demo1', '{"Date and time":"2015-06-03 17:46:30.401619","Unix time":"1433342790.98","Temperature-BMP":"33.3","Pressure":"1018.28159489","Relative_Humidity":"26.0","Temperature-DHT":"31.1000003815","Light_Level":"634.095634096","Nitrogen_Dioxide":"79736.8421053","Volume":"19.3548387097"}'),
('rpi-demo1', '{"Date and time":"2015-06-03 17:44:00.303273","Unix time":"1433342640.35","Temperature-BMP":"33.5","Pressure":"1018.2710061","Relative_Humidity":"25.7999992371","Temperature-DHT":"31.0","Light_Level":"712.041884817","Nitrogen_Dioxide":"110352.941176","Volume":"9.67741935484"}'),
('rpi-demo2', '{"Date and time":"2015-06-03 18:06:31.167334","Unix time":"1433343991.75","Temperature-BMP":"33.1","Pressure":"1018.09099667","Relative_Humidity":"25.6000003815","Temperature-DHT":"31.2000007629","Light_Level":"723.270440252","Nitrogen_Dioxide":"88365.3846154","Volume":"12.9032258065"}'),
('rpi-demo2', '{"Date and time":"2015-06-03 18:04:01.067238","Unix time":"1433343841.65","Temperature-BMP":"33.4","Pressure":"1018.04864151","Relative_Humidity":"25.7000007629","Temperature-DHT":"31.1000003815","Light_Level":"1011.84068891","Nitrogen_Dioxide":"121153.846154","Volume":"32.2580645161"}'),
('rpi-demo2', '{"Date and time":"2015-06-03 18:01:30.967059","Unix time":"1433343691.54","Temperature-BMP":"33.5","Pressure":"1018.17570699","Relative_Humidity":"25.7000007629","Temperature-DHT":"31.1000003815","Light_Level":"1059.45945946","Nitrogen_Dioxide":"134084.507042","Volume":"16.1290322581"}'),
('rpi-demo2', '{"Date and time":"2015-06-03 17:59:00.872329","Unix time":"1433343541.5","Temperature-BMP":"33.7","Pressure":"1018.12276304","Relative_Humidity":"25.7000007629","Temperature-DHT":"31.1000003815","Light_Level":"1047.5161987","Nitrogen_Dioxide":"96562.5","Volume":"16.1290322581"}'),
('rpi-demo2', '{"Date and time":"2015-06-03 17:56:30.769455","Unix time":"1433343391.35","Temperature-BMP":"33.5","Pressure":"1018.12276304","Relative_Humidity":"26.1000003815","Temperature-DHT":"31.1000003815","Light_Level":"568.181818182","Nitrogen_Dioxide":"81339.2857143","Volume":"19.3548387097"}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
