-- code Review 9 Query Sheet

-- finding people with name sarah
SELECT COUNT(first_name) 
FROM `address` 
WHERE (first_name='Sarah')

-- finding packages sent between 1980 and 1999
SELECT date_sent 
FROM `package` 
WHERE package.date_sent 
BETWEEN'1980-01-01'AND '1999-01-01'

-- finding packages received between 1986 and current date
SELECT date_recieved 
FROM `package` 
WHERE package.date_recieved>'1986-01-01'
AND package.date_recieved<CURRENT_DATE()

-- finding count of last name that starts with "s"
SELECT COUNT(last_name) 
FROM `address` 
WHERE last_name LIKE 'S%'

-- to find a package sent on 2020-08-13
SELECT sender.name, package.date_sent 
FROM sender 
LEFT JOIN package
ON sender.packageId = package.packageId 
WHERE package.date_sent = '2020-08-13'

-- to find who sent packages between 1989-01-01 and 2019-01-01
SELECT package.date_sent, sender.name
FROM `package` 
LEFT JOIN sender 
ON sender.senderId = package.packageId 
WHERE package.date_sent>'1980-01-01' AND package.date_sent< '2020-01-01'

-- How many packages were sent from Paris(6)
SELECT COUNT(startId) FROM package WHERE (startId='6')












