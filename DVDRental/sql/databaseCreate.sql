CREATE TABLE IF NOT EXISTS `customer_info` (
  `custid` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) DEFAULT '',
  `lastName` varchar(30) DEFAULT '',
  'memberType' int(3) default '0',
  'subscriptionDate' date DEFAULT NULL,
  'status' BOOLEAN DEFAULT true,
  PRIMARY KEY (`custid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS 'membership_types' (
	'membership_id' int(3) NOT NULL AUTO_INCREMENT,
	'name' varchar(30) NOT NULL default '',
	'description' varchar default '',
	'amount' FLOAT NOT NULL default '0'
	'status' BOOLEAN default true,
	PRIMARY KEY ('membership_id')
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `movie_director` (
  `movie_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,director_id),
  foreign key (movie_id) references movie_info(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
  foreign key (director_id) references director(id) ON UPDATE CASCADE ON DELETE CASCADE
  ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
  
 CREATE TABLE IF NOT EXISTS `movie_singer` (
  `movie_id` int(11) NOT NULL,
  `singer_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,singer_id),
  foreign key (movie_id) references movie_info(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
  foreign key (singer_id) references singer(id) ON UPDATE CASCADE ON DELETE CASCADE
  ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
  
  CREATE TABLE IF NOT EXISTS `movie_language` (
  `language_id` int(4) NOT NULL AUTO_INCREMENT,
  `language` varchar(30) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

  CREATE TABLE IF NOT EXISTS `producer` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `movie_producer` (
  `movie_id` int(11) NOT NULL,
  `producer_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,producer_id),
  foreign key (movie_id) references movie_info(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
  foreign key (producer_id) references producer(id) ON UPDATE CASCADE ON DELETE CASCADE
  ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
  
   CREATE TABLE IF NOT EXISTS `sound` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sound` varchar(30) NOT NULL,
  `description` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;
  
  CREATE TABLE IF NOT EXISTS `movie_sound` (
  `movie_id` int(11) NOT NULL,
  `sound_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,sound_id),
  foreign key (movie_id) references movie_info(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
  foreign key (sound_id) references sound(id) ON UPDATE CASCADE ON DELETE CASCADE
  ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
  
  select * from sound
  
  
  commit
  
  