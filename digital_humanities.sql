-- Query 1 How modern are the artworks?
select date, count(*) as artwork_count
from cleaned_artworks
where date is not null
group by date
order by date desc;


-- query 2 Which artists are featured the most?
SELECT 
    Artist,
    COUNT(*) AS artwork_count
FROM cleaned_artworks
WHERE Artist IS NOT NULL
GROUP BY Artist
ORDER BY artwork_count DESC
LIMIT 10;


-- query 3 Are there any trends in the dates of acquisition?
SELECT 
    YEAR(DateAcquired) AS YearAcquired,
    COUNT(*) AS acquisitions
FROM cleaned_artworks
GROUP BY YearAcquired
ORDER BY YearAcquired;


-- query 4 What types of artwork are most common?
SELECT 
    Classification,
    COUNT(*) AS count
FROM cleaned_artworks
WHERE Classification IS NOT NULL
GROUP BY Classification
ORDER BY count DESC
LIMIT 10;



-- query 5 "Gender distribution of featured artists"
-- This helps explore diversity and representation in the museum's collection.
SELECT 
    Gender,
    COUNT(*) AS artist_count
FROM cleaned_artists
WHERE Gender IS NOT NULL
GROUP BY Gender
ORDER BY artist_count DESC;
