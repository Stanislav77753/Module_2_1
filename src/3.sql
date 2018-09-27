SELECT SUM(Зарплата) AS 'Зарплата всех Java разработчиков' FROM (
  SELECT salary AS Зарплата FROM developers
    INNER JOIN (SELECT developer_id, skill_id FROM developer_skills
    WHERE skill_id =(SELECT id FROM skills
    WHERE skill_name ='Java')) as s_id
      ON s_id.developer_id = developers.id
)AS result;