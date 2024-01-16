SELECT organizadores.Nombre, SUM(conferencias.PVP) AS TOTAL FROM conferencias
JOIN organizadores ON conferencias.OrganizadorID = organizadores.OrganizadorID
GROUP BY organizadores.OrganizadorID
ORDER BY TOTAL DESC
LIMIT 1; 