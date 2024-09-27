Select Client.name as 'Client Name', SUM(Project.value) as 'Project Value'
from Client
join Project using (client_id)
group by Client.id
order by SUM(Project.value) DESC LIMIT 1;