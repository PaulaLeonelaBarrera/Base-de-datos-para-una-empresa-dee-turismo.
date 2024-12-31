#CONSULTAS OBLIGATORIAS

-- 1)Obtenga los sponsors de los eventos que incluye el paquete cuyo IdPAQUETE es "190"
SELECT s.CUIT, s.Nombre, s.CorreoElectronico, s.Telefono
FROM sponsor s
JOIN patrocina p ON s.CUIT = p.CUIT_sponsor
JOIN paquete paq ON p.IdEVENTO = paq.IdEVENTO
WHERE paq.IdPAQUETE = 190;

-- 2)Listar los lugares que incluye el ciruito con IdCIRCUITO=20. 
-- AGREGADO ORDER BY: Esto ordenará los resultados en orden alfabético ascendente según el nombre de los lugares.
SELECT Nombre, Localidad, Departamento
FROM lugar
WHERE IdCIRCUITO = 20
ORDER BY Nombre ASC;

-- 3)Listar los proveedores de alojamiento sin fecha de reserva entre el 7/12/24 y el 14/12/24
SELECT  p.CUIT, p.Nombre, p.Tipo, p.Telefono, p.CorreoElectronico
FROM proveedor p
JOIN alojamiento_proveedor ap ON p.CUIT = ap.PROVEEDOR_CUIT
JOIN alojamiento a ON ap.IdALOJAMIENTO = a.IdALOJAMIENTO
LEFT JOIN reserva r 
    ON a.IdALOJAMIENTO = r.IdALOJAMIENTO 
    AND r.FechaReserva BETWEEN '2024-12-07' AND '2024-12-14'
WHERE r.IdALOJAMIENTO IS NULL;


-- 4)Listar los restaurantes que ofrezcan platos tradicionales
SELECT Nombre, Direccion, Telefono, Tipo_Comida, Tipo_Bebida, Carac_Especial AS Especialidad 
FROM RESTAURANTE
WHERE Tipo_Comida LIKE '%tradicional%'
   OR Tipo_Comida LIKE '%empanada%' 
   OR Tipo_Comida LIKE '%humita%' 
   OR Tipo_Comida LIKE '%tamales%' 
   OR Tipo_Comida LIKE '%locro%';


-- 5)Obtener listado de hoteles 5 estrellas
SELECT *
FROM alojamiento
WHERE Tipo = 'Hotel' AND Estrellas = 5;
-- AGREGADO: Listarlo por Nombre y Dirección
SELECT Nombre, Direccion
FROM alojamiento
WHERE Tipo = 'Hotel' AND Estrellas = 5;


#CONSULTAS PROPIAS

-- 1) Mostrar imágenes del GALERIA_CIRCUITO
SELECT 
    c.Nombre AS NombreCircuito,
    g.Nombre AS NombreGaleria,
    i.Nombre AS NombreImagen,
    i.Tipo AS TipoImagen
FROM 
    GALERIA_CIRCUITO gc
JOIN 
    GALERIA g ON gc.IdGALERIA = g.IdGALERIA
JOIN 
    CIRCUITO c ON gc.IdCIRCUITO = c.IdCIRCUITO
JOIN 
    IMAGEN i ON g.IdGALERIA = i.IdGALERIA;

-- 2) Mostrar los Eventos que tienen Intermediario
SELECT Nombre, Fecha_Inicio, Fecha_Fin
FROM EVENTO
WHERE INTERMEDIARIO_CUIT IS NOT NULL;

-- 3)Obtener la información de un cliente específico, su seguro, tipo de seguro, 
-- el plan de contingencia y el paquete asociado, filtrado por el DNI del cliente. Dni = '29876543'
SELECT
	C.Dni AS DNI,
    C.Nombre AS Nombre,
    C.Apellido AS Apellido,
    S.Nombre AS Seguro,
    S.Tipo AS TipoSeguro,
    S.Cobertura AS CoberturaSeguro,
    PC.Nombre AS PlanContingencia,
    P.IdPaquete AS IdPaquete
FROM
    CLIENTE C
JOIN
    tipo_cliente TC ON TC.IdCLIENTE = C.IdCLIENTE
JOIN
    seguro S ON S.IdTIPO_CLIENTE = TC.IdTIPO_CLIENTE
JOIN
    plan_contigencia PC ON PC.IdPLAN_CONTIGENCIA = TC.IdPLAN_CONTIGENCIA
JOIN
    PAQUETE P ON P.IdPaquete = PC.IdPaquete
WHERE
    C.Dni = '29876543';  -- DNI del cliente específico

    






