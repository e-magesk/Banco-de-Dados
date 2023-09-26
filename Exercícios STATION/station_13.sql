select (select city
                 from (select city, char_length(city) as size
                       from STATION
                       order by size, city
                       limit 1) as T) as NOME_MENOR,
       (select city
                 from (select city, char_length(city) as size
                       from STATION
                       order by size desc, city asc
                       limit 1) as T) as NOME_MAIOR,
       (select char_length(city) as size
                      from STATION
                      order by size
                      limit 1) as TAM_MENOR,
       (select char_length(city) as size
                  from STATION
                  order by size desc
                  limit 1) as TAM_MAIOR
