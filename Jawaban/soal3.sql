SELECT 
    CONCAT(w.first_name, ' ', w.last_name) AS name,
    d.division,
    t.title as position,
    s.status
FROM worker w
JOIN division d ON w.division_id = d.division_id
JOIN title t ON w.title_id = t.title_id
JOIN status s ON w.status_id = s.status_ref_id
WHERE 
    t.title = 'Staff'
    AND s.status = 'PKWT'
    AND d.division <> 'HR';
