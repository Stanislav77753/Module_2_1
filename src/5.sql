/*SELECT res1.Компания, customer_id AS Клиент, res1.Проект, MIN(res1.Цена) FROM customers AS cus
INNER JOIN (SELECT cp.company_id AS Компания, cp.project_id AS Проект, projects.cost AS Цена FROM company_projects AS cp
    INNER JOIN projects
      ON cp.project_id = projects.project_id) AS res1
ON cus.project_id = res1.Проект
GROUP BY res1.Компания;


SELECT res1.Компания, res1.Клиент, res1.Проект, MIN(res1.Цена) FROM
  (SELECT cp.company_id AS Компания,cus_p.customer_id AS Клиент, cp.project_id AS Проект, projects.cost AS Цена FROM company_projects AS cp
    INNER JOIN customer_projects AS cus_p
      ON cp.project_id = cus_p.project_id
    INNER JOIN projects
      ON cp.project_id = projects.project_id) AS res1
GROUP BY res1.Компания;

SELECT all_res.Компания, all_res.Клиент, all_res.Проект, all_res.PRICE FROM (
  SELECT res1.Компания, res1.Клиент, res1.Проект, res1.Цена AS PRICE FROM
    (SELECT cp.company_id AS Компания,cus_p.customer_id AS Клиент, cp.project_id AS Проект, projects.cost AS Цена FROM company_projects AS cp
      INNER JOIN customer_projects AS cus_p
        ON cp.project_id = cus_p.project_id
      INNER JOIN projects
        ON cp.project_id = projects.project_id) AS res1)AS all_res
INNER JOIN (SELECT MIN(res1.Цена) AS PRICE FROM
  (SELECT projects.cost AS Цена, cp.company_id AS iii FROM company_projects AS cp
    INNER JOIN customer_projects AS cus_p
      ON cp.project_id = cus_p.project_id
    INNER JOIN projects
      ON cp.project_id = projects.project_id) AS res1
GROUP BY iii) AS res_price
ON all_res.PRICE = res_price.PRICE
GROUP BY all_res.Компания;*/

SELECT c.company_name, cs.customer_name, p.project_name, res.PRICE FROM companies c, customers cs, projects p,
    (SELECT all_res.Компания, all_res.Клиент, all_res.Проект, all_res.PRICE FROM (SELECT res1.Компания, res1.Клиент, res1.Проект, res1.Цена AS PRICE FROM
      (SELECT cp.company_id AS Компания,cus_p.customer_id AS Клиент, cp.project_id AS Проект, projects.cost AS Цена FROM company_projects AS cp
        INNER JOIN customer_projects AS cus_p
          ON cp.project_id = cus_p.project_id
        INNER JOIN projects
          ON cp.project_id = projects.project_id) AS res1)AS all_res
  INNER JOIN (SELECT MIN(res1.Цена) AS PRICE FROM
    (SELECT projects.cost AS Цена, cp.company_id AS iii FROM company_projects AS cp
      INNER JOIN customer_projects AS cus_p
        ON cp.project_id = cus_p.project_id
      INNER JOIN projects
        ON cp.project_id = projects.project_id) AS res1
  GROUP BY iii) AS res_price
    ON all_res.PRICE = res_price.PRICE
GROUP BY all_res.Компания) as res
WHERE(c.company_id = res.Компания AND cs.customer_id=res.Клиент AND p.project_id = res.Проект);








