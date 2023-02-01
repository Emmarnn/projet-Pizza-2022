create view v_pizzas as
select numPizza,nomPizza,numGenre
from pizzas
order by nomPizza