

SELECT cp.company_id AS Компания, cp.project_id AS Проект, projects.cost AS Цена FROM company_projects AS cp
INNER JOIN projects
ON cp.project_id = projects.project_id;







