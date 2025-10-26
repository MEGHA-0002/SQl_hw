CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password_user VARCHAR(255) NOT NULL,
  signup_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE complaints(
  complaint_id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  complaint_text TEXT NOT NULL,
  complaint_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
 