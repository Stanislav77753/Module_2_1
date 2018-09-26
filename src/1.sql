ALTER TABLE developers
  ADD COLUMN salary INT NOT NULL;

UPDATE developers
  INNER JOIN (SELECT only_id.resID FROM (SELECT all_id.ID AS resID FROM
    (SELECT d.developer_id AS ID, count(*) AS Numbers FROM developer_skills d
    WHERE d.skill_id =(SELECT skill_id FROM skills
    WHERE skill_name='Kotlin') OR d.skill_id = (SELECT skill_id FROM skills
    WHERE skill_name='Java') GROUP BY d.developer_id) AS all_id
  WHERE all_id.Numbers = 2)AS only_id) AS result
SET salary = 200000
WHERE developers.developer_id = result.resID;

UPDATE developers
  INNER JOIN (SELECT only_id.resID FROM (SELECT all_id.ID AS resID FROM
    (SELECT d.developer_id AS ID, count(*) AS Numbers FROM developer_skills d
    WHERE d.skill_id =(SELECT skill_id FROM skills
    WHERE skill_name='Kotlin') OR d.skill_id = (SELECT skill_id FROM skills
    WHERE skill_name='C#') GROUP BY d.developer_id) AS all_id
  WHERE all_id.Numbers = 2)AS only_id) AS result
SET salary = 180000
WHERE developers.developer_id = result.resID;

UPDATE developers
  INNER JOIN (SELECT only_id.resID FROM (SELECT all_id.ID AS resID FROM
    (SELECT d.developer_id AS ID, count(*) AS Numbers FROM developer_skills d
    WHERE d.skill_id =(SELECT skill_id FROM skills
    WHERE skill_name='Java') OR d.skill_id = (SELECT skill_id FROM skills
    WHERE skill_name='Java Script') GROUP BY d.developer_id) AS all_id
  WHERE all_id.Numbers = 2)AS only_id) AS result
SET salary = 170000
WHERE developers.developer_id = result.resID;

UPDATE developers
  INNER JOIN (SELECT only_id.resID FROM (SELECT all_id.ID AS resID FROM
    (SELECT d.developer_id AS ID, count(*) AS Numbers FROM developer_skills d
    WHERE d.skill_id =(SELECT skill_id FROM skills
    WHERE skill_name='C++') OR d.skill_id = (SELECT skill_id FROM skills
    WHERE skill_name='C#') OR d.skill_id = (SELECT skill_id FROM skills
    WHERE skill_name='Java') GROUP BY d.developer_id) AS all_id
  WHERE all_id.Numbers = 3)AS only_id) AS result
SET salary = 250000
WHERE developers.developer_id = result.resID;

UPDATE developers
  INNER JOIN (SELECT only_id.resID FROM (SELECT all_id.ID AS resID FROM
    (SELECT d.developer_id AS ID, count(*) AS Numbers FROM developer_skills d
    WHERE d.skill_id =(SELECT skill_id FROM skills
    WHERE skill_name='Java') OR d.skill_id = (SELECT skill_id FROM skills
    WHERE skill_name='C#') GROUP BY d.developer_id) AS all_id
  WHERE all_id.Numbers = 2)AS only_id) AS result
SET salary = 185000
WHERE developers.developer_id = result.resID;



