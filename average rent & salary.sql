USE term;
SELECT
    l.state,
    AVG(r.price) AS avg_room_price,
    AVG(j.med_salary) AS avg_med_salary
FROM
    Location l
JOIN
    Job j ON l.id = j.location_id
JOIN
    List li ON l.id = li.location_id
JOIN
    Room r ON li.room_id = r.room_id
WHERE
    r.current_flag = 'Y'
    AND j.med_salary IS NOT NULL
GROUP BY
    l.state
ORDER BY
    avg_med_salary DESC, avg_room_price ASC;
