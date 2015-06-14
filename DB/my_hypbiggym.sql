-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Giu 14, 2015 alle 18:14
-- Versione del server: 5.1.71-community-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_hypbiggym`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `all_courses`
--

CREATE TABLE IF NOT EXISTS `all_courses` (
  `name` varchar(50) NOT NULL,
  `level` enum('principiante','intermedio','avanzato') NOT NULL,
  `description` text NOT NULL,
  `photos` varchar(255) NOT NULL,
  `duration` varchar(10) NOT NULL,
  PRIMARY KEY (`name`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `all_courses`
--

INSERT INTO `all_courses` (`name`, `level`, `description`, `photos`, `duration`) VALUES
('Yoga for Beginners', 'principiante', '<strong>MIND/BODY PROGRAM</strong> <em>"Quiet your mind. Strengthen your body. Open your heart."</em> East meets west for these inspiring, challenging, and stress reducing workouts. Requiring enrollment and a commitment, choose from Yoga Classes or Mind/Body Workshops. Most classes and workshops have a small additional fee. For added flexibility and value, buy a Fitness Pass with Yoga ($25/quarter) and enroll in a Yoga Class. The Fitness Pass with Yoga then gives you access to &ldquo;drop-in&rdquo; on all of the other yoga classes after the second week of class. To enroll in a class or workshop or purchase a Fitness Pass with Yoga,&nbspgo to the form linked at the end of this page.</p>\r\n<p>\r\n	<strong>YOGA CLASSES:</strong> What is yoga? Yoga is an ancient body of physical, mental, and spiritual practices designed to cultivate inner peace, an open heart, a calm mind, and a strong, flexible, relaxed body. Yoga first began in India 5000 years ago. &ldquo;Yoga&rdquo; in Sanskrit literally means to forge a union between mind and body. Hatha yoga emphasizes the physical aspect of yoga. Ancient hatha yogis recognized that the state of the body affects the mind and the state of the mind affects the body. The postures or asanas practiced in hatha yoga were developed to relax, detoxify, and strengthen the body in preparation for meditation. This type of practice is like meditation-in-movement. Most hatha yoga classes include asanas, pranyama (breathing techniques), deep relaxation, and meditation. At BigGym, two general yoga forms are practiced: Hatha Yoga and Power Yoga. The basic difference is that Power Yoga is practiced in a &ldquo;flow&rdquo; format. Asanas are linked together, and students flow from one posture to another rather than holding one particular posture or asana for an extended period of time. Hatha classes vary by the instructor teaching and level of the class. Some Hatha (listed as &ldquo;Yoga&rdquo;) classes, however, may be taught in a &ldquo;flow&rdquo; technique. At BigGym, our classes are designed to provide a challenging and meaningful practice. Yoga, itself, is the best teacher. Start your practice today. Learn to live in the moment.</p>\r\n<p>\r\n	<strong>Class Description:</strong><br />\r\n	Yoga for Beginners: the perfect class for those new to yoga, with special concerns, or who simply wish to move at a slower pace. It emphasizes the therapeutic and calming aspects of yoga and introduces students to postures and breathing techniques in order to build strength and improve flexibility.<br />\r\n	</p>', 'img/courses/yoga/1.jpg;img/courses/yoga/2.jpg;img/courses/yoga/3.jpg;img/courses/yoga/4.jpg;img/courses/yoga/5.jpg', '1h'),
('Yoga for Advanced', 'avanzato', '', '', ''),
('Spinning for Beginners', 'principiante', '', '', ''),
('Pilates for Intermediate', 'intermedio', '\r\n<p><strong>What is this class about:</strong><br/>Pilates is a functional way of raising your activity levels, especially if you&rsquo;d like to improve your mobility or are recovering from an injury. Pilates can be adapted to raise the fitness levels of someone less active, and it can challenge someone very fit. Making it open to both men and women alike and whatever your fitness level, Pilates can accommodate you.</p>\r\n<p><strong>What this class is great for:</strong><br />Pilates strengthens the core and can bring many health benefits such as helping with back pain, improving body alignment, posture, flexibility and much more. It is an exercise system that focuses on stretching and strengthening the whole body improving your body&rsquo;s balance and muscle strength. With a variety of Pilates classes constantly running at one of the Better Leisure Centres you can easily sign up to a Pilates class and reap the benefits today.</p>\r\n<p><strong>Who can take part:</strong><br />Pilates is suitable for people of all levels of fitness. You&rsquo;re never too late to start; Pilates can be devised into a programme of exercises tailored to your fitness levels. </p>\r\n<p><strong>Difficulty Level:</strong><br />Intermediate<br /><br /><strong>Other facilities:</strong><br />Changing and shower facilities are available for use before and after the class.<br />You are recommended to use lockers that are available for any belongings.  Lockers generally take 20p or a &pound;1.00 coin although we do not take any responsibility for the valuables left in them. </p>', 'img/courses/pilates/1.jpg;img/courses/pilates/2.jpg;img/courses/pilates/3.jpg;img/courses/pilates/4.jpg;img/courses/pilates/5.jpg', '1h 30m');

-- --------------------------------------------------------

--
-- Struttura della tabella `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `name` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `category` enum('Yoga','Pilates') NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`name`, `description`, `category`) VALUES
('Yoga for Beginners', 'A course designed for absolute beginners to yoga. This course is aimed at students who have little or no physical yoga experience, and acts as a pathway to Ashtanga Beginners 1 and 2 courses. It will introduce basic yoga poses, techniques and breathwork as well as a gentle understanding of what we are trying to achieve on the yoga mat. You attend one class per week, at the same time and day, with the option to go straight into Ashtanga 1 after your 6th week.', 'Yoga'),
('Yoga for Intermediate', 'Designed to take students to the intermediate level. More advanced postures and sequences are introduced requiring a bit more strength, stamina, and flexibility. ', 'Yoga'),
('Yoga for Advanced', 'A more challenging and vigorous led class, focusing equally on strength and functional mobility, incorporating traditional yoga postures, inversions, and some dynamic movement. Less basic instruction will be given, and the teacher will assume a certain amount of familiarity with the practice.', 'Yoga'),
('Pilates for Beginners', 'For students new to the Pilates Method, this class focuses on the breath, proper form, and the basic ten Pilates mat exercises. Time is spent clearly explaining the various exercises and movements to build a strong foundation in the Pilates Method.', 'Pilates'),
('Pilates for Intermediate', 'Intermediate Mat is for the experienced Pilates students who have mastered skills taught in previous classes. The student is further challenged in the mind body connection and the movements are more complex and demanding. The class moves at a quicker tempo than lower level classes.', 'Pilates'),
('Pilates for Advanced', 'This class is for the experienced Pilates student who have mastered skills taught at the Intermediate class level. The class is challenging and fast paced and participants must have substantial strength in the deep core muscles in order to participate successfully.', 'Pilates');

-- --------------------------------------------------------

--
-- Struttura della tabella `courses_schedule`
--

CREATE TABLE IF NOT EXISTS `courses_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) NOT NULL,
  `day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') NOT NULL,
  `start_time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dump dei dati per la tabella `courses_schedule`
--

INSERT INTO `courses_schedule` (`id`, `course_name`, `day`, `start_time`) VALUES
(1, 'Pilates for Intermediate', 'Monday', '09:00'),
(2, 'Pilates for Intermediate', 'Monday', '11:00'),
(3, 'Pilates for Intermediate', 'Monday', '16:30'),
(4, 'Pilates for Intermediate', 'Monday', '18:00'),
(5, 'Pilates for Intermediate', 'Tuesday', '09:00'),
(6, 'Pilates for Intermediate', 'Tuesday', '11:00'),
(7, 'Pilates for Intermediate', 'Tuesday', '16:00'),
(8, 'Pilates for Intermediate', 'Tuesday', '18:00'),
(9, 'Pilates for Intermediate', 'Wednesday', '08:30'),
(10, 'Pilates for Intermediate', 'Wednesday', '11:00'),
(11, 'Pilates for Intermediate', 'Wednesday', '16:00'),
(12, 'Pilates for Intermediate', 'Wednesday', '18:00'),
(13, 'Pilates for Intermediate', 'Thursday', '08:30'),
(14, 'Pilates for Intermediate', 'Thursday', '12:00'),
(15, 'Pilates for Intermediate', 'Thursday', '16:00'),
(16, 'Pilates for Intermediate', 'Thursday', '18:00'),
(17, 'Pilates for Intermediate', 'Friday', '08:30'),
(18, 'Pilates for Intermediate', 'Friday', '11:15'),
(19, 'Pilates for Intermediate', 'Friday', '16:00'),
(20, 'Pilates for Intermediate', 'Friday', '18:30'),
(21, 'Pilates for Intermediate', 'Saturday', '09:30'),
(22, 'Pilates for Intermediate', 'Saturday', '11:00'),
(23, 'Pilates for Intermediate', 'Saturday', '15:40'),
(24, 'Pilates for Intermediate', 'Saturday', '19:00'),
(25, 'Yoga for Beginners', 'Monday', '08:30'),
(26, 'Yoga for Beginners', 'Monday', '15:00'),
(27, 'Yoga for Beginners', 'Monday', '16:30'),
(28, 'Yoga for Beginners', 'Monday', '18:30'),
(29, 'Yoga for Beginners', 'Tuesday', '08:30'),
(30, 'Yoga for Beginners', 'Tuesday', '15:00'),
(31, 'Yoga for Beginners', 'Tuesday', '17:00'),
(32, 'Yoga for Beginners', 'Tuesday', '18:30'),
(33, 'Yoga for Beginners', 'Wednesday', '08:30'),
(34, 'Yoga for Beginners', 'Wednesday', '15:00'),
(35, 'Yoga for Beginners', 'Wednesday', '17:00'),
(36, 'Yoga for Beginners', 'Wednesday', '18:30'),
(37, 'Yoga for Beginners', 'Thursday', '08:30'),
(38, 'Yoga for Beginners', 'Thursday', '15:00'),
(39, 'Yoga for Beginners', 'Thursday', '17:00'),
(40, 'Yoga for Beginners', 'Thursday', '18:30'),
(41, 'Yoga for Beginners', 'Friday', '08:30'),
(42, 'Yoga for Beginners', 'Friday', '16:00'),
(43, 'Yoga for Beginners', 'Friday', '17:15'),
(44, 'Yoga for Beginners', 'Friday', '18:30'),
(45, 'Yoga for Beginners', 'Saturday', '09:30'),
(46, 'Yoga for Beginners', 'Saturday', '11:00'),
(47, 'Yoga for Beginners', 'Saturday', '15:00'),
(48, 'Yoga for Beginners', 'Saturday', '19:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `course_categories`
--

CREATE TABLE IF NOT EXISTS `course_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `main_photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `course_categories`
--

INSERT INTO `course_categories` (`id`, `name`, `main_photo`) VALUES
(1, 'Yoga', 'img/yoga.jpg'),
(2, 'Pilates', 'img/pilates.jpg'),
(3, 'Aerobics', 'img/aerobics.jpg'),
(4, 'Spinning', 'img/spinning.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `instructors`
--

CREATE TABLE IF NOT EXISTS `instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `main_photo` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `surname`, `main_photo`, `bio`) VALUES
(1, 'Audra', 'Fuller', 'img/instrs/fuller_main.jpg', '<p><strong>Certified Personal Trainer</strong> specializing in Advanced Individual programs since 1986.&nbsp; Former WA &amp; OR <strong>bodybuilding show judge</strong> and <strong>trainer of competitive bodybuilders</strong>&nbsp; all levels (from first timers to Olympic competitors); long term training of <strong>athletes for specific sports</strong>; designed and <strong>ran full rehab</strong> and <strong>personal training facility</strong> for <strong>injury recovery and prevention</strong>; worked for several chiropractors and physical therapists on <strong>rehab of athletes</strong>; ran <strong>fitness center for Elderly Adults</strong>; <strong>managed a country club</strong> fitness center and specialized in <strong>golf training for 4 yrs</strong>; trained <strong>clients in either their homes</strong> or in home-gym; <strong>corporate fitness and wellness</strong> at several businesses (saves money on their insurance besides the fitness benefit); currently <strong>designing a specified law enforcement fitness program</strong> for testing candidates and current officers with their agencies.</p><br/>\r\n<p>In addition <strong>I specialize in Internal Wellness via nutrition</strong>. I have worked with a vast amount of clients who <em>were</em> dealing with diabetes, hypertension, IBS, hormones and various other health issues.&nbsp; &nbsp;</p>'),
(2, 'Bryan', 'Mack', 'img/instrs/mack_main.jpg', '<p>Graduated from CWU Summer 2013. CSCS certification by NSCA. Recent Alumni of CWU now working as the Sprints coach for CWU Track. My areas of experience lie in the development of athletes at the collegiate and high school level, but I love to work with all ages and experience levels! In training, I am a huge proponent of the mental game (we win the day before we ever touch the first weight!) When I''m not coaching track or working at the gym, my days consist of training for USAs, reading, and drawing.</p>\r\n<p><strong>Certifications:</strong><br/>\r\nCertified Personal Trainer<br/>\r\nGroup Fitness Instructor<br/>\r\nCPR, AED &amp; First Aid Certified</p>\r\n<p><strong>Education:</strong><br/>\r\nAFAA, Aerobic s &amp; Fitness Association of America, Sherman Oaks CA<br/>\r\n<strong>Specialties:</strong><br/>\r\nPersonal Training (Weight Lifting/ Resistance Training)<br/>\r\nCircuit Training (Individual &amp; Group)<br/>\r\nFunctional Training (FT)<br/>\r\nCore Strengthening<br/>\r\nHIT (High Intensity Training) &amp; HIIT (High Intensity Interval Training)<br/>\r\nGroup Exercise: Boot Camp, Body Sculpting &amp; Cycling<br/>\r\nRunning Coach<br/>\r\n</p>');

-- --------------------------------------------------------

--
-- Struttura della tabella `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `location`
--

INSERT INTO `location` (`id`, `latitude`, `longitude`, `address`, `description`) VALUES
(1, '44.91357480', '8.60591930', '<b>Big Gym</b><br/>Spalto Borgoglio 65, 15121<br/>Alessandria, AL, Italy', '<h5>Reaching the gym is simple beacuse Spalto Borgoglio belongs to the bypass outskirts of Alessandria:</h5>\r\n<h4>By Train</h4>\r\n<p>Exiting from the station, you can reach the public garden crossing the road, then you continue left passing 2 refreshment stands and then straight along Corso Felice Cavalloti, then turn left in Via Pistoia. At the end of the street turn right and then continue for 20 meters, we are inside the courtyard.</p>\r\n<h4>By Car</h4>\r\n<p>After crossing the river Bormida and then the Napoleone''s tree from Tortona-Milano, you get to the intersection entering the city with the McDonald''s on the left. From here you can reach the gym either turning right or left. In the first case crossing the stadium, then the Cittadella bridge now closed, and after 500 meters you can see us on the left. In the latter case keep going straight crossing 3 semaphores and then the railway station on the left, again crossing another semaphore keeping the left, you get to a new roundabout while passing the big red building of scientific high scool, we are 50 meters just after that.</p>');

-- --------------------------------------------------------

--
-- Struttura della tabella `teaches`
--

CREATE TABLE IF NOT EXISTS `teaches` (
  `instr_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_level` enum('principiante','intermedio','avanzato') NOT NULL,
  PRIMARY KEY (`instr_id`,`course_name`,`course_level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `teaches`
--

INSERT INTO `teaches` (`instr_id`, `course_name`, `course_level`) VALUES
(1, 'Spinning for Beginners', 'principiante'),
(1, 'Yoga for Beginners', 'principiante'),
(2, 'Pilates for Intermediate', 'intermedio'),
(2, 'Yoga for Advanced', 'avanzato');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
