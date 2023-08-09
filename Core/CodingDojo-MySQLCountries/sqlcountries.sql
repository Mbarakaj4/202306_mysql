SELECT `name`, `language`,`percentage`
FROM `countries` JOIN `languages`
ON `countries`.`id` = `languages`.`country_id`
WHERE `language` = 'Slovene'
ORDER BY `percentage` DESC;

SELECT DISTINCT `cities`.`name`, `cities`.`population`, `country_id`
FROM `countries` JOIN `cities`
ON `countries`.`id` = `cities`.`country_id`
WHERE `cities`.`population` > 500000 AND `countries`.`name` = 'Mexico'
ORDER BY `cities`.`population` DESC;

SELECT `countries`.`name`, `languages`.`language`, `languages`.`percentage`
FROM `countries` JOIN `languages`
ON `countries`.`id` = `languages`.`country_id`
WHERE `languages`.`percentage` > 89
ORDER BY `languages`.`percentage` DESC;

SELECT `countries`.`name`, `countries`.`government_form`, `countries`.`life_expectancy`, `countries`.`capital`
FROM `countries`
WHERE `countries`.`government_form` = 'Constitutional Monarchy' 
AND `countries`.`life_expectancy` > 75 AND `countries`.`capital` > 200;

SELECT `name`, `surface_area`, `population`
FROM `countries`
WHERE `surface_area` < 501 AND `population` > 100000;

SELECT `countries`.`name` AS `country_name`, `cities`.`name` AS `city_name`, 
`cities`.`district`, `cities`.`population`
FROM `countries` JOIN `cities`
ON `countries`.`id` = `cities`.`country_id`
WHERE `cities`.`population` > 500000 AND `cities`.`district` = 'Buenos Aires';

SELECT `countries`.`region`, COUNT(`countries`.`name`) AS `countries`
FROM `countries`
GROUP BY `region`
ORDER BY `countries` DESC;

SELECT `countries`.`name`, COUNT(`cities`.`name`) AS `cities`
FROM `countries` JOIN `cities`
ON `countries`.`id` = `cities`.`country_id`
GROUP BY `countries`.`name`
ORDER BY `cities` DESC;