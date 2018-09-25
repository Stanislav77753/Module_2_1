SELECT SUM(Зарплата) AS 'Зарплата всех Java разработчиков' FROM (
  SELECT salary AS Зарплата FROM developers
    INNER JOIN (SELECT developer_id, skill_id FROM developer_skills
    WHERE skill_id =(SELECT skill_id FROM skills
    WHERE skill_name ='Java')) as dev_id
      ON dev_id.developer_id = developers.developer_id
)AS result;