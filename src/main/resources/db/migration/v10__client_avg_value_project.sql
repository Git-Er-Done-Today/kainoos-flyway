Select c.name as 'Client Name', AVG(p.value) as 'Average Project Value'
from Client c
join Project as p using (client_id)
group by c.name
order by AVG(p.value);