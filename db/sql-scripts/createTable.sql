CREATE TABLE IF NOT EXISTS `user` (
    `name` varchar(30) NOT NULL,
    `uname` varchar(30) NOT NULL UNIQUE,
    `email` varchar(50) NOT NULL UNIQUE,
    `collegeID` varchar(10) NOT NULL PRIMARY KEY,
    `password` varchar(20) NOT NULL,
    `gender` tinyint(1) DEFAULT 0,
    `dob` varchar(10) DEFAULT 0,
    `avatar` varchar(200) NOT NULL DEFAULT "default/avatar-anonymous.png",
    `secQNID` varchar(5) NOT NULL,
    `secAns` varchar(30) NOT NULL,
    `enabled` tinyint(1) DEFAULT 0,
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `edit_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `auth` (
    `email` varchar(50) NOT NULL PRIMARY KEY,
    `session` char(64)  NOT NULL UNIQUE,
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `posts` (
    `postid` int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `post_link` varchar(100) NOT NULL,
    `likes` int DEFAULT 0,
    `views` int DEFAULT 0,
    `shares` int DEFAULT 0,
    `edit` tinyint(1) DEFAULT 0,
    `content` json,
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `edit_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE posts AUTO_INCREMENT=100;

CREATE TABLE IF NOT EXISTS `details` (
    `collegeID` varchar(10) NOT NULL,
    `avatar` varchar(200) DEFAULT NULL,
    `summary` json,
    `skills` json,
    `contacts` json,
    `education` json,
    `accomplishments` json,
    `interests` json,
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `edit_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `securityQNS` (
    `qnID` varchar(5) NOT NULL,
    `category` varchar(15) NOT NULL,
    `qn` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO securityQNS (qnID, category, qn) values 
    ("sc1",     "Childhood",    "What was your childhood nickname?"),
    ("sc2",     "Childhood",    "What is the name of your favorite childhood friend?"),
    ("sfam1",   "Family",       "In what city or town did your mother and father meet?"),
    ("sfam2",   "Family",       "In what city or town does your nearest sibling live?"),
    ("sfav1",   "Favorites",    "What is your favorite team?"),
    ("sfav2",   "Favorites",    "What is your favorite movie?"),
    ("se1",     "Education",    "What school did you attend for sixth grade?"),
    ("se2",     "Education",    "What is the last name of the teacher who gave you your first failing grade?"),
    ("sw1",     "Work",         "In what town was your first job?"),
    ("sw2",     "Work",         "What was the name of the company where you had your first job?");

CREATE TABLE IF NOT EXISTS `verify` (
    `collegeID` varchar(10) NOT NULL PRIMARY KEY,
    `verified` tinyint(1) NOT NULL DEFAULT 0,
    `otp` varchar(10) NOT NULL,
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `temp` (
    `collegeID` varchar(10) NOT NULL PRIMARY KEY,
    `name` varchar(30),
    `uname` varchar(30),
    `email` varchar(50),
    `password` varchar(20),
    `gender` tinyint(1) DEFAULT 0,
    `dob` varchar(10) DEFAULT 0,
    `avatar` varchar(200),
    `secQNID` varchar(5),
    `secAns` varchar(30),
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `edit_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;