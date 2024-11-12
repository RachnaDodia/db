CREATE TABLE IF NOT EXISTS rbl_table (           
  message varchar(255) UNIQUE NOT NULL         
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8;         
  INSERT IGNORE INTO rbl_table(message) VALUES('Sample Data inserted');
  INSERT IGNORE INTO rbl_table(message) VALUES('For RBL Demo');         
  INSERT IGNORE INTO rbl_table(message) VALUES('sample Data ends')
