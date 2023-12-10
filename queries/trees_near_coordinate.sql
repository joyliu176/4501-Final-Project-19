
SELECT t.tree_id, t.species, t.health, t.status, ST_AsText(t.geometry) as location
FROM trees t
WHERE ST_DWithin(
    t.geometry, 
    ST_GeomFromText('POINT(-73.96253174434912 40.80737875669467)', 4326),
    0.5 * 1609.34  -- 0.5 miles in meters
)
