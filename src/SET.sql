USE practice

--All unique locations
SELECT Location  FROM PlasticWaste
UNION
SELECT Location FROM PollutionCleanup

--All locations including duplicates
SELECT Location  FROM PlasticWaste
UNION ALL
SELECT Location FROM PollutionCleanup

--Locations where plastic waste exists AND cleanup happened
SELECT Location  FROM PlasticWaste
INTERSECT
SELECT Location FROM PollutionCleanup


SELECT Location FROM PlasticWaste
EXCEPT
SELECT Location FROM PollutionCleanup


SELECT * FROM PlasticWaste
SELECT * FROM PollutionCleanup

SELECT Location FROM PollutionCleanup
EXCEPT
SELECT Location FROM PlasticWaste

--Show all locations where plastic bottles were found OR cleanup happened
SELECT Location  FROM PlasticWaste
WHERE PlasticType = 'Plastic Bottle'
UNION
SELECT Location 
FROM PollutionCleanup


SELECT Location , COUNT(*) AS count_
FROM 
(
SELECT Location FROM PlasticWaste
UNION ALL
SELECT Location FROM PollutionCleanup)
AS AllLocations
GROUP BY Location

--Find locations with High severity but NO cleanup
SELECT Location FROM PlasticWaste
WHERE SeverityLevel = 'High'
EXCEPT
SELECT Location FROM PollutionCleanup


