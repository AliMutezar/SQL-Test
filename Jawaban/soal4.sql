SELECT 
    w.worker_id AS atasan_id,
    CONCAT(w.first_name, ' ', w.last_name) AS nama_atasan,
    sub.worker_id AS bawahan_id,
    CONCAT(sub.first_name, ' ', sub.last_name) AS nama_bahawan
FROM worker AS w
JOIN worker AS sub ON sub.superior_id = w.worker_id
ORDER BY 
    w.first_name ASC,
    w.last_name ASC;
