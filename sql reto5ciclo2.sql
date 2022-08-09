-- Reto 5 punto 1--
SELECT l.ID_Lider, l.Nombre, l.Primer_Apellido, l.Ciudad_Residencia FROM  Lider l
ORDER by l.Ciudad_Residencia;

-- Reto 5 punto 2--
SELECT p.ID_Proyecto, p.Constructora, p.Numero_Habitaciones, p.Ciudad FROM Proyecto p
WHERE p.Clasificacion = 'Casa Campestre' AND (p.Ciudad = 'Cartagena' OR p.Ciudad = 'Barranquilla' OR p.Ciudad = 'Santa Marta');


-- Reto 5 punto 3--
SELECT c.ID_Compra, p.Constructora, p.Banco_Vinculado FROM Compra c
left JOIN Proyecto p on c.ID_Proyecto = p.ID_Proyecto
WHERE p.Ciudad = 'Salento' and c.Proveedor = 'Homecenter';
