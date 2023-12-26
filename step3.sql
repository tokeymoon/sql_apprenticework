SELECT 
    Program_Title, View_Count
FROM
    programs
ORDER BY View_Count DESC
LIMIT 3;

SELECT 
    p.Program_Title,
    e.season,
    e.Episode,
    e.Episode_Title,
    p.View_Count
FROM
    episodes e
        INNER JOIN
    programs p ON e.Episode_ID = p.Episode_ID
ORDER BY View_Count DESC
LIMIT 3;


SELECT
	p.Channels,
    e.Season,
    e.Episode,
    e.Episode_Title,
    e.Episode_Details,
    p.Release_Date,
    date_add(p.release_date, interval e.video_length minute) as end_time
FROM
    episodes e
        INNER JOIN
    programs p ON e.Episode_ID = p.Episode_ID
    where  date(release_date) = '2023-11-15';
    
SELECT 
    e.Season,
    e.Episode,
    e.Episode_Title,
    e.Episode_Details,
    p.Release_Date,
    DATE_ADD(p.release_date,
        INTERVAL e.video_length MINUTE) AS end_time
FROM
    episodes e
        INNER JOIN
    programs p ON e.Episode_ID = p.Episode_ID
WHERE
    p.Channels = 'Drama'
        AND (Release_Date BETWEEN '2023-11-10' AND '2023-11-16')
ORDER BY p.Release_Date ASC;
    
    