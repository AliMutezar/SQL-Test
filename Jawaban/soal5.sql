SELECT  
    w.worker_id,
    CONCAT(w.first_name, ' ', w.last_name) AS worker_name,
    p.total_payment
FROM worker AS w
LEFT JOIN payment AS p 
    ON w.worker_id = p.worker_ref_id
WHERE NOT EXISTS (
    SELECT 1
    FROM payment p2
    WHERE p2.worker_ref_id = w.worker_id
      AND p2.last_payment_date BETWEEN '2024-10-25' AND '2024-10-28 23:59:59'
)
ORDER BY w.worker_id;