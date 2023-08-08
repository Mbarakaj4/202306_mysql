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

SELECT `countries`.`name`, `countries`.`government_form`, `countries`.`life_expectancy`
FROM `countries`
WHERE `countries`.`government_form` = 'Constitutional Monarchy' 
AND `countries`.`life_expectancy` > 75;

