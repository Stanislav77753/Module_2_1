SELECT c.company_name AS IT_COMOANY, cs.customer_name AS CUSTOMER_MIN_PROFIT, p.project_name AS PROJECT,
  res.PRICE AS COST_OF_PROJECT FROM companies c, customers cs, projects p,
    (SELECT all_res.Компания, all_res.Клиент, all_res.Проект, all_res.PRICE FROM
      (SELECT res1.Компания, res1.Клиент, res1.Проект, res1.Цена AS PRICE FROM
        (SELECT cp.company_id AS Компания,cus_p.customer_id AS Клиент, cp.project_id AS Проект,
           projects.cost AS Цена FROM company_projects AS cp
          INNER JOIN customer_projects AS cus_p
            ON cp.project_id = cus_p.project_id
          INNER JOIN projects
            ON cp.project_id = projects.id) AS res1)AS all_res
      INNER JOIN (SELECT MIN(res1.Цена) AS PRICE FROM
      (SELECT projects.cost AS Цена, cp.company_id AS ID_Company FROM company_projects AS cp
        INNER JOIN customer_projects AS cus_p
          ON cp.project_id = cus_p.project_id
        INNER JOIN projects
          ON cp.project_id = projects.id) AS res1
    GROUP BY ID_Company) AS res_price
        ON all_res.PRICE = res_price.PRICE
    GROUP BY all_res.Компания) as res
WHERE(c.id = res.Компания AND cs.id=res.Клиент AND p.id = res.Проект)
ORDER BY c.id;








