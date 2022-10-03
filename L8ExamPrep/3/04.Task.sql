 DELETE m
 FROM countries m
          LEFT JOIN movies m2 on m.id = m2.country_id
 WHERE m2.country_id IS NULL;