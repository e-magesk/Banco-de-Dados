select ceil(avg(salary) - avg(replace(salary, '0' ,''))) as QTDE_ERRO
from Employee

