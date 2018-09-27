SELECT Проект, MAX(Сумма) AS Стоимость FROM
  (SELECT  project_name AS Проект, SUM(salary) AS Сумма FROM
    (SELECT projects.project_name, developers.salary FROM project_developers AS pd
      INNER JOIN projects
        ON projects.id=pd.project_id
      INNER JOIN developers
        ON developers.id=pd.developer_id) AS res_sum
  GROUP BY project_name) AS max;