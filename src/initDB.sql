CREATE DATABASE module_2_1_db;
USE module_2_1_db;

CREATE TABLE developers(
  developer_id INT AUTO_INCREMENT PRIMARY KEY,
  lname VARCHAR(50) NOT NULL,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE skills(
  skill_id INT AUTO_INCREMENT PRIMARY KEY,
  skill_name VARCHAR(50) NOT NULL
);


CREATE TABLE developer_skills(
  developer_id INT NOT NULL,
  skill_id INT NOT NULL,
  PRIMARY KEY (developer_id, skill_id),
  FOREIGN KEY (developer_id) REFERENCES developers (developer_id),
  FOREIGN KEY (skill_id) REFERENCES skills (skill_id)
);

CREATE TABLE projects(
  project_id INT AUTO_INCREMENT PRIMARY KEY,
  project_name VARCHAR(50) NOT NULL
);

CREATE TABLE developer_projects(
  developer_id INT NOT NULL,
  project_id INT NOT NULL,
  PRIMARY KEY (developer_id, project_id),
  FOREIGN KEY (developer_id) REFERENCES developers (developer_id),
  FOREIGN KEY (project_id) REFERENCES projects (project_id)
);

CREATE TABLE companies(
  company_id INT AUTO_INCREMENT PRIMARY KEY,
  company_name VARCHAR(50) NOT NULL);

CREATE TABLE company_projects(
  company_id INT NOT NULL,
  project_id INT NOT NULL,
  PRIMARY KEY (company_id, project_id),
  FOREIGN KEY (company_id) REFERENCES companies (company_id),
  FOREIGN KEY (project_id) REFERENCES projects (project_id)
);

CREATE TABLE customers(
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(50) NOT NULL
);

CREATE TABLE customer_projects(
  customer_id INT NOT NULL,
  project_id INT NOT NULL,
  PRIMARY KEY (customer_id, project_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY (project_id) REFERENCES projects (project_id)
);

