-- Script Lists all bands with Glam rock AS their main style 
-- list is ranked by their longevity

SELECT  band_name,(ifnull(split,2020) - ifnull(formed,0)) lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC
