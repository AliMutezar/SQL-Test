SELECT 
    t.title_id,
    t.title,
    COUNT(w.worker_id) AS jumlah_workers
FROM title t
LEFT JOIN worker w 
    ON t.title_id = w.title_id
GROUP BY 
    t.title_id, t.title