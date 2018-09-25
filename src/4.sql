ALTER TABLE projects
ADD COLUMN cost INT NOT NULL;

UPDATE projects
INNER JOIN (SELECT  project_id AS ID, project_name AS Проект, SUM(salary) AS Сумма FROM
    (SELECT projects.project_id,projects.project_name, developers.salary FROM developer_projects
      INNER JOIN projects
        ON projects.project_id=developer_projects.project_id
      INNER JOIN developers
        ON developers.developer_id=developer_projects.developer_id) AS res_sum
  GROUP BY project_id) AS project_costs
  ON projects.project_id = project_costs.ID
    SET projects.cost = project_costs.Сумма
WHERE projects.project_id = project_costs.ID;