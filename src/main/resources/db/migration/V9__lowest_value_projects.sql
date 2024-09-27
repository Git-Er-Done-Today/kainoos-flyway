Select c.name as 'Client Name', SUM(p.value) as 'Project Value'
from Client c
join Project as p using (client_id)
group by c.name
order by SUM(p.value) ASC LIMIT 1;