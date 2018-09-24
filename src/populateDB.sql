/*INSERT INTO DEVELOPERS */
INSERT INTO developers VALUES (NULL, 'Popovich', 'Stas'), (NULL,'Popovich','Alina'),
(NULL, 'Popovich', 'Oleg'), (NULL,'Pasko','Evgenii');


/*INSERT INTO SKILLS */
INSERT INTO skills VALUES (NULL, 'Java'), (NULL,'Java Script'),
(NULL, 'C++'), (NULL,'Kotlin'), (NULL,'C#');


/*INSERT INTO DEVELOPER_SKILLS */
INSERT INTO developer_skills VALUES (
(SELECT developer_id FROM developers WHERE (lname = 'Popovich' AND name = 'Stas')),
(SELECT skill_id FROM skills WHERE skill_name = 'Java'));

INSERT INTO developer_skills VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Popovich' AND name = 'Stas')),
  (SELECT skill_id FROM skills WHERE skill_name = 'Kotlin'));

INSERT INTO developer_skills VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Popovich' AND name = 'Alina')),
  (SELECT skill_id FROM skills WHERE skill_name = 'Kotlin'));

INSERT INTO developer_skills VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Popovich' AND name = 'Oleg')),
  (SELECT skill_id FROM skills WHERE skill_name = 'Java Script'));


INSERT INTO developer_skills VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Popovich' AND name = 'Oleg')),
  (SELECT skill_id FROM skills WHERE skill_name = 'Java'));

INSERT INTO developer_skills VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Pasko' AND name = 'Evgenii')),
  (SELECT skill_id FROM skills WHERE skill_name = 'C++'));

INSERT INTO developer_skills VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Pasko' AND name = 'Evgenii')),
  (SELECT skill_id FROM skills WHERE skill_name = 'C#'));

INSERT INTO developer_skills VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Pasko' AND name = 'Evgenii')),
  (SELECT skill_id FROM skills WHERE skill_name = 'Java'));


/*INSERT INTO PROJECTS */
INSERT INTO projects VALUES (NULL, 'Project_1'), (NULL,'Project_2'),
  (NULL, 'Project_3'), (NULL,'Project_4'), (NULL,'Project_5'),
  (NULL, 'Project_6'), (NULL,'Project_7'), (NULL,'Project_8'),
  (NULL, 'Project_9'), (NULL,'Project_10'), (NULL,'Project_11');

/*INSERT INTO DEVELOPER_PROJECTS */
INSERT INTO developer_projects VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Popovich' AND name = 'Stas')),
  (SELECT project_id FROM projects WHERE project_name = 'Project_1'));

INSERT INTO developer_projects VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Popovich' AND name = 'Alina')),
  (SELECT project_id FROM projects WHERE project_name = 'Project_1'));

INSERT INTO developer_projects VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Popovich' AND name = 'Oleg')),
  (SELECT project_id FROM projects WHERE project_name = 'Project_2'));

INSERT INTO developer_projects VALUES (
  (SELECT developer_id FROM developers WHERE (lname = 'Pasko' AND name = 'Evgenii')),
  (SELECT project_id FROM projects WHERE project_name = 'Project_2'));


/*INSERT INTO COMPANIES */
INSERT INTO companies VALUES (NULL, 'Company_1'), (NULL,'Company_2'),
  (NULL, 'Company_3'), (NULL,'Company_4'), (NULL,'Company_5'),
  (NULL, 'Company_6'), (NULL,'Company_7'), (NULL,'Company_8'),
  (NULL, 'Company_9'), (NULL,'Company_10'), (NULL,'Company_11');


/*INSERT INTO COMPANY_PROJECTS */
INSERT INTO company_projects VALUES (
  (SELECT company_id FROM companies WHERE company_name = 'Company_1'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_1')),
  ((SELECT company_id FROM companies WHERE company_name = 'Company_1'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_2'));

INSERT INTO company_projects VALUES (
  (SELECT company_id FROM companies WHERE company_name = 'Company_2'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_3')),
  ((SELECT company_id FROM companies WHERE company_name = 'Company_2'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_4')),
  ((SELECT company_id FROM companies WHERE company_name = 'Company_2'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_5'));

INSERT INTO company_projects VALUES (
  (SELECT company_id FROM companies WHERE company_name = 'Company_3'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_6'));

INSERT INTO company_projects VALUES (
  (SELECT company_id FROM companies WHERE company_name = 'Company_4'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_7'));

INSERT INTO company_projects VALUES (
  (SELECT company_id FROM companies WHERE company_name = 'Company_5'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_8')),
  ((SELECT company_id FROM companies WHERE company_name = 'Company_5'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_9'));

INSERT INTO company_projects VALUES (
  (SELECT company_id FROM companies WHERE company_name = 'Company_6'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_10')),
  ((SELECT company_id FROM companies WHERE company_name = 'Company_6'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_11'));

/*INSERT INTO CUSTOMERS */
INSERT INTO customers VALUES (NULL, 'Customer_1'), (NULL,'Customer_2'),
  (NULL, 'Customer_3'), (NULL,'Customer_4'), (NULL,'Customer_5');

/*INSERT INTO CUSTOMER_PROJECTS */
INSERT INTO customer_projects VALUES (
  (SELECT customer_id FROM customers WHERE customer_name = 'Customer_1'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_1')),
  ((SELECT customer_id FROM customers WHERE customer_name = 'Customer_1'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_2'));

INSERT INTO customer_projects VALUES (
  (SELECT customer_id FROM customers WHERE customer_name = 'Customer_2'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_3')),
  ((SELECT customer_id FROM customers WHERE customer_name = 'Customer_2'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_4'));

INSERT INTO customer_projects VALUES (
  (SELECT customer_id FROM customers WHERE customer_name = 'Customer_3'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_5')),
  ((SELECT customer_id FROM customers WHERE customer_name = 'Customer_3'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_6'));

INSERT INTO customer_projects VALUES (
  (SELECT customer_id FROM customers WHERE customer_name = 'Customer_4'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_7')),
  ((SELECT customer_id FROM customers WHERE customer_name = 'Customer_4'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_8'));

INSERT INTO customer_projects VALUES (
  (SELECT customer_id FROM customers WHERE customer_name = 'Customer_5'),
  (SELECT project_id FROM projects WHERE project_name = 'Project_9')),
  ((SELECT customer_id FROM customers WHERE customer_name = 'Customer_5'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_10')),
  ((SELECT customer_id FROM customers WHERE customer_name = 'Customer_5'),
   (SELECT project_id FROM projects WHERE project_name = 'Project_11'));