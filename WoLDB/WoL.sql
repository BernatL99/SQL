SELECT jugadores.NombreUsuario, SUM(personajes.PuntosDesbloqueo) AS RPGASTADOS FROM jugadores
JOIN jugadorespersonajes ON jugadores.ID = jugadorespersonajes.JugadorID
JOIN personajes ON jugadorespersonajes.PersonajeID = personajes.ID
GROUP BY jugadores.ID
ORDER BY RPGASTADOS DESC;
 