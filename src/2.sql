SELECT Проект, MAX(Сумма) AS Стоимость FROM
  (SELECT  project_name AS Проект, SUM(salary) AS Сумма FROM
    (SELECT projects.project_name, developers.salary FROM developer_projects
      INNER JOIN projects
        ON projects.project_id=developer_projects.project_id
      INNER JOIN developers
        ON developers.developer_id=developer_projects.developer_id) AS res_sum
  GROUP BY project_name) AS max;