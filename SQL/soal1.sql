SELECT 
    d.division_id,
    d.division,
    COUNT(w.worker_id) AS jumlah_workers
FROM division d
LEFT JOIN worker w 
    ON d.division_id = w.division_id
GROUP BY 
    d.division_id, d.division