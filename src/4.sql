ALTER TABLE projects
ADD COLUMN cost INT NOT NULL;

UPDATE projects
INNER JOIN (SELECT  p_id AS ID, SUM(salary) AS Сумма FROM
    (SELECT projects.id AS p_id, developers.salary FROM project_developers AS pd
      INNER JOIN projects
        ON projects.id=pd.project_id
      INNER JOIN developers
        ON developers.id=pd.developer_id) AS res_sum
  GROUP BY p_id) AS project_costs
  ON projects.id = project_costs.ID
    SET projects.cost = project_costs.Сумма
WHERE projects.id = project_costs.ID;