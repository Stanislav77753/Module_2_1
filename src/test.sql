UPDATE developers
  INNER JOIN (SELECT only_id.resID FROM (SELECT all_id.ID AS resID FROM
    (SELECT d.developer_id AS ID, count(*) AS Numbers FROM developer_skills d
    WHERE d.skill_id =(SELECT skill_id FROM skills
    WHERE skill_name='Java') OR d.skill_id = (SELECT skill_id FROM skills
    WHERE skill_name='C#') GROUP BY d.developer_id) AS all_id
  WHERE all_id.Numbers = 2)AS only_id) AS result
SET salary = 300000
WHERE developers.developer_id = result.resID;




