select concat(max(salary*months), concat(' ', count(*)))
from Employee
where salary*months = (
    select max(salary*months)
    from Employee)

