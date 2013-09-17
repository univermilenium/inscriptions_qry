SELECT
    a.ticket_id, 
    a.email as user_email,
    CONCAT(c.firstname, ' ', c.lastname) as fullname,    
    a.created,
    a.closed,
    a.status
FROM
    ost_ticket a,
    ost_ticket_response b,
    ost_staff c
WHERE
	a.ticket_id = b.ticket_id AND
	b.staff_id = c.staff_id	  AND
	a.created > '2013-09-14 00:00:00'
ORDER BY 
	a.created