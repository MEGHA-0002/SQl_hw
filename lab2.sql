CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    signup_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    joined_on DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE agents (
    agent_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    joined_on DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE complaints (
    complaint_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    assigned_employee_id INT,
    assigned_agent_id INT,
    complaint_text TEXT NOT NULL,
    statuss ENUM('open', 'inprogress', 'completed', 'stuck', 'closed') DEFAULT 'open',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (assigned_employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (assigned_agent_id) REFERENCES agents(agent_id)
);
