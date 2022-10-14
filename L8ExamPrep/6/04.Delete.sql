delete clients from clients
left join courses
on clients.id = courses.client_id
where courses.id is null
