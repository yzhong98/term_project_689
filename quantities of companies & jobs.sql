USE term;

SELECT
    l.State,
    CASE
        WHEN c.company_size < 4 THEN 'Small'
        WHEN c.company_size >= 4 THEN 'Large'
        ELSE 'Unknown'
    END AS company_size_category,
    COUNT(DISTINCT c.id) AS company_count,
    COUNT(j.job_description_id) AS job_count
FROM
    Company c
JOIN
    Location l ON c.id = l.Id
LEFT JOIN
    Job j ON c.id = j.company_id
GROUP BY
    l.State,
    CASE
        WHEN c.company_size < 4 THEN 'Small'
        WHEN c.company_size >= 4 THEN 'Large'
        ELSE 'Unknown'
    END
ORDER BY
    l.State, company_size_category;
