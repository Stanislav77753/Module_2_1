/*SELECT c.company_name AS IT_COMOANY, cs.customer_name AS CUSTOMER_MIN_PROFIT, p.project_name AS PROJECT,
  all_res.PRICE AS COST_OF_PROJECT FROM companies c, customers cs, projects p,
    ((SELECT res1.Компания, res1.Проект, res1.Цена AS PRICE, res1.Count_developers FROM
        (SELECT cp.company_id AS Компания, cp.project_id AS Проект,
           projects.cost AS Цена, COUNT(developers.id) AS Count_developers FROM company_projects AS cp
          INNER JOIN projects
            ON cp.project_id = projects.id
          INNER JOIN project_developers AS pd
            ON cp.project_id = pd.project_id
          INNER JOIN developers
            ON pd.developer_id = developers.id
            GROUP BY cp.project_id) AS res1) AS all_res
            INNER JOIN (SELECT MIN(res1.Цена) AS PRICE FROM
      (SELECT projects.cost AS Цена, cp.company_id AS ID_Company FROM company_projects AS cp
        INNER JOIN customer_projects AS cus_p
          ON cp.project_id = cus_p.project_id
        INNER JOIN projects
          ON cp.project_id = projects.id) AS res1
    GROUP BY ID_Company) AS res_price
        ON all_res.PRICE = res_price.PRICE)
WHERE(c.id = all_res.Компания  AND p.id = all_res.Проект)
;

SELECT all_res.Компания, all_res.Проект, all_res.PRICE, all_res.Count_developers FROM ((SELECT res1.Компания, res1.Проект, res1.Цена AS PRICE, res1.Count_developers FROM
        (SELECT cp.company_id AS Компания, cp.project_id AS Проект,
           projects.cost AS Цена, COUNT(developers.id) AS Count_developers FROM company_projects AS cp
          INNER JOIN projects
            ON cp.project_id = projects.id
          INNER JOIN project_developers AS pd
            ON cp.project_id = pd.project_id
          INNER JOIN developers
            ON pd.developer_id = developers.id
            GROUP BY cp.project_id) AS res1) AS all_res
            INNER JOIN (SELECT MIN(res1.Цена) AS PRICE, ID_Company FROM
      (SELECT projects.cost AS Цена, cp.company_id AS ID_Company FROM company_projects AS cp
        INNER JOIN customer_projects AS cus_p
          ON cp.project_id = cus_p.project_id
        INNER JOIN projects
          ON cp.project_id = projects.id) AS res1
    GROUP BY ID_Company) AS res_price
        ON all_res.PRICE = res_price.PRICE) GROUP BY all_res.Компания;*/

SELECT all_res.Проект, all_res.PRICE / all_res.Count_developers AS MID_SALARY FROM
(((SELECT res1.Компания, res1.Проект, res1.Цена AS PRICE, res1.Count_developers FROM
        (SELECT cp.company_id AS Компания, cp.project_id AS Проект,
           projects.cost AS Цена, COUNT(developers.id) AS Count_developers FROM company_projects AS cp
          INNER JOIN projects
            ON cp.project_id = projects.id
          INNER JOIN project_developers AS pd
            ON cp.project_id = pd.project_id
          INNER JOIN developers
            ON pd.developer_id = developers.id
            GROUP BY cp.project_id) AS res1) AS all_res
            INNER JOIN (SELECT MIN(res1.Цена) AS PRICE FROM
      (SELECT projects.cost AS Цена, cp.company_id AS ID_Company FROM company_projects AS cp
        INNER JOIN customer_projects AS cus_p
          ON cp.project_id = cus_p.project_id
        INNER JOIN projects
          ON cp.project_id = projects.id) AS res1
    GROUP BY ID_Company) AS res_price
        ON all_res.PRICE = res_price.PRICE )) GROUP BY all_res.Компания;