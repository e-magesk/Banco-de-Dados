with chall as (select "submission_id", s."hacker_id", s.score
               from "Challenges" as c, "Submissions" as s, "Difficulty" as d
               where c."challenge_id" = s."challenge_id" and c."difficulty_level" = d."difficulty_level" and d.score = s.score), 
quantidade as (select "hacker_id", count("hacker_id") as qtd
                   from chall
                   group by "hacker_id"),
principal as (select distinct name, q."hacker_id", qtd
              from quantidade as q, "Hackers" as d
              where q."hacker_id" = d."hacker_id" and qtd > 1
              order by qtd desc, "hacker_id" asc)
select "hacker_id", name
from principal
