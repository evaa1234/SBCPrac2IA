; Sat May 22 10:53:46 CEST 2021
; 
;+ (version "3.5")
;+ (build "Build 660")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot NombreBebida
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot FechaF
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gradoRecomendacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot recomendacion
		(type INSTANCE)
;+		(allowed-classes Menu)
		(cardinality 3 3)
		(create-accessor read-write))
	(single-slot FechaR
		(type INSTANCE)
;+		(allowed-classes Temporada)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Menus
		(type INSTANCE)
;+		(allowed-classes Menu)
		(create-accessor read-write))
	(multislot Bebida+Menu
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(multislot Ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(create-accessor read-write))
	(multislot IngredientesProhibidos
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(create-accessor read-write))
	(multislot justificacionS
		(type STRING)
		(create-accessor read-write))
	(multislot Eventos
		(type INSTANCE)
;+		(allowed-classes Evento)
		(create-accessor read-write))
	(multislot justificacionU
		(type STRING)
		(create-accessor read-write))
	(single-slot DNI
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot MenusE
		(type INSTANCE)
;+		(allowed-classes Menu)
		(create-accessor read-write))
	(multislot EventosM
		(type INSTANCE)
;+		(allowed-classes Evento)
		(create-accessor read-write))
	(single-slot NombrePlato
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Temp
		(type SYMBOL)
		(allowed-values Otono Primavera Verano Invierno)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Platos
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write))
	(single-slot NombreCliente
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreEvento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Marisco
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Recomendaciones
		(type INSTANCE)
;+		(allowed-classes Menu)
		(create-accessor read-write))
	(single-slot TipoMenu
		(type INSTANCE)
;+		(allowed-classes Tipo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot IngredientesProhibidosR
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot TipoPlato
		(type SYMBOL)
		(allowed-values Vegano Vegetariano Familiar No-complejo Regional Clasico Sibarita)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Bebidas
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(single-slot Pescado
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Numero_Comensales
		(type INTEGER)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Gluten
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrecioR
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Fruta
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot TipoMP
		(type SYMBOL)
		(allowed-values No-espec%C3%ADfico Vegano Vegetariano Familiar Cl%C3%A1sico No-complejo Regional Sibarita)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot TemporadaE
		(type INSTANCE)
;+		(allowed-classes Temporada)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot TipoR
		(type INSTANCE)
;+		(allowed-classes Tipo)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Clientes
		(type INSTANCE)
;+		(allowed-classes Cliente)
		(create-accessor read-write))
	(single-slot NombreIngrediente
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot OrdenPlato
		(type SYMBOL)
		(allowed-values Primero Segundo Postre)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Evento
	(is-a USER)
	(role concrete)
	(single-slot NombreEvento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot MenusE
		(type INSTANCE)
;+		(allowed-classes Menu)
		(create-accessor read-write))
	(multislot Numero_Comensales
		(type INTEGER)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot TemporadaE
		(type INSTANCE)
;+		(allowed-classes Temporada)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Clientes
		(type INSTANCE)
;+		(allowed-classes Cliente)
		(create-accessor read-write)))

(defclass Cliente
	(is-a USER)
	(role concrete)
	(multislot Eventos
		(type INSTANCE)
;+		(allowed-classes Evento)
		(create-accessor read-write))
	(multislot Recomendaciones
		(type INSTANCE)
;+		(allowed-classes Menu)
		(create-accessor read-write))
	(single-slot DNI
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreCliente
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Menu
	(is-a USER)
	(role concrete)
	(multislot IngredientesProhibidos
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(create-accessor read-write))
	(multislot EventosM
		(type INSTANCE)
;+		(allowed-classes Evento)
		(create-accessor read-write))
	(multislot Bebidas
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(single-slot TipoMenu
		(type INSTANCE)
;+		(allowed-classes Tipo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Platos
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write)))

(defclass Precio
	(is-a Menu)
	(role concrete))

(defclass Plato
	(is-a USER)
	(role concrete)
	(multislot Ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(create-accessor read-write))
	(multislot Menus
		(type INSTANCE)
;+		(allowed-classes Menu)
		(create-accessor read-write))
	(single-slot NombrePlato
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Bebida+Menu
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(multislot TipoPlato
		(type SYMBOL)
		(allowed-values Vegano Vegetariano Familiar No-complejo Regional Clasico Sibarita)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot OrdenPlato
		(type SYMBOL)
		(allowed-values Primero Segundo Postre)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot PrecioR
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Ingrediente
	(is-a USER)
	(role concrete)
	(single-slot Fruta
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Marisco
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Temp
		(type SYMBOL)
		(allowed-values Otono Primavera Verano Invierno)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreIngrediente
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Pescado
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Bebida
	(is-a USER)
	(role concrete)
	(single-slot NombreBebida
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioR
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Vino
	(is-a Bebida)
	(role concrete))

(defclass Tinto
	(is-a Vino)
	(role concrete))

(defclass Blanco
	(is-a Vino)
	(role concrete))

(defclass Tipo
	(is-a USER)
	(role concrete)
	(multislot TipoMP
		(type SYMBOL)
		(allowed-values No-espec%C3%ADfico Vegano Vegetariano Familiar Cl%C3%A1sico No-complejo Regional Sibarita)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Restricciones
	(is-a USER)
	(role concrete))

(defclass RestriccionFecha
	(is-a Restricciones)
	(role concrete)
	(single-slot FechaR
		(type INSTANCE)
;+		(allowed-classes Temporada)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass RestriccionIngredientes
	(is-a Restricciones)
	(role concrete)
	(multislot IngredientesProhibidosR
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass RestriccionPrecio
	(is-a Restricciones)
	(role concrete)
	(single-slot PrecioR
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass RestriccionMenu
	(is-a Restricciones)
	(role concrete)
	(multislot TipoR
		(type INSTANCE)
;+		(allowed-classes Tipo)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Temporada
	(is-a USER)
	(role concrete)
	(single-slot FechaF
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Temp
		(type SYMBOL)
		(allowed-values Otono Primavera Verano Invierno)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Recomendacion
	(is-a USER)
	(role concrete)
	(multislot justificacionS
		(type STRING)
		(create-accessor read-write))
	(multislot justificacionU
		(type STRING)
		(create-accessor read-write))
	(single-slot gradoRecomendacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot recomendacion
		(type INSTANCE)
;+		(allowed-classes Menu)
		(cardinality 3 3)
		(create-accessor read-write)))

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					INSTANCIAS					 		---------- 								INSTANCIAS
;;;-------------------------------------------------------------------------------------------------

(definstances instancies 

; Sat May 22 10:53:46 CEST 2021
; 
;+ (version "3.5")
;+ (build "Build 660")

([PracticaSBC_Class29] of  Cliente

	(DNI "48046516R")
	(NombreCliente "Marc"))

([SBCProject_Class0] of  Cliente

	(DNI "48623189T")
	(NombreCliente "Guillem"))

([SBCProject_Class1] of  Cliente

	(DNI "73333189G")
	(NombreCliente "Eva"))

([SBCProject_Class10] of  Bebida

	(NombreBebida "Vino Tinto 3")
	(PrecioR 15.0))

([SBCProject_Class100] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class41]
		[SBCProject_Class40]
		[SBCProject_Class23]
		[SBCProject_Class37])
	(NombrePlato "Ensalada")
	(OrdenPlato Primero)
	(PrecioR 5.5)
	(TipoPlato Vegano Vegetariano No-complejo))

([SBCProject_Class10000] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class55]
		[SBCProject_Class25]
		[SBCProject_Class74]
		[SBCProject_Class22]
		[SBCProject_Class42]
		[SBCProject_Class44]
		[SBCProject_Class76]
		[SBCProject_Class43])
	(NombrePlato "Tapas Variadas")
	(OrdenPlato Primero)
	(PrecioR 7.5)
	(TipoPlato No-complejo))

([SBCProject_Class10001] of  Tipo

	(TipoMP Familiar No-complejo))

([SBCProject_Class10002] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class25]
		[SBCProject_Class51]
		[SBCProject_Class49]
		[SBCProject_Class28]
		[SBCProject_Class23]
		[SBCProject_Class37]
		[SBCProject_Class50])
	(NombrePlato "Olla Aranesa")
	(OrdenPlato Primero)
	(PrecioR 10.5)
	(TipoPlato Familiar Regional))

([SBCProject_Class10003] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class10005] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class36]
		[SBCProject_Class65]
		[SBCProject_Class41]
		[SBCProject_Class28]
		[SBCProject_Class23]
		[SBCProject_Class37])
	(NombrePlato "Paella")
	(OrdenPlato Segundo)
	(PrecioR 11.5)
	(TipoPlato Familiar Regional Clasico))

([SBCProject_Class10006] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class10007] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class52]
		[SBCProject_Class37])
	(NombrePlato "Codillo a la Brasa")
	(OrdenPlato Segundo)
	(PrecioR 20.0)
	(TipoPlato Regional Clasico Sibarita))

([SBCProject_Class10008] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico Regional))

([SBCProject_Class10009] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class48])
	(NombrePlato "Helado artesanal")
	(OrdenPlato Postre)
	(PrecioR 6.0)
	(TipoPlato Vegetariano Familiar Clasico Regional Sibarita))

([SBCProject_Class10010] of  Tipo

	(TipoMP Vegetariano Familiar Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class10011] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class54])
	(NombrePlato "Crema catalana")
	(OrdenPlato Postre)
	(PrecioR 3.0)
	(TipoPlato Vegetariano Familiar Regional Clasico))

([SBCProject_Class10012] of  Tipo

	(TipoMP Vegetariano Familiar Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class10013] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class57]
		[SBCProject_Class23]
		[SBCProject_Class37])
	(NombrePlato "Esqueixada")
	(OrdenPlato Primero Segundo)
	(PrecioR 7.5)
	(TipoPlato Regional Clasico))

([SBCProject_Class10014] of  Tipo

	(TipoMP Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class10015] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class45]
		[SBCProject_Class59]
		[SBCProject_Class60])
	(NombrePlato "Canelones")
	(OrdenPlato Primero Segundo)
	(PrecioR 8.0)
	(TipoPlato Familiar Regional Clasico))

([SBCProject_Class10016] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico Regional))

([SBCProject_Class10018] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class22])
	(NombrePlato "Bocadillos variados")
	(OrdenPlato Segundo)
	(PrecioR 4.0)
	(TipoPlato No-complejo Vegano Vegetariano Familiar))

([SBCProject_Class10019] of  Tipo

	(TipoMP Vegano Vegetariano Familiar No-complejo))

([SBCProject_Class10020] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class36]
		[SBCProject_Class65]
		[SBCProject_Class58]
		[SBCProject_Class37])
	(NombrePlato "Arroz negro")
	(OrdenPlato Segundo)
	(PrecioR 10.0)
	(TipoPlato Familiar No-complejo Clasico))

([SBCProject_Class10021] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class10022] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class61]
		[SBCProject_Class37])
	(NombrePlato "Secreto ibérico")
	(OrdenPlato Segundo)
	(PrecioR 22.0)
	(TipoPlato Clasico Sibarita))

([SBCProject_Class10023] of  Tipo

	(TipoMP Cl%C3%A1sico Regional))

([SBCProject_Class10024] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class56])
	(NombrePlato "Helado de tarrina")
	(OrdenPlato Postre)
	(PrecioR 3.0)
	(TipoPlato Vegetariano Familiar No-complejo))

([SBCProject_Class10025] of  Tipo

	(TipoMP Vegetariano Familiar Cl%C3%A1sico No-complejo))

([SBCProject_Class10026] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class47])
	(NombrePlato "Tiramisu")
	(OrdenPlato Postre)
	(PrecioR 4.0)
	(TipoPlato Vegetariano No-complejo Clasico))

([SBCProject_Class10027] of  Tipo

	(TipoMP Vegetariano Familiar Cl%C3%A1sico No-complejo Sibarita))

([SBCProject_Class10028] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class35])
	(NombrePlato "Coulant")
	(OrdenPlato Postre)
	(PrecioR 5.0)
	(TipoPlato Vegetariano Clasico Sibarita))

([SBCProject_Class10029] of  Tipo

	(TipoMP Vegetariano Familiar Cl%C3%A1sico Sibarita))

([SBCProject_Class10030] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class62])
	(NombrePlato "Tarta de cafe")
	(OrdenPlato Postre)
	(PrecioR 5.0)
	(TipoPlato Vegetariano No-complejo Clasico Sibarita))

([SBCProject_Class10031] of  Tipo

	(TipoMP Vegetariano Vegano Cl%C3%A1sico Sibarita))

([SBCProject_Class10032] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class55])
	(NombrePlato "Surtido de embutidos")
	(OrdenPlato Primero Segundo)
	(PrecioR 17.0)
	(TipoPlato No-complejo Regional Clasico Sibarita))

([SBCProject_Class10033] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class10034] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class10037])
	(NombrePlato "Ostras")
	(OrdenPlato Primero Segundo)
	(PrecioR 15.5)
	(TipoPlato Sibarita))

([SBCProject_Class10035] of  Tipo

	(TipoMP No-complejo Cl%C3%A1sico Regional Sibarita))

([SBCProject_Class10037] of  Ingrediente

	(Marisco TRUE)
	(NombreIngrediente "Ostras")
	(Temp Otono))

([SBCProject_Class10038] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class63]
		[SBCProject_Class64])
	(NombrePlato "Solomillo al Roquefort")
	(OrdenPlato Segundo)
	(PrecioR 25.0)
	(TipoPlato Familiar Clasico Sibarita))

([SBCProject_Class10039] of  Tipo
)

([SBCProject_Class10040] of  Tipo
)

([SBCProject_Class10041] of  Tipo
)

([SBCProject_Class10042] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico Sibarita))

([SBCProject_Class10043] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class65])
	(NombrePlato "Bogabante")
	(OrdenPlato Segundo)
	(PrecioR 15.0)
	(TipoPlato Sibarita Clasico))

([SBCProject_Class10044] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo Regional Sibarita))

([SBCProject_Class10045] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class25]
		[SBCProject_Class22]
		[SBCProject_Class23]
		[SBCProject_Class37])
	(NombrePlato "Tostadas con escalivada")
	(OrdenPlato Primero)
	(PrecioR 5.5)
	(TipoPlato Vegano Vegetariano Familiar No-complejo Regional Clasico))

([SBCProject_Class10046] of  Tipo

	(TipoMP Vegano Vegetariano Familiar Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class10047] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class55]
		[SBCProject_Class22]
		[SBCProject_Class23])
	(NombrePlato "Pa amb tomaquet i embotit")
	(OrdenPlato Primero Segundo)
	(PrecioR 7.0)
	(TipoPlato Familiar Regional No-complejo Sibarita))

([SBCProject_Class10048] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo Regional Sibarita))

([SBCProject_Class10049] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class51]
		[SBCProject_Class28])
	(NombrePlato "Botifarra negra con judias")
	(OrdenPlato Segundo)
	(PrecioR 7.0)
	(TipoPlato Regional No-complejo Regional Clasico))

([SBCProject_Class10050] of  Tipo
)

([SBCProject_Class10051] of  Tipo
)

([SBCProject_Class10052] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class10053] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class67])
	(NombrePlato "Caracoles")
	(OrdenPlato Segundo)
	(PrecioR 10.0)
	(TipoPlato Familiar No-complejo Regional))

([SBCProject_Class10054] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo Regional Sibarita))

([SBCProject_Class101] of  Tipo

	(TipoMP Vegano Vegetariano Cl%C3%A1sico Regional))

([SBCProject_Class103] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class22]
		[SBCProject_Class42]
		[SBCProject_Class46]
		[SBCProject_Class40]
		[SBCProject_Class23])
	(NombrePlato "Hamburguesa con patatas")
	(OrdenPlato Segundo)
	(PrecioR 7.5)
	(TipoPlato Familiar No-complejo))

([SBCProject_Class104] of  Tipo
)

([SBCProject_Class105] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo))

([SBCProject_Class11] of  Bebida

	(NombreBebida "Margarita")
	(PrecioR 5.0))

([SBCProject_Class12] of  Bebida

	(NombreBebida "Cafe")
	(PrecioR 1.5))

([SBCProject_Class13] of  Bebida

	(NombreBebida "Te")
	(PrecioR 2.0))

([SBCProject_Class14] of  Evento

	(Clientes [PracticaSBC_Class29])
	(NombreEvento "Boda del Marc")
	(TemporadaE [SBCProject_Class15]))

([SBCProject_Class15] of  Temporada

	(FechaF "15 Octubre")
	(Temp Oto%C3%B1o))

([SBCProject_Class17] of  Evento

	(Clientes [SBCProject_Class0])
	(NombreEvento "Bautizo Guillem")
	(TemporadaE [SBCProject_Class18]))

([SBCProject_Class18] of  Temporada

	(FechaF "8 mayo")
	(Temp Primavera))

([SBCProject_Class19] of  Evento

	(Clientes [PracticaSBC_Class29])
	(NombreEvento "Despedida Soltero Eva")
	(TemporadaE [SBCProject_Class20]))

([SBCProject_Class2] of  Bebida

	(NombreBebida "Agua 33cl")
	(PrecioR 1.0))

([SBCProject_Class20] of  Temporada

	(FechaF "12 junio")
	(Temp Primavera))

([SBCProject_Class20000] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class69])
	(NombrePlato "Fricando")
	(OrdenPlato Segundo)
	(PrecioR 10.5)
	(TipoPlato Familiar Regional Clasico))

([SBCProject_Class20001] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico Regional))

([SBCProject_Class20002] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class66])
	(NombrePlato "Brazo de gitano")
	(OrdenPlato Postre)
	(PrecioR 6.5)
	(TipoPlato Regional Vegetariano Clasico))

([SBCProject_Class20003] of  Tipo

	(TipoMP Vegetariano Familiar Cl%C3%A1sico No-complejo))

([SBCProject_Class20004] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class68])
	(NombrePlato "Bunuelos")
	(OrdenPlato Postre)
	(PrecioR 4.0)
	(TipoPlato Regional Vegetariano Familiar Clasico))

([SBCProject_Class20005] of  Tipo

	(TipoMP Vegetariano Familiar Cl%C3%A1sico Regional Sibarita))

([SBCProject_Class20006] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class71]
		[SBCProject_Class21])
	(NombrePlato "Hummus con crudites")
	(OrdenPlato Primero)
	(PrecioR 9.0)
	(TipoPlato Vegano Vegetariano Sibarita))

([SBCProject_Class20007] of  Tipo

	(TipoMP Vegano Vegetariano Familiar No-complejo Sibarita))

([SBCProject_Class20008] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class73]
		[SBCProject_Class22])
	(NombrePlato "Empanada de calabaza")
	(OrdenPlato Primero Segundo)
	(PrecioR 10.0)
	(TipoPlato Vegano Vegetariano Familiar Sibarita))

([SBCProject_Class20009] of  Tipo

	(TipoMP Vegano Vegetariano Familiar Sibarita))

([SBCProject_Class20010] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class22]
		[SBCProject_Class76]
		[SBCProject_Class75])
	(NombrePlato "Canapes variados")
	(OrdenPlato Primero)
	(PrecioR 8.0)
	(TipoPlato Sibarita Vegano Vegetariano Clasico))

([SBCProject_Class20011] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico No-complejo Sibarita))

([SBCProject_Class20012] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class25]
		[SBCProject_Class38]
		[SBCProject_Class36]
		[SBCProject_Class77]
		[SBCProject_Class76]
		[SBCProject_Class75]
		[SBCProject_Class37])
	(NombrePlato "Sushi")
	(OrdenPlato Segundo)
	(PrecioR 18.5)
	(TipoPlato Sibarita))

([SBCProject_Class20013] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class72]
		[SBCProject_Class23]
		[SBCProject_Class37])
	(NombrePlato "Gazpacho")
	(OrdenPlato Primero)
	(PrecioR 5.5)
	(TipoPlato Vegano Vegetariano No-complejo Regional Clasico))

([SBCProject_Class20014] of  Tipo

	(TipoMP Vegano Vegetariano Familiar Cl%C3%A1sico No-complejo Regional Sibarita))

([SBCProject_Class20015] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class41]
		[SBCProject_Class74]
		[SBCProject_Class42]
		[SBCProject_Class76]
		[SBCProject_Class37])
	(NombrePlato "Degustacion de tortillas")
	(OrdenPlato Primero Segundo)
	(PrecioR 12.0)
	(TipoPlato Vegetariano Sibarita))

([SBCProject_Class20016] of  Tipo

	(TipoMP Vegetariano Familiar Cl%C3%A1sico Regional Sibarita))

([SBCProject_Class20018] of  Tipo

	(TipoMP Familiar Sibarita))

([SBCProject_Class20019] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes [SBCProject_Class39])
	(NombrePlato "Tarta tatin")
	(OrdenPlato Postre)
	(PrecioR 8.0)
	(TipoPlato Vegetariano No-complejo Sibarita))

([SBCProject_Class20020] of  Tipo

	(TipoMP Familiar Cl%C3%A1sico Sibarita))

([SBCProject_Class21] of  Ingrediente

	(NombreIngrediente "Garbanzos")
	(Temp Otono))

([SBCProject_Class22] of  Ingrediente

	(NombreIngrediente "Pan")
	(Temp Primavera))

([SBCProject_Class23] of  Ingrediente

	(NombreIngrediente "Tomate")
	(Temp Otono))

([SBCProject_Class24] of  Ingrediente

	(NombreIngrediente "Nachos")
	(Temp Primavera))

([SBCProject_Class25] of  Ingrediente

	(Fruta TRUE)
	(NombreIngrediente "Aguacate")
	(Temp Verano))

([SBCProject_Class27] of  Ingrediente

	(NombreIngrediente "Berenjena")
	(Temp Invierno))

([SBCProject_Class28] of  Ingrediente

	(NombreIngrediente "Judias")
	(Temp Invierno))

([SBCProject_Class29] of  Ingrediente

	(NombreIngrediente "Tacos")
	(Temp Primavera))

([SBCProject_Class3] of  Bebida

	(NombreBebida "Refresco")
	(PrecioR 2.5))

([SBCProject_Class30] of  Ingrediente

	(NombreIngrediente "Brownie")
	(Temp Otono))

([SBCProject_Class30000] of  Precio
)

([SBCProject_Class31] of  Ingrediente

	(Fruta TRUE)
	(NombreIngrediente "Naranja")
	(Temp Invierno))

([SBCProject_Class32] of  Ingrediente

	(Fruta TRUE)
	(NombreIngrediente "Fresas")
	(Temp Primavera))

([SBCProject_Class33] of  Ingrediente

	(Fruta TRUE)
	(NombreIngrediente "Melocoton")
	(Temp Verano))

([SBCProject_Class34] of  Ingrediente

	(Fruta TRUE)
	(NombreIngrediente "Pera")
	(Temp Otono))

([SBCProject_Class35] of  Ingrediente

	(NombreIngrediente "Coulant")
	(Temp Primavera))

([SBCProject_Class36] of  Ingrediente

	(NombreIngrediente "Arroz")
	(Temp Verano))

([SBCProject_Class37] of  Ingrediente

	(NombreIngrediente "Verduras")
	(Temp Primavera))

([SBCProject_Class38] of  Ingrediente

	(NombreIngrediente "Algas")
	(Temp Primavera))

([SBCProject_Class39] of  Ingrediente

	(NombreIngrediente "Tatin")
	(Temp Otono))

([SBCProject_Class4] of  Bebida

	(NombreBebida "Vino Blanco 1")
	(PrecioR 5.0))

([SBCProject_Class40] of  Ingrediente

	(NombreIngrediente "Lechuga")
	(Temp Primavera))

([SBCProject_Class41] of  Ingrediente

	(NombreIngrediente "Cebolla")
	(Temp Primavera))

([SBCProject_Class42] of  Ingrediente

	(NombreIngrediente "Patatas")
	(Temp Primavera))

([SBCProject_Class43] of  Ingrediente

	(NombreIngrediente "Salsa Brava")
	(Temp Primavera))

([SBCProject_Class44] of  Ingrediente

	(NombreIngrediente "Pulpo")
	(Pescado TRUE)
	(Temp Primavera))

([SBCProject_Class45] of  Ingrediente

	(Lactosa TRUE)
	(NombreIngrediente "Beixamel")
	(Temp Invierno))

([SBCProject_Class46] of  Ingrediente

	(NombreIngrediente "Hamburguesas")
	(Temp Primavera))

([SBCProject_Class47] of  Ingrediente

	(NombreIngrediente "Tiramisu")
	(Temp Verano))

([SBCProject_Class48] of  Ingrediente

	(NombreIngrediente "Helado Artesanal")
	(Temp Verano))

([SBCProject_Class49] of  Ingrediente

	(NombreIngrediente "Caldo")
	(Temp Invierno))

([SBCProject_Class5] of  Bebida

	(NombreBebida "Vino Blanco 2")
	(PrecioR 10.0))

([SBCProject_Class50] of  Ingrediente

	(NombreIngrediente "Zanahoria")
	(Temp Verano))

([SBCProject_Class51] of  Ingrediente

	(NombreIngrediente "Butifarra")
	(Temp Primavera))

([SBCProject_Class52] of  Ingrediente

	(NombreIngrediente "Codillo")
	(Temp Invierno))

([SBCProject_Class53] of  Ingrediente

	(NombreIngrediente "Entrecot")
	(Temp Verano))

([SBCProject_Class54] of  Ingrediente

	(Lactosa TRUE)
	(NombreIngrediente "Crema Catalana")
	(Temp Primavera))

([SBCProject_Class55] of  Ingrediente

	(NombreIngrediente "Embutidos")
	(Temp Primavera))

([SBCProject_Class56] of  Ingrediente

	(Lactosa TRUE)
	(NombreIngrediente "Helado Tarrina")
	(Temp Verano))

([SBCProject_Class57] of  Ingrediente

	(NombreIngrediente "Bacalao")
	(Pescado TRUE)
	(Temp Invierno))

([SBCProject_Class58] of  Ingrediente

	(NombreIngrediente "Tinta Calamar")
	(Temp Verano))

([SBCProject_Class59] of  Ingrediente

	(NombreIngrediente "Carne Picada")
	(Temp Verano))

([SBCProject_Class6] of  Bebida

	(NombreBebida "Vino Blanco 3")
	(PrecioR 15.0))

([SBCProject_Class60] of  Ingrediente

	(NombreIngrediente "Pasta de canelones")
	(Temp Invierno))

([SBCProject_Class61] of  Ingrediente

	(NombreIngrediente "Secreto iberico")
	(Temp Otono))

([SBCProject_Class62] of  Ingrediente

	(NombreIngrediente "Tarta de Cafe")
	(Temp Verano))

([SBCProject_Class63] of  Ingrediente

	(NombreIngrediente "Salsa Roquefort")
	(Temp Verano))

([SBCProject_Class64] of  Ingrediente

	(NombreIngrediente "Solomillo")
	(Temp Verano))

([SBCProject_Class65] of  Ingrediente

	(Marisco TRUE)
	(NombreIngrediente "Bogavante")
	(Temp Otono))

([SBCProject_Class66] of  Ingrediente

	(Lactosa TRUE)
	(NombreIngrediente "Brazo de Gitano")
	(Temp Invierno))

([SBCProject_Class67] of  Ingrediente

	(NombreIngrediente "Caracoles")
	(Temp Otono))

([SBCProject_Class68] of  Ingrediente

	(Lactosa TRUE)
	(NombreIngrediente "Bunuelos")
	(Temp Invierno))

([SBCProject_Class69] of  Ingrediente

	(NombreIngrediente "Ternera")
	(Temp Verano))

([SBCProject_Class7] of  Bebida

	(NombreBebida "Agua 1L")
	(PrecioR 2.0))

([SBCProject_Class70] of  Ingrediente

	(NombreIngrediente "Salsa de setas")
	(Temp Verano))

([SBCProject_Class71] of  Ingrediente

	(NombreIngrediente "Crudites")
	(Temp Verano))

([SBCProject_Class72] of  Ingrediente

	(NombreIngrediente "Gazpacho")
	(Temp Verano))

([SBCProject_Class73] of  Ingrediente

	(NombreIngrediente "Calabaza")
	(Temp Otono))

([SBCProject_Class74] of  Ingrediente

	(NombreIngrediente "Huevos")
	(Temp Verano))

([SBCProject_Class75] of  Ingrediente

	(NombreIngrediente "Salmón")
	(Pescado TRUE)
	(Temp Verano))

([SBCProject_Class76] of  Ingrediente

	(NombreIngrediente "Quesos Variados")
	(Temp Primavera))

([SBCProject_Class77] of  Ingrediente

	(NombreIngrediente "Atun")
	(Pescado TRUE)
	(Temp Primavera))

([SBCProject_Class79] of  Tipo
)

([SBCProject_Class8] of  Bebida

	(NombreBebida "Vino Tinto 1")
	(PrecioR 5.0))

([SBCProject_Class81] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class21]
		[SBCProject_Class22])
	(NombrePlato "Hummus con Tostadas")
	(OrdenPlato Primero)
	(PrecioR 7.0)
	(TipoPlato Vegano Vegetariano))

([SBCProject_Class82] of  Tipo

	(TipoMP Vegano Vegetariano))

([SBCProject_Class84] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class25]
		[SBCProject_Class24])
	(NombrePlato "Nachos con Guacamole")
	(OrdenPlato Primero)
	(PrecioR 7.0)
	(TipoPlato Vegano Vegetariano Familiar No-complejo))

([SBCProject_Class85] of  Tipo

	(TipoMP Vegano Vegetariano No-complejo))

([SBCProject_Class86] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class27]
		[SBCProject_Class39])
	(NombrePlato "Tatín de Berenjena")
	(OrdenPlato Primero)
	(PrecioR 7.5)
	(TipoPlato Vegano Vegetariano Familiar No-complejo Sibarita))

([SBCProject_Class87] of  Tipo

	(TipoMP Vegano Vegetariano Familiar Cl%C3%A1sico))

([SBCProject_Class88] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class28]
		[SBCProject_Class29]
		[SBCProject_Class23]
		[SBCProject_Class37])
	(NombrePlato "Tacos de Judías")
	(OrdenPlato Primero Segundo)
	(PrecioR 8.0)
	(TipoPlato Vegano Vegetariano Familiar No-complejo))

([SBCProject_Class89] of  Tipo

	(TipoMP Vegano Vegetariano No-complejo Familiar))

([SBCProject_Class9] of  Bebida

	(NombreBebida "Vino Tinto 2")
	(PrecioR 10.0))

([SBCProject_Class90] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class21]
		[SBCProject_Class40]
		[SBCProject_Class22]
		[SBCProject_Class23]
		[SBCProject_Class37])
	(NombrePlato "Hamburguesa Vegana")
	(OrdenPlato Segundo)
	(PrecioR 9.5)
	(TipoPlato Vegano Vegetariano Sibarita))

([SBCProject_Class91] of  Tipo

	(TipoMP Vegano Vegetariano Familiar))

([SBCProject_Class92] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class25]
		[SBCProject_Class38]
		[SBCProject_Class36]
		[SBCProject_Class34]
		[SBCProject_Class37]
		[SBCProject_Class50])
	(NombrePlato "Sushi de Verduras")
	(OrdenPlato Primero Segundo)
	(PrecioR 17.0)
	(TipoPlato Vegano Vegetariano))

([SBCProject_Class93] of  Tipo

	(TipoMP Vegano Vegetariano Sibarita))

([SBCProject_Class94] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class32]
		[SBCProject_Class33]
		[SBCProject_Class31]
		[SBCProject_Class34])
	(NombrePlato "Fruta de Temporada")
	(OrdenPlato Postre)
	(PrecioR 3.0)
	(TipoPlato Vegano Vegetariano Familiar No-complejo))

([SBCProject_Class95] of  Tipo

	(TipoMP Vegano Vegetariano Familiar Cl%C3%A1sico No-complejo Regional))

([SBCProject_Class96] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class30]
		[SBCProject_Class37])
	(NombrePlato "Brownie vegano")
	(OrdenPlato Postre)
	(PrecioR 5.5)
	(TipoPlato Vegano Vegetariano))

([SBCProject_Class97] of  Tipo

	(TipoMP Vegano Vegetariano Familiar Sibarita))

([SBCProject_Class98] of  Plato

	(Bebida+Menu [SBCProject_Class2])
	(Ingredientes
		[SBCProject_Class35]
		[SBCProject_Class37])
	(NombrePlato "Coulant vegano")
	(OrdenPlato Postre)
	(PrecioR 6.0)
	(TipoPlato Vegano Vegetariano))

([SBCProject_Class99] of  Tipo

	(TipoMP Vegano Vegetariano Familiar Cl%C3%A1sico))



)

;;;-----------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					FUNCIONES	PREGUNTAS				 		---------- 			
;;;-----------------------------------------------------------------------------------------------------------------------------------------

;;; Funcion para hacer una pregunta general (1)
(deffunction pregunta-general "Funcion para formular preguntas generales" (?pregunta $?respuestas-validas)
  (printout t ?pregunta)
	(printout t " ")
  (bind ?respuesta (read))

	(while (not (member (lowcase ?respuesta) ?respuestas-validas)) do
      (printout t ?pregunta)
      (bind ?respuesta (read))
	)

  ?respuesta
)

;;; Funcion para hacer una pregunta general (2) NO LA UTILIZAMOS SEGURAMENTE
(deffunction pregunta-general2 (?pregunta) 
	(format t "%s" ?pregunta) 
	(bind ?respuesta (read)) 
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi) 
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi) 
	(bind ?respuesta (read)) 
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do 
		(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi) 
		(bind ?respuesta (read)) 
	) 
	?respuesta
)

(deffunction pregunta-numerica-rango "Funcion para formular preguntas numericas que esten
	comprendidas entre un intervalo (2)" (?pregunta ?min ?max)

  (format t "%s [%d, %d]: " ?pregunta ?min ?max)
  (bind ?respuesta (read))
  (while (not (and (>= ?respuesta ?min) (<= ?respuesta ?max))) do
      (format t "%s [%d, %d]: " ?pregunta ?min ?max)
      (bind ?respuesta (read))
	)

  ?respuesta
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta    
(deffunction pregunta-lista (?pregunta $?valores_posibles) 
	(format t "%s" ?pregunta)  
	(bind ?resposta (readline))  
	(bind ?res (str-explode ?resposta))   
	?res
)

(deffunction pregunta-numerica-min "Funcion para formular preguntas numericas con valor
	minimo" (?pregunta ?min)

  (format t "%s (Valor minimo es: %d): " ?pregunta ?min)
  (bind ?respuesta (read))
  (while (not (>= ?respuesta ?min)) do
      (format t "%s (Valor minimo es: %d): " ?pregunta ?min)
      (bind ?respuesta (read))
	)

  ?respuesta
)

(deffunction pregunta-binaria "Funcion para formular preguntas con respuestas binaria" (?pregunta)
   (bind ?respuesta (pregunta-general ?pregunta si no s n))
   (if (or (eq ?respuesta si) (eq ?respuesta s))
       then TRUE
       else FALSE
	 )
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					CLASES DECLARADAS					 		---------- 				
;;;-----------------------------------------------------------------------------------------------------------------------------------------

(defclass VinoAbstracto (is-a USER) (role concrete)
	(slot Vino (type INSTANCE) (create-accessor read-write))
	(slot Nombre (type STRING) (create-accessor read-write))
	(slot PrecioR (type FLOAT) (create-accessor read-write))
	(slot Categoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot SubCategoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
)

(defclass MenuAbstracto (is-a USER) (role concrete)
	(slot Precio (type FLOAT) (create-accessor read-write) (default 0.0))
	(slot Menu (type INSTANCE) (create-accessor read-write))
)

(defclass PlatoAbstracto (is-a USER) (role concrete)
	(slot Precio (type FLOAT) (create-accessor read-write) (default 0.0))
	(slot Categoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot SubCategoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot Puntuacion (type INTEGER) (create-accessor read-write) (default 0))
	(slot Complejidad (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	;;(slot Complejidad (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot Plato (type INSTANCE) (create-accessor read-write))
	(multislot Alergias (type STRING) (create-accessor read-write))
	(multislot DescripcionPuntos (type STRING) (create-accessor read-write))
)

;;;---------------------------------------------------------------------------------------------------------------------------
;;;----------  					 MAIN					 		---------- 		
;;;---------------------------------------------------------------------------------------------------------------------------

;; Este es el modulo principal, en este se comprobara la existencia del cliente
;; en el conjunto de instancias del sistema

(defmodule MAIN (export ?ALL))

(defrule comienzo "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "---------------------------------------------" crlf)
	(printout t "----- Sistema de Recomendacion de Menus -----" crlf)
	(printout t "---------------------------------------------" crlf)
	(printout t crlf)
	(assert (nuevo_cliente))		
)

(defrule existe_persona "regla para saber si el cliente esta instanciado en el sistema"
    (nuevo_cliente)
    =>
    (bind ?DNI (pregunta-general "DNI: "))
	(while (not (any-instancep ((?persona Cliente)) (eq (str-compare ?persona:DNI ?DNI) 0))) 
		do
			(printout t "No existe el cliente." crlf)
			(bind ?DNI (pregunta-general "DNI: ")) 
	) 
    (assert (Cliente ?DNI))   
	(focus hacer_preguntas)	    
)

;;; Modulo de recopilacion de los datos del usuario
(defmodule recopilacion
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule abstraccion
    (import MAIN ?ALL)
    (import recopilacion ?ALL)
    (export ?ALL)
)

(defmodule solucionConcreta
	 	(import MAIN ?ALL)
	 	(import recopilacion ?ALL)
	 	(import abstraccion ?ALL)
		(export ?ALL)
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					TEMPLATES					 		---------- 				
;;;-----------------------------------------------------------------------------------------------------------------------------------------

;;;deftemplat para almacenar la informacion que se infiere del evento (NO SABEMOS SI USARLO AÚN)
(deftemplate MAIN::menu
	(slot plato1 (type INSTANCE) (allowed-classes Plato))
	(slot plato2 (type INSTANCE) (allowed-classes Plato))
	(slot plato3 (type INSTANCE) (allowed-classes Plato))
)

;;(deftemplate evento
;;	(slot menu1 (type INSTANCE) (allowed-classes Menu))
;;	(slot menu2 (type INSTANCE) (allowed-classes Menu))
;;	(slot menu3 (type INSTANCE) (allowed-classes Menu))
;;)

;;(deffacts eventoFact
;;	(menu (
;;)

(deftemplate MAIN::ProblemaAbstracto
    (slot presupuesto (type SYMBOL) (allowed-values Bajo Medio Alto MuyAlto))
    (slot numComensales (type SYMBOL) (allowed-values Bajo Medio Alto MuyAlto))
    ;;(slot complejidad (type SYMBOL) (allowed-values Facil Normal Alto))
    (slot temporada (type SYMBOL) (allowed-values Invierno Primavera Verano Otono))
)


(deftemplate MAIN::Entrada
	(slot presupuestoMax (type INTEGER) (default 0))
	(slot bebidaPorPlato (type SYMBOL) (allowed-values FALSE TRUE))
	(slot mesEvento (type INTEGER) (default 0))
	(slot vino (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE)) 
	(slot alcohol (type SYMBOL) (allowed-values FALSE TRUE)) 
	(slot numComensales (type INTEGER) (default 0))
	(slot numComensalesVino (type FLOAT) (default 0.0)) 
	(slot ninos (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE)) 
	(slot numComensalesNinos (type INTEGER) (default 0))
	(slot comida (type SYMBOL) (allowed-values FALSE TRUE))
	(slot tipoPlato (type SYMBOL) (allowed-values Vegano Vegetariano Regional Sibarita Clasico Familiar No-complejo) (default Clasico))
	(slot numAlergicosFruta (type INTEGER) (default 0))
	(slot numAlergicosLactosa (type INTEGER) (default 0))
	(slot numAlergicosMarisco (type INTEGER) (default 0))
	(slot numAlergicosPescado (type INTEGER) (default 0))
	(slot numGenteNormal (type INTEGER) (default 0))
)
	

;;; deftemplate para almacenar la informacion de la solucion final ordenada
(deftemplate solucionOrdenada "solucion final"
	(slot posicion (type INTEGER))
	(slot recomendacion (type INSTANCE) (allowed-classes Recomendacion))  
)


;;;;;============================ RESTRICCIONES ============================ 

;;; deftemplates para alamcenar los diferentes tipos de restricciones del cliente

(deftemplate RestriccionTemporada "restricciones de tipo temporada"
    (slot temporada (type SYMBOL) (allowed-values Otono Primavera Verano Invierno Indef) (default Indef))
)

(deftemplate RestriccionIngredientes "restricciones de ingredientes "
   (multislot ingredientes (type STRING))
)


(deftemplate RestriccionesMenu  "restricciones de tipo de menu"
    (slot tipoMenu (type INSTANCE) (allowed-classes Tipo))
    (multislot bebidas (type INSTANCE) (allowed-classes Bebida))
    (multislot eventosM (type INSTANCE) (allowed-classes Evento))
    ;;(multislot ingredientesProhibidos (type INSTANCE) (allowed-classes Ingrediente))
    (multislot platos (type INSTANCE) (allowed-classes Plato))
)


(deftemplate RestriccionPrecio "restricciones precios"
    (slot numeroMaximoPrecio (type INTEGER))
)

;;;;;============================ PREFERENCIAS ============================ 

;;; FALTA PREFERENCIA BEBIDA (UNA O MAS POR COMIDA) Y IGUAL ALGUNA OTRA

;;(deftemplate PreferenciasTemporada "preferencias de tipo temporada"
;;    (slot temporada (type SYMBOL) (allowed-values Otono Primavera Verano Invierno Indef) (default Indef))
;;)

;;(deftemplate PreferenciasIngredientes "Preferencias de ingredientes prohibidos en los menus"
;;    (multislot ingredientes (type STRING))
;;)


;;(deftemplate PreferenciasMenu  "preferencias de tipo de menu"
;;    (slot tipoMenu (type INSTANCE) (allowed-classes Tipo))
;;    (multislot bebidas (type INSTANCE) (allowed-classes Bebida))
;;    (multislot eventosM (type INSTANCE) (allowed-classes Evento))
;;    (multislot ingredientesProhibidos (type INSTANCE) (allowed-classes Ingrediente))
;;    (multislot platos (type INSTANCE) (allowed-classes Plato))
;;)

(deftemplate PreferenciasPrecio   "preferencias de precio"
    (slot numeroMaximoPrecio (type INTEGER))
)



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					HANDLER PLATO ABSTRACTO					 		---------- 				
;;;-----------------------------------------------------------------------------------------------------------------------------------------

(defmessage-handler MAIN::PlatoAbstracto calcula-sub-categoria "Handler que calcula la sub-categoria
	dado dos parametros: Bajo  -> [0...precioMedio)
                       Medio -> [precioMedio...precioAlto)
                       Alto  -> [precioAlto...Inf)" (?precioMedio ?precioAlto)

	(bind ?precioPlato ?self:Precio) 
    (if (eq (class ?self:Plato) Postre) 		;;; Colocamos los postres en su subcategoria correspondiente
        then (if (< ?precioPlato ?precioMedio)
            then (send ?self put-SubCategoria Bajo)
            else (if (and (>= ?precioPlato ?precioMedio) (< ?precioPlato ?precioAlto))
                then (send ?self put-SubCategoria Medio)
                else (send ?self put-SubCategoria Alto)
            )
        )
        else (if (< ?precioPlato ?precioMedio) 		;;; Si no es un postre, lo colocamos en su sucategoria correspondiente
            then (send ?self put-SubCategoria Bajo)
            else (if (and (>= ?precioPlato ?precioMedio) (< ?precioPlato ?precioAlto))
                then (send ?self put-SubCategoria Medio)
                else (send ?self put-SubCategoria Alto)
            )
        )
    )
)

(defmessage-handler MAIN::PlatoAbstracto calcula-categoria "Handler que calcula la categoria y su
		sub-categoria en base al precio del plato" ()

    (bind ?plato ?self:Plato)
    (bind ?precioPlato (send ?plato calcula-precio))

    (send ?self put-Precio ?precioPlato)
    (if (eq (class ?plato) Postre)					;;; Si es postre, < 3 sera bajo
        then (if (< ?precioPlato 3)
            then (send ?self put-Categoria Bajo)
                 (send ?self calcula-sub-categoria 1.6 3.0)
            else (if (and (>= ?precioPlato 3) (< ?precioPlato 5)) 	;;; Entre 3 y 5 sera medio
                then (send ?self put-Categoria Medio)	
                     (send ?self calcula-sub-categoria 4.5 6.75)
                else (send ?self put-Categoria Alto)			;;; >= 5 sera alto
                     (send ?self calcula-sub-categoria 9.0 12.0)
            )
        )
        else (if (< ?precioPlato 8)					;;; Si no es postre, < 8 sera bajo
            then (send ?self put-Categoria Bajo)
                 (send ?self calcula-sub-categoria 3.0 6.0)
            else (if (and (>= ?precioPlato 8) (< ?precioPlato 15))	;;; Entre 8 y 15 sera medio
                then (send ?self put-Categoria Medio)
                     (send ?self calcula-sub-categoria 13.0 16.0)
                else (send ?self put-Categoria Alto)			;;; >= 15 sera alto
                     (send ?self calcula-sub-categoria 23.0 26.0)
            )
        )
    )
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-presupuesto "Handler que modifica la
	puntuacion de un plato abstracto en base al presupuesto pasado para paremtro" (?presupuesto)

	(bind ?puntos 0)
	(bind ?descripcion "No tiene puntuacion a la hora de puntuar por el presupuesto del usuario")
	(if (eq ?presupuesto Bajo)
			then (if (eq ?self:Categoria Bajo)
					then (bind ?puntos 2) (bind ?descripcion "Presupuesto bajo, categoria baja")
					else (if (eq ?self:Categoria Medio)
									then (bind ?puntos 1) (bind ?descripcion "Presupuesto Bajo y Categoria Media")
					)
			)
			else (if (eq ?presupuesto Medio)
					then (if (eq ?self:Categoria Medio)
							then (bind ?puntos 2) (bind ?descripcion "Presupuesto medio, categoria media")
							else (if (eq ?self:Categoria Bajo)
									then (bind ?puntos 1) (bind ?descripcion "Presupuesto Medio y Categoria Baja")
							)
					)
					else (if (eq ?presupuesto Alto)
							then (if (eq ?self:Categoria Medio)
									then (bind ?puntos 1) (bind ?descripcion "Presupuesto Alto y Categoria Medio")
									else (if (eq ?self:Categoria Alto)
											then (bind ?puntos 2) (bind ?descripcion "Presupuesto Alto y Categoria Alta")
									)
							)
							else (if (eq ?self:Categoria Alto)
									then (bind ?puntos 3) (bind ?descripcion "Presupuesto Muy Alto y Categoria Alta")
									else (if (eq ?self:Categoria Medio)
											then (bind ?puntos 1) (bind ?descripcion "Presupuesto Muy Alto y Categoria Media")
									)
							)
					)
			)
	)

	(send ?self put-Puntuacion (+ ?puntos (send ?self get-Puntuacion)))
	(bind ?descripcion (str-cat "+" (str-cat ?puntos (str-cat " --> " ?descripcion))))
	(slot-insert$ ?self DescripcionPuntos (+ 1 (length$ ?self:DescripcionPuntos)) ?descripcion)
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-tipoPlato "Handler que modifica la
	puntuacion de un plato abstracto en base al tipo de plato elegido por el cliente" (?tipoP)

	(bind ?puntos 0)
	(bind ?descripcion "No tiene ninguna bonificacion por tipoPlato")

	(bind ?plato (send ?self get-Plato))

	(bind $?listaTipos (send ?plato get-TipoPlato))
	(bind ?lenLista (length$ ?listaTipos))

	(loop-for-count (?i 1 ?lenLista) do
		(bind ?tipo_i (nth$ ?i ?listaTipos))

		(if (eq ?tipoP ?tipo_i)
			then (bind ?puntos 1)
		)
	)

	(send ?self put-Puntuacion (+ ?puntos (send ?self get-Puntuacion)))
	(bind ?descripcion (str-cat "+" (str-cat ?puntos (str-cat " --> " ?descripcion))))
	(slot-insert$ ?self DescripcionPuntos (+ 1 (length$ ?self:DescripcionPuntos)) ?descripcion)
)


;;(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-complejidad "Handler que modifica la
;;	puntuacion de un plato abstracto en base al numero de comensales" (?numComensales)
;;
;;	(bind ?puntos 0)
;;	(bind ?descripcion "No tiene bonificacion por complejidad")
;;	(if (eq ?numComensales Medio)
;;			then (if (eq ?self:Complejidad Medio)
;;					then
;;							(bind ?puntos 2)
;;							(bind ?descripcion "Num comensales Medio y Complejidad del plato Medio")
;;					else (if (eq ?self:Complejidad Bajo)
;;									then
;;											(bind ?puntos 1)
;;											(bind ?descripcion "Num comensales Medio y Complejidad del plato Bajo")
;;					)
;;			)
;;			else (if (eq ?numComensales Alto)
;;					then (if (eq ?self:Complejidad Bajo)
;;							then
;;									(bind ?puntos 2)
;;									(bind ?descripcion "Num comensales Alto y Complejidad del plato Bajo")
;;							else (if (eq ?self:Complejidad Medio)
;;									then
;;											(bind ?puntos 1)
;;											(bind ?descripcion "Num comensales Alto y Complejidad del plato Medio")
;;							)
;;					)
;;					else (if (eq ?numComensales MuyAlto)
;;							then (if (eq ?self:Complejidad Bajo)
;;									then
;;											(bind ?puntos 3)
;;											(bind ?descripcion "Num comensales Muy Alto y Complejidad del plato Bajo")
;;									else (if (eq ?self:Complejidad Medio)
;;											then
;;													(bind ?puntos 1)
;;													(bind ?descripcion "Num comensales Muy Alto y Complejidad del plato Medio")
;;									)
;;							)
;;					)
;;			)
;;	)
;;
;;	(send ?self put-Puntuacion (+ ?puntos (send ?self get-Puntuacion)))
;;	(bind ?descripcion (str-cat "+" (str-cat ?puntos (str-cat " --> " ?descripcion))))
;;	(slot-insert$ ?self DescripcionPuntos (+ 1 (length$ ?self:DescripcionPuntos)) ?descripcion)
;;)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-temporada "Handler que modifica la
 	puntuacion del plato en base a la temporada elegida por el usuario, si todos los ingredientes
	son te temporada tendra la maxima puntuacion, sino por cada ingrediente que no lo sea es un 15%
	menos hasta un minimo de 0 puntos." (?temporada)

	(bind ?plato (send ?self get-Plato))
	(bind ?puntuacion 0)
	(bind ?descripcion "No tiene bonificacion sobre la temporada")

	(bind ?ingredientesTemporales 0)
	(bind ?ingredientesTemporalesOk 0)

	(bind $?listaIngredientes (send ?plato get-Ingredientes))
	(bind ?lenLista (length$ ?listaIngredientes))

	(loop-for-count (?i 1 ?lenLista) do
			(bind ?ingrediente (nth$ ?i ?listaIngredientes))

			(if (send ?ingrediente es-ingrediente-temporal)
					then (bind ?ingredientesTemporales (+ 1 ?ingredientesTemporales))
							 (if (send ?ingrediente es-ingrediente-temporada ?temporada)
									then (bind ?ingredientesTemporalesOk (+ 1 ?ingredientesTemporalesOk))
							 )
			)
	)

	(if (= ?ingredientesTemporalesOk ?ingredientesTemporales)
			then (bind ?puntuacion 4) (bind ?descripcion "Todos los ingredientes son de temporada")
			else (if (>= ?ingredientesTemporalesOk (* 0.75 ?ingredientesTemporales))
					then (bind ?puntuacion 3) (bind ?descripcion ">=75% de los ingredientes son de temporada")
					else (if (>= ?ingredientesTemporalesOk (* 0.50 ?ingredientesTemporales))
							then (bind ?puntuacion 2) (bind ?descripcion ">=50% de los ingredientes son de temporada")
							else (if (>= ?ingredientesTemporalesOk (* 0.25 ?ingredientesTemporales))
									then (bind ?puntuacion 1) (bind ?descripcion ">=25% de los ingredientes son de temporada")
							)
					)
			)
	)

	;;(if (and (eq ?temporada Otono) (eq (send ?plato get-Caliente) TRUE))
	;;		then
	;;			(bind ?puntuacion (+ 1 ?puntuacion))
	;;			(bind ?descripcion (str-cat " ademas de ser temporada de otono y ser un plato caliente" ?descripcion))
	;;)

	;;(if (and (eq ?temporada Invierno) (eq (send ?plato get-Caliente) TRUE))
	;;		then
	;;			(bind ?puntuacion (+ 2 ?puntuacion))
	;;			(bind ?descripcion (str-cat " ademas de ser temporada de invierno y ser un plato caliente" ?descripcion))
	;;)

	;;(if (and (eq ?temporada Primavera) (eq (send ?plato get-Caliente) FALSE))
	;;		then
	;;			(bind ?puntuacion (+ 1 ?puntuacion))
	;;			(bind ?descripcion (str-cat " ademas de ser temporada de primavera y ser un plato frio" ?descripcion))
	;;)

	;;(if (and (eq ?temporada Verano) (eq (send ?plato get-Caliente) FALSE))
	;;	 then
	;;	 		(bind ?puntuacion (+ 2 ?puntuacion))
	;;			(bind ?descripcion (str-cat " ademas de ser temporada de verano y ser un plato frio" ?descripcion))
	;;)

	(send ?self put-Puntuacion (+ ?puntuacion (send ?self get-Puntuacion)))
	(bind ?descripcion (str-cat "+" (str-cat ?puntuacion (str-cat " --> " ?descripcion))))
	(slot-insert$ ?self DescripcionPuntos (+ 1 (length$ ?self:DescripcionPuntos)) ?descripcion)
)

(defmessage-handler MAIN::PlatoAbstracto tiene-misma-categoria "Handler que nos devuelve cierto si
	el plato tiene la misma categoria que la pasada por parametro y falso en caso contrario" (?categoria)
	(eq ?self:Categoria ?categoria)
)

(defmessage-handler MAIN::PlatoAbstracto tiene-misma-subCategoria "Handler que nos devuelve cierto si
	el plato tiene la misma sub-categoria que la pasada por parametro y falso en caso contrario" (?subCategoria)
	(eq ?self:SubCategoria ?subCategoria)
)

(defmessage-handler MAIN::PlatoAbstracto es-primero "Handler que nos devuelve cierto si el plato
 	que contiene un plato abstracto es primero y falso en caso contrario" ()
	;;(eq (class ?self:Plato) Primero)

	(bind ?puntos 0)
	(bind ?descripcion "No tiene bonificacion sobre la temporada")

	(bind ?plato (send ?self get-Plato))

	(bind $?listaOrden (send ?plato get-OrdenPlato))
	(bind ?lenLista (length$ ?listaOrden))

	(loop-for-count (?i 1 ?lenLista) do
		(bind ?tipo_i (nth$ ?i ?listaOrden))
		(if (eq Primero ?tipo_i)
			then (bind ?puntos 1)
		)
	)
	(eq ?puntos 1)
)

(defmessage-handler MAIN::PlatoAbstracto es-segundo "Handler que nos devuelve cierto si el plato
 	que contiene un plato abstracto es segundo y falso en caso contrario" ()
	;;(eq (class ?self:Plato) Segundo)

	(bind ?puntos 0)
	(bind ?descripcion "No tiene bonificacion sobre la temporada")

	(bind ?plato (send ?self get-Plato))

	(bind $?listaOrden (send ?plato get-OrdenPlato))
	(bind ?lenLista (length$ ?listaOrden))

	(loop-for-count (?i 1 ?lenLista) do
		(bind ?tipo_i (nth$ ?i ?listaOrden))
		(if (eq Segundo ?tipo_i)
			then (bind ?puntos 1)
		)
	)
	(eq ?puntos 1)
)

(defmessage-handler MAIN::PlatoAbstracto es-postre "Handler que nos devuelve cierto si el plato
 	que contiene un plato abstracto es postre y falso en caso contrario" ()
	;;(eq (class ?self:Plato) Postre)

	(bind ?puntos 0)
	(bind ?descripcion "No tiene bonificacion sobre la temporada")

	(bind ?plato (send ?self get-Plato))

	(bind $?listaOrden (send ?plato get-OrdenPlato))
	(bind ?lenLista (length$ ?listaOrden))

	(loop-for-count (?i 1 ?lenLista) do
		(bind ?tipo_i (nth$ ?i ?listaOrden))
		(if (eq Postre ?tipo_i)
			then (bind ?puntos 1)
		)
	)
	(eq ?puntos 1)
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					HANDLER INGREDIENTE					 		---------- 				
;;;-----------------------------------------------------------------------------------------------------------------------------------------

(defmessage-handler Ingrediente es-ingrediente-temporal ()
	(if (or (eq ?self:Temp Primavera) (eq ?self:Temp Verano) (eq ?self:Temp Otono) (eq ?self:Temp Invierno))
		then TRUE
		else FALSE
	)
)

(defmessage-handler Ingrediente es-ingrediente-temporada (?temporada)
  (if (eq ?temporada Primavera)
      then (if (eq ?self:Temp Primavera)
              then TRUE
              else FALSE
      )
      else (if (eq ?temporada Verano)
          then (if (eq ?self:Temp Verano)
              then TRUE
              else FALSE
          )
          else (if (eq ?temporada Otono)
              then (if (eq ?self:Temp Otono)
                  then TRUE
                  else FALSE
              )
              else (if (eq ?temporada Invierno)
              	then (if (eq ?self:Temp Invierno)
                  then TRUE
                  else FALSE
		)
              )
          )
      )
  )
)



(defmessage-handler MAIN::MenuAbstracto tienen-primero-igual "Handler que devuelve cierto si el
	menu implicito comparten primero con el menu pasado por parametro" (?menu)

	(bind ?miPlato (send ?self:Menu get-Relacion_Menu_Primero))
	(bind ?suPlato (send (send ?menu get-Menu) get-Relacion_Menu_Primero))

	(if (eq (send ?miPlato get-Nombre) (send ?suPlato get-Nombre))
		then TRUE
		else FALSE
	)
)

(defmessage-handler MAIN::MenuAbstracto tienen-segundo-igual "Handler que devuelve cierto si el
	menu implicito comparten segundo con el menu pasado por parametro" (?menu)

	(bind ?miPlato (send ?self:Menu get-Relacion_Menu_Segundo))
	(bind ?suPlato (send (send ?menu get-Menu) get-Relacion_Menu_Segundo))

	(if (eq (send ?miPlato get-Nombre) (send ?suPlato get-Nombre))
		then TRUE
		else FALSE
	)
)

(defmessage-handler MAIN::MenuAbstracto tienen-postre-igual "Handler que devuelve cierto si el
	menu implicito comparten postre con el menu pasado por parametro" (?menu)
	(bind ?miPlato (send ?self:Menu get-Relacion_Menu_Postre))
	(bind ?suPlato (send (send ?menu get-Menu) get-Relacion_Menu_Postre))

	(if (eq (send ?miPlato get-Nombre) (send ?suPlato get-Nombre))
		then TRUE
		else FALSE
	)
)

(defmessage-handler MAIN::MenuAbstracto generar-menu "Handler que inicializa un menu en base a la
	categoria y sub-categoria de los platos que lo componen asi como las restricciones a tener en
	en consideracion" (?categoria ?subCategoria ?restriccion)

	(bind ?indiceMaxPrimero 0)
	(bind ?indiceMaxSegundo 0)
	(bind ?indiceMaxPostre 0)

	(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))

	;Seleccionamos el primero con puntuacion maxima
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))

		(if (and (send ?platoAbstracto tiene-misma-categoria ?categoria)
						 (send ?platoAbstracto tiene-misma-subCategoria ?subCategoria))
				then (if (send ?platoAbstracto cumple-restriccion ?restriccion)
							then (if (send ?platoAbstracto es-primero)
										then (if (= ?indiceMaxPrimero 0)
													then (bind ?indiceMaxPrimero ?i)
													else (if (< (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Puntuacion)
														    			(send ?platoAbstracto get-Puntuacion))
																			then (bind ?indiceMaxPrimero ?i))
										)
										)
							)
				)
	)

	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
		(if (send ?platoAbstracto es-segundo)
			then
				(if (member (send ?platoAbstracto get-Plato) (send (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Plato) get-Platos_Incompatibles))
					then
						(send ?platoAbstracto put-Puntuacion (- 5 (send ?platoAbstracto get-Puntuacion)))
				)
		)
	)
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))

		(if (and (send ?platoAbstracto tiene-misma-categoria ?categoria)
						 (send ?platoAbstracto tiene-misma-subCategoria ?subCategoria))
				then (if (send ?platoAbstracto cumple-restriccion ?restriccion)
							then (if (send ?platoAbstracto es-segundo)
										then (if (= ?indiceMaxSegundo 0)
													then (bind ?indiceMaxSegundo ?i)
													else (if (< (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Puntuacion)
													 						(send ?platoAbstracto get-Puntuacion))
																			then (bind ?indiceMaxSegundo ?i))
										)
										else (if (send ?platoAbstracto es-postre)
											then
												(if (= ?indiceMaxPostre 0)
														then (bind ?indiceMaxPostre ?i)
														else (if (< (send (nth$ ?indiceMaxPostre ?listaPlatosAbstractos) get-Puntuacion)
																				(send ?platoAbstracto get-Puntuacion))
																				then (bind ?indiceMaxPostre ?i))
												)
										)
									)
					)

				)
	)

	(bind ?menu (make-instance (sym-cat menu-MenuAbstracto- (gensym)) of Menu))
	(send ?menu put-Relacion_Menu_Primero (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Plato))
	(send ?menu put-Relacion_Menu_Segundo (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Plato))
	(send ?menu put-Relacion_Menu_Postre  (send (nth$ ?indiceMaxPostre  ?listaPlatosAbstractos) get-Plato))
	(send ?self put-Menu ?menu)
	(send ?self put-Precio
		(+ (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Precio)
		(+ (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Precio)
		(send (nth$ ?indiceMaxPostre ?listaPlatosAbstractos) get-Precio))))
)

(defmessage-handler MAIN::VinoAbstracto imprimir-carta "Handler que imprime la informacion del vino
	por la salida estandard"()
	(bind ?vino (send ?self get-Vino))
	(bind ?tipo (class (instance-address * ?vino)))
	(bind ?numChars 0)
	(printout t "*|                                                                            |*" crlf)

	(bind ?text (format   nil "*|          Acompanado con una copa de %s (%s)" (send ?self get-Nombre) ?tipo))
	(printout t ?text)
	(bind ?numeroCharacters (str-length ?text))
	(loop-for-count (?i ?numeroCharacters 77) do
		(printout t " ")
	)
	(printout t "|*" crlf)

	(printout t "*|                                                                            |*" crlf)
)

(defmessage-handler MAIN::VinoAbstracto calcula-sub-categoria "Handler que calcula la sub-categoria
	dado dos parametros: Bajo  -> [0...precioMedio)
                       Medio -> [precioMedio...precioAlto)
                       Alto  -> [precioAlto...Inf)" (?precioMedio ?precioAlto)

	(bind ?precio (send ?self:Vino get-PrecioR))
	(if (< ?precio ?precioMedio)
      then (send ?self put-SubCategoria Bajo)
      else (if (and (>= ?precio ?precioMedio) (< ?precio ?precioAlto))
            then (send ?self put-SubCategoria Medio)
            else (send ?self put-SubCategoria Alto)
      )
  )
)

(defmessage-handler MAIN::VinoAbstracto calcula-categoria "Handler que calcula la categoria y su
	sub-categoria en base al precio del plato" ()

  (bind ?precio (send ?self:Vino get-PrecioR))
  (if (<= ?precio 5)				;;; Vinos pvp = 5 -> bajo
        then (send ?self put-Categoria Bajo)
             (send ?self calcula-sub-categoria 3.0 5.0)
        else (if (and (> ?precio 5) (<= ?precio 10))
              	then 	(send ?self put-Categoria Medio) 	;;; Vinos pvp = 10 -> medio
                   		(send ?self calcula-sub-categoria 7.0 9.0)
		            else 	(send ?self put-Categoria Alto)		;;; Vinos pvp >= 15 -> alto
		                 	(send ?self calcula-sub-categoria 13.0 16.0)
        )
  )
)

(defmessage-handler MAIN::VinoAbstracto categoria-correcta "Handler que nos devuelve cierto si
	el plato tiene la misma categoria que la pasada por parametro y falso en caso contrario" (?categoria)
	(eq ?self:Categoria ?categoria)
)

(defmessage-handler MAIN::VinoAbstracto subcategoria-correcta "Handler que nos devuelve cierto si
	el plato tiene la misma sub-categoria que la pasada por parametro y falso en caso contrario" (?subCategoria)
	(eq ?self:SubCategoria ?subCategoria)
)




;;;-----------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					FUNCIONES	CALCULOS				 		---------- 			
;;;-----------------------------------------------------------------------------------------------------------------------------------------



(deffunction calcular-platos-abstractos "Funcion que genera y inicializa los platos abstracto" ()
	(bind ?platos (find-all-instances ((?inst Plato)) TRUE))
	(loop-for-count (?i 1 (length$ ?platos)) do
		(bind ?plato (nth$ ?i ?platos))
		(bind ?platoAbstracto (make-instance (sym-cat platoAbstracto- (gensym)) of PlatoAbstracto))
		(send ?platoAbstracto put-Plato ?plato)
		(send ?platoAbstracto calcula-categoria)
		;;(send ?platoAbstracto put-Complejidad (send ?plato get-Complejidad))
	)
)

(deffunction calcular-vinos-abstractos "Funcion que genera y inicializa los vinos abstractos" ()
	(bind ?listaVinos (find-all-instances ((?inst Vino)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaVinos)) do
		(bind ?vino (nth$ ?i ?listaVinos))
		(bind ?vinoAbstracto (make-instance (sym-cat vinoAbstracto- (gensym)) of VinoAbstracto))
		(send ?vinoAbstracto put-Vino ?vino)
		(send ?vinoAbstracto calcula-categoria)
		(send ?vinoAbstracto put-Nombre (send ?vino get-Nombre))
		(send ?vinoAbstracto put-PrecioR (send ?vino get-PrecioR))
	)
)

(deffunction buscar-vino "Funcion que devuelve el vino candidato que mejor se adapta a una categoria
	y sub-categoria dada" (?tipoVino ?categoria ?subCategoria)
	(bind ?listaVinosAbstractos (find-all-instances ((?inst VinoAbstracto)) TRUE))
	(bind ?candidato (nth$ 1 ?listaVinosAbstractos))

	(bind ?i 1)
	(bind ?correcto FALSE)
	(while (and (<= ?i (length$ ?listaVinosAbstractos)) (not ?correcto)) do
		(bind ?vinoAbstracto (nth$ ?i ?listaVinosAbstractos))
		(bind ?vino (send ?vinoAbstracto get-Vino))
		(bind ?tipo (class (instance-address * ?vino)))

		(if (and (eq ?tipo ?tipoVino) (and (send ?vinoAbstracto categoria-correcta ?categoria)
																			 (send ?vinoAbstracto subcategoria-correcta ?subCategoria)))
			 then
			 			(bind ?correcto TRUE)
						(bind ?candidato ?vinoAbstracto)
		)
		(bind ?i (+ ?i 1))
	)

	?candidato
)

(deffunction generar-menu "genera los menus" (?categoria ?subCatecoria ?numComensales ?numAlergicosFruta ?numAlergicosLactosa ?numAlergicosMarisco ?numAlergicosPescado ?numComensalesVino ?siQuiereVino ?alcohol ?numComensalesNinos)
	
	(bind ?numGenteConRestriccion (+ ?numAlergicosFruta (+ ?numAlergicosLactosa (+ ?numAlergicosMarisco ?numAlergicosPescado))))
	(bind ?menuGeneral (make-instance (gensym) of MenuAbstracto))
	(bind ?menuSinFruta (make-instance (gensym) of MenuAbstracto))
	(bind ?menuSinLactosa (make-instance (gensym) of MenuAbstracto))
	(bind ?menuSinMarisco (make-instance (gensym) of MenuAbstracto))
	(bind ?menuSinPescado (make-instance (gensym) of MenuAbstracto))
	(bind ?menuNinos (make-instance (gensym) of MenuAbstracto))

	(if (< ?numGenteConRestriccion (* 0.5 ?numComensales))
		then (send ?menuGeneral generar-menu ?categoria ?subCategoria Ninguna)
	)

	(if (> ?numAlergicosFruta 0)
		then (send ?menuSinFruta generar-menu ?categoria ?subCategoria Fruta)
	)

	(if (> ?numAlergicosLactosa 0)
		then (send ?menuSinLactosa generar-menu ?categoria ?subCategoria Lactosa)
	)

	(if (> ?numAlergicosMarisco 0)
		then (send ?menuSinMarisco generar-menu ?categoria ?subCategoria Marisco)
	)

	(if (> ?numAlergicosPescado 0)
		then (send ?menuSinPescado generar-menu ?categoria ?subCategoria Pescado)
	)

	(if (> ?numComensalesNinos 0)
		then (send ?menuNinos generar-menu ?categoria ?subCategoria Ninos)
	)

	(bind ?alternativaSinFruta FALSE)
	(bind ?alternativaSinLactosa FALSE)
	(bind ?alternativaSinLMarisco FALSE)
	(bind ?alternativaSinPescado FALSE)
	(bind ?alternativaGeneral FALSE)

	(printout t "================================================================================" crlf)
	(printout t "|                                                                              |" crlf)
	(if (eq ?subCategoria Bajo)
		then
		(printout t "|                              Menu Precio Bajo                                  |" crlf)
		else
			(if (eq ?subCategoria Medio)
				then
				(printout t "|                            Menu Precio Medio                                 |" crlf)
				else
				(printout t "|                             Menu Precio Alto                                      |" crlf)
			)
	)
	(printout t "===============================================================================|" crlf)

	(printout t "*|    - PRIMERO -                         |*" crlf)
	(if (< ?numGenteConRestriccion (* 0.5 ?numComensales))
		then (send ?menuGeneral imprimir-plato Primero)
		(bind ?alternativaGeneral TRUE)
	)

	(if (> ?numAlergicosFruta 0)
		then (if (or (not (< ?numGenteConRestriccion (* 0.5 ?numComensales))) (not (send ?menuSinFruta tienen-primero-igual ?menuGeneral)))
				then
					(printout t "*|          Sin fruta                                                  |*" crlf)
					(send ?menuSinFruta imprimir-plato Primero)
					(bind ?alternativaSinFruta TRUE)
		)
	)

	(if (> ?numAlergicosLactosa 0)
		then (if (or (not (< ?numGenteConRestriccion (* 0.5 ?numComensales))) (not (send ?menuSinLactosa tienen-primero-igual ?menuGeneral)))
				then (if (or (not (> ?numAlergicosFruta 0)) (not (send ?menuSinLactosa tienen-primero-igual ?menuSinFruta)))
					then
						(printout t "*|          Sin lactosa                                                   |*" crlf)
						(send ?menuSinLactosa imprimir-plato Primero)
						(bind ?alternativaSinLactosa TRUE)
				  )
		  )
	)

	(if (> ?numAlergicosMarisco 0)
		then (if (or (not (< ?numGenteConRestriccion (* 0.5 ?numComensales))) (not (send ?menuSinMarisco tienen-primero-igual ?menuGeneral)))
				then (if (or (not (> ?numAlergicosFruta 0)) (not (send ?menuSinMarisco tienen-primero-igual ?menuSinFruta)))
					then (if (or (not (> ?numAlergicosLactosa 0)) (not (send ?menuSinMarisco tienen-primero-igual ?menuSinLactosa)))
					    then
						(printout t "*|          Sin Marisco                                                   |*" crlf)
						(send ?menuSinMarisco imprimir-plato Primero)
						(bind ?alternativaSinMarisco TRUE)
				  	)
				  )
		  )
	)

	(if (> ?numAlergicosPescado 0)
		then (if (or (not (< ?numGenteConRestriccion (* 0.5 ?numComensales))) (not (send ?menuSinPescado tienen-primero-igual ?menuGeneral)))
				then (if (or (not (> ?numAlergicosFruta 0)) (not (send ?menuSinPescado tienen-primero-igual ?menuSinFruta)))
					then (if (or (not (> ?numAlergicosLactosa 0)) (not (send ?menuSinPescado tienen-primero-igual ?menuSinLactosa)))
					    then (if (or (not (> ?numAlergicosMarisco 0)) (not (send ?menuSinPescado tienen-primero-igual ?menuSinMarisco)))
					       then
						(printout t "*|          Sin Pescado                                                  |*" crlf)
						(send ?menuSinPescado imprimir-plato Primero)
						(bind ?alternativaSinPescado TRUE)
				  	    )
				  	)
				  )
		  )
	)

	(if (> ?numComensalesNinos 0)
		then
			(printout t "*|          Menu Ninos:                                                |*" crlf)
			(send ?menuNinos imprimir-plato Primero)
	)

	(printout t "*|     - SEGUNDO -                        |*" crlf)

	(bind ?precioVinoGeneral 0)
	(bind ?precioVinoSinLactosa 0)
	(bind ?totalVinos 0)

	(if (< ?numGenteConRestriccion (* 0.5 ?numComensales)) ; imprimir menu normal
		then (send ?menuGeneral imprimir-plato Segundo)
		(if ?siQuiereVino
							then
								(bind ?listaIngredientes ?menuSinLactosa get-Ingredientes)
								(loop-for-count (?i 1 (length$ ?listaIngredientes)) do
									(bind ?ingrediente (nth$ ?i $?listaIngredientes))
									(bind ?tipoIngrediente(class (instance-address * ?ingrediente)))
											(if (or (eq ?tipoIngrediente Marisco) (eq ?tipoIngrediente Pescado))
												then (bind ?tipoVino Blanco)
													else (bind ?tipoVino Tinto)
											)

								)

								(bind ?vino (buscar-vino ?tipoVino ?categoria ?subCategoria))
								(bind ?precioVinoSinLactosa (send ?vino get-PrecioR))
								(bind ?totalVinos (+ 1 ?totalVinos))
								(send ?vino imprimir-carta)
		)
		(bind ?alternativaGeneral TRUE)
	)


	(if (> ?numAlergicosLactosa 0)
		then (if (or (not (< ?numGenteConRestriccion (* 0.5 ?numComensales))) (not (send ?menuSinLactosa tienen-segundo-igual ?menuGeneral)))
					then
						(printout t "*|          Sin lactosa                                                   |*" crlf)
						(send ?menuSinLactosa imprimir-plato Segundo)
						(if ?siQuiereVino
							then
								(bind ?listaIngredientes ?menuSinLactosa get-Ingredientes)
								(loop-for-count (?i 1 (length$ ?listaIngredientes)) do
									(bind ?ingrediente (nth$ ?i $?listaIngredientes))
									(bind ?tipoIngrediente(class (instance-address * ?ingrediente)))
											(if (or (eq ?tipoIngrediente Marisco) (eq ?tipoIngrediente Pescado))
												then (bind ?tipoVino Blanco)
													else (bind ?tipoVino Tinto)
											)

								)

								(bind ?vino (buscar-vino ?tipoVino ?categoria ?subCategoria))
								(bind ?precioVinoSinLactosa (send ?vino get-PrecioR))
								(bind ?totalVinos (+ 1 ?totalVinos))
								(send ?vino imprimir-carta)
						)
						(bind ?alternativaSinLactosa TRUE)
		  )
	)

	(if (> ?numComensalesNinos 0)
		then
			(printout t "*|          Menu Ninos:                                             |*" crlf)
			(send ?menuNinos imprimir-plato Segundo)
	)

	(printout t "*|     - POSTRE -			|*" crlf)
	(if (< ?numGenteConRestriccion (* 0.5 ?numComensales)) 
		then (send ?menuGeneral imprimir-plato Postre)
		(bind ?alternativaGeneral TRUE)
	)
	(if (> ?numAlergicosFruta 0)
		then (if (or (not (< ?numGenteConRestriccion (* 0.5 ?numComensales))) (not (send ?menuSinFruta tienen-postre-igual ?menuGeneral)))
				then
					(printout t "*|          Sin fruta                                                    |*" crlf)
					(send ?menuSinFruta imprimir-plato Postre)
					(bind ?alternativaSinFruta TRUE)
		)
	)

	(if (> ?numAlergicosLactosa 0)
		then (if (or (not (< ?numGenteConRestriccion (* 0.5 ?numComensales))) (not (send ?menuSinLactosa tienen-postre-igual ?menuGeneral)))
				then (if (or (not (> ?numAlergicosFruta 0)) (not (send ?menuSinLactosa tienen-postre-igual ?menuSinFruta)))
					then
						(printout t "*|          Sin lactosa                                                  |*" crlf)
						(send ?menuSinLactosa imprimir-plato Postre)
						(bind ?alternativaSinLactosa TRUE)
				  )
		  )
	)

	(if (> ?numAlergicosMarisco 0)
		then (if (or (not (< ?numGenteConRestriccion (* 0.5 ?numComensales))) (not (send ?menuSinMarisco tienen-postre-igual ?menuGeneral)))
				then (if (or (not (> ?numAlergicosFruta 0)) (not (send ?menuSinMarisco tienen-postre-igual ?menuSinFruta)))
					then (if (or (not (> ?numAlergicosLactosa 0)) (not (send ?menuSinMarisco tienen-postre-igual ?menuSinLactosa)))
					   then
						(printout t "*|          Sin Marisco                                                   |*" crlf)
						(send ?menuSinMarisco imprimir-plato Postre)
						(bind ?alternativaSinMarisco TRUE)
				  	)
				  )
		  )
	)

	(if (> ?numAlergicosPescado 0)
		then (if (or (not (< ?numGenteConRestriccion (* 0.5 ?numComensales))) (not (send ?menuSinPescado tienen-postre-igual ?menuGeneral)))
				then (if (or (not (> ?numAlergicosFruta 0)) (not (send ?menuSinPescado tienen-postre-igual ?menuSinFruta)))
					then (if (or (not (> ?numAlergicosLactosa 0)) (not (send ?menuSinPescado tienen-postre-igual ?menuSinLactosa)))
					    then (if (or (not (> ?numAlergicosMarisco 0)) (not (send ?menuSinPescado tienen-postre-igual ?menuSinMarisco)))
					   	then
						(printout t "*|          Sin Pescado                                                   |*" crlf)
						(send ?menuSinPescado imprimir-plato Postre)
						(bind ?alternativaSinPescado TRUE)
				  	     )
				  	)
				  )
		  )
	)

	(if (> ?numComensalesNinos 0)
		then
			(printout t "*|          Menu Ninos:                                                |*" crlf)
			(send ?menuNinos imprimir-plato Postre)
	)

	(printout t "*|                                                                            |*" crlf)
	(printout t "*|                                                                            |*" crlf)
	(printout t "*|                        ----------------------                              |*" crlf)
	(bind ?total 0)
	(if ?alternativaGeneral
		then
			(bind ?total (* (send ?menuGeneral get-Precio) (- ?numComensales ?numGenteConRestriccion)))
			(format t "*|              Precio Menu              :         %05.2f  (%02d)                |*%n" (send ?menuGeneral get-Precio) (- ?numComensales ?numGenteConRestriccion))

	)

	(if ?alternativaSinFruta
		then
			(if (not ?alternativaGeneral)
				then (bind ?numAlergicosFruta (+ ?numAlergicosFruta (* 0.33 (- ?numComensales ?numGenteConRestriccion))))
			)
			(bind ?total (+ ?total (* (send ?menuSinFruta get-Precio) ?numAlergicosFruta)))
			(format t "*|              Precio Menu (sin fruta) :         %05.2f  (%02d)                |*%n" (send ?menuSinFruta get-Precio) ?numAlergicosFruta)
	)

	(if ?alternativaSinLactosa
		then
			(if (not ?alternativaGeneral)
				then (bind ?numAlergicosLactosa (+ ?numAlergicosLactosa (* 0.33 (- ?numComensales ?numGenteConRestriccion))))
			)
			(bind ?total (+ ?total (* (send ?menuSinLactosa get-Precio) ?numAlergicosLactosa)))
			(format t "*|              Precio Menu (sin lactosa):         %05.2f  (%02d)                |*%n" (send ?menuSinLactosa get-Precio) ?numAlergicosLactosa)
	)

	(if ?alternativaSinMarisco
		then
			(if (not ?alternativaGeneral)
				then (bind ?numAlergicosMarisco (+ ?numAlergicosMarisco (* 0.33 (- ?numComensales ?numGenteConRestriccion))))
			)
			(bind ?total (+ ?total (* (send ?menuSinMarisco get-Precio) ?numAlergicosMarisco)))
			(format t "*|              Precio Menu (sin Marisco):         %05.2f  (%02d)                |*%n" (send ?menuSinMarisco get-Precio) ?numAlergicosMarisco)
	)

	(if ?alternativaSinPescado
		then
			(if (not ?alternativaGeneral)
				then (bind ?numAlergicosPescado (+ ?numAlergicosPescado (* 0.33 (- ?numComensales ?numGenteConRestriccion))))
			)
			(bind ?total (+ ?total (* (send ?menuSinPescado get-Precio) ?numAlergicosPescado)))
			(format t "*|              Precio Menu (sin Pescado):         %05.2f  (%02d)                |*%n" (send ?menuSinPescado get-Precio) ?numAlergicosPescado)
	)

	(if (> ?numComensalesNinos 0)
		then
			(bind ?total (+ ?total (+ (* ?numComensalesNinos (send ?menuNinos get-Precio))
																			(* ?numComensalesNinos 0.80))))
			(format t "*|              Precio Menu Ninos   :         %05.2f  (%02d)                |*%n" (send ?menuNinos get-Precio) ?numComensalesNinos)
			(format t "*|              Precio Refrescos :          0.80   (%02d)                |*%n" ?numComensalesNinos)
	)

	(if ?siQuiereVino
		then
			(bind ?precioVino (/ (+ ?precioVinoGeneral
												         (+ ?totalVinos ?precioVinoSinLactosa))))
			(bind ?total (+ ?total (* ?precioVino ?numComensalesVino)))
			(format t "*|              Precio Vino              :         %05.2f  (%02d)                |*%n" ?precioVino ?numComensalesVino)
	)

	(if  (and ?alcohol (< ?numComensalesVino (- ?numComensales ?numComensalesNinos)))
		then
			(bind ?totalAlcohol (- ?numComensales ?numComensalesNinos))
			(format t "*|              Precio bebida alcoholica           :         1.20  (%d)                 |*%n" ?totalAlcohol)
			(bind ?total (+ ?total (* 1.20 ?totalAlcohol)))
	)

	(format t "*|             Total                 :         %06.2f                     |*%n" ?total)
	(printout t "*|                                                                            |*" crlf)

)

 


;;;---------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE PREGUNTAS				 		---------- 		
;;;---------------------------------------------------------------------------------------------------------------------------

;; En este se le haran las preguntas al cliente
;; para obtener la informacion de sus restricciones y/o preferencias 

(defmodule hacer_preguntas
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule MAIN::inicio "Regla que genera la cabezera inicial"
    (declare (salience 10))
    =>
    (calcular-platos-abstractos)
		(calcular-vinos-abstractos)
    (printout t "====================================================================" crlf)
    (printout t "	Generador de menus personalizados de la empresa RICO-RICO		" crlf)
    (printout t "====================================================================" crlf)
    (printout t crlf)
    (focus recopilacion)
)

;;;; PREGUNTAS DEL EVENTO

(defrule recopilacion::temporadaEvento "regla para saber la temporada del evento"
	(Pregunta-temporadaEvento)
	(not (Pregunta-temporadaEvento))
	(nuevo_cliente)	
	?h <- (Cliente ?DNI)
	?persona <-(object (is-a Cliente)(DNI ?DNI_A))
	(test (eq (str-compare  ?DNI ?DNI_A) 0))
	=> 
	(bind ?q (pregunta-general "¿Qué temporada es? [Otono(1), invierno(2), primavera(3) o verano(4)]:  "))
	;;(bind ?restriccion (make-instance restriccionTemp1 of RestriccionTemporada))
	(switch ?q
		(case 1 then (assert(Temporada Otono)))
		(case 2 then (assert(Temporada Invierno)))
		(case 3 then (assert(Temporada Primavera)))
		(case 4 then (assert(Temporada Verano)))	
	)
	(assert (Pregunta-temporadaEvento))
)

;;;; PREGUNTAS DEL MENU

;;(defrule recopilacion::tipoMenu "regla para saber el tipo de menu del evento"
;;	(nuevo_cliente)
;;	?h <- (Cliente ?DNI)
;;	?persona <-(object (is-a Cliente)(DNI ?DNI_A))
;;	(test (eq (str-compare  ?DNI ?DNI_A) 0))
;;	=> 
;;	(bind ?q (pregunta-general "Escoja un tipo de menu: [No-especifico(1), Vegano(2), Vegetariano(3), Familiar(4), Clasico(5), No-complejo(6), Regional(7), Sibarita(8)]:  "))
;;	;;(bind ?restriccion (make-instance restriccionTemp1 of RestriccionTemporada))
;;	(switch ?q
;;		(case 1 then (assert(RestriccionMenu no-especifico)))
;;		(case 2 then (assert(RestriccionMenu vegano)))
;;		(case 3 then (assert(RestriccionMenu vegetariano)))
;;		(case 4 then (assert(RestriccionMenu familiar)))
;;		(case 5 then (assert(RestriccionMenu clasico)))
;;		(case 6 then (assert(RestriccionMenu no-complejo)))
;;		(case 7 then (assert(RestriccionMenu regional)))
;;		(case 8 then (assert(RestriccionMenu sibarita)))	
;;	)
;;)

(defrule recopilacion::numero-comensales "Pregunta al cliente el numero de comensales"
		(Pregunta-Numero-Comensales)
		(not (Pregunta-Numero-Comensales))
		?e <- (Entrada)
    =>
    (bind ?respuesta (pregunta-numerica-rango "¿Cuantos comensales sereis?" 20 500))
    (modify ?e (numComensales ?respuesta) (numGenteNormal ?respuesta))
		(assert (Pregunta-Numero-Comensales))
)

(defrule recopilacion::pregunta-tipoPlato-comida "Pregunta al cliente el tipo de platos de la comida"
		(Pregunta-tipoPlato-Comida)
		(not (Pregunta-tipoPlato-Comida))
		?e <- (Entrada)
    =>
    (bind ?respuesta (pregunta-general "Escoja un tipo de menu: [Vegano(1), Vegetariano(2), Familiar(3), Clasico(4), Empresa(5), Regional(6), Sibarita(7)]:" 1 2 3 4 5 6 7 ))
    (if (eq ?respuesta 1)
        then (modify ?e (tipoPlato Vegano))
        else (if (eq ?respuesta 2)
            then (modify ?e (tipoPlato Vegetariano))
            else (if (eq ?respuesta 3)
                then (modify ?e (tipoPlato Familiar))
		else (if (eq ?respuesta 4)
                    then (modify ?e (tipoPlato Clasico))
			else (if (eq ?respuesta 5)
                	   then (modify ?e (tipoPlato No-complejo))
				else (if (eq ?respuesta 6)
                		   then (modify ?e (tipoPlato Regional))
                			else (modify ?e (tipoPlato Sibarita))
			    )
		     )
		)
            )
        )
    )
    (assert (Pregunta-tipoPlato-Comida))
)


(defrule recopilacion::maxPrecio "regla para saber el precio maximo a gastar  "
	(Pregunta-maxPrecio)
	(not (Pregunta-maxPrecio-Completada))
	(nuevo_cliente)	
	?h <- (Cliente ?DNI)
	?persona <-(object (is-a Cliente)(DNI ?DNI_A))
	(test (eq (str-compare  ?DNI ?DNI_A) 0))
	=> 
	(bind ?maxP (pregunta-numerica "¿Precio máximo a pagar (0 -> 150)? " 0 150))
	(if (eq ?maxP 0) then (assert(precio_indiferente)) (assert(JPrecio Sistema))  
	else (if (and (> ?maxP 0)(<= ?maxP 150)) then
			(bind ?restriccion (make-instance restriccionPrecio1 of RestriccionPrecio))
		    (send ?restriccion put-PrecioR ?maxP)
	 		  ;;(slot-insert$ ?persona preferencias 1 ?restriccion)
 		     (assert (precio))
			 ;;(assert(JDedicacion Usuario)) 
		)		  
	)
	(assert (Pregunta-maxPrecio-Completada))	
)

(defrule recopilacion::pregunta-comensales-ninos "Pregunta al cliente cuantos ninos acudiran. Puede ser 0"
		(Pregunta-Comensales-Ninos)
		(not (Pregunta-Ninos-Completada))
		?e <- (Entrada (numComensales ?numComensales))
    =>
		(bind ?num (pregunta-numerica-rango "¿Cuantos ninos asistiran?" 1 (- ?numComensales 2)))
		(modify ?e (numComensalesNinos ?num))
		(assert (Pregunta-Ninos-Completada))
)

(defrule recopilacion::pregunta-vino "Pregunta al cliente si se quiere incluir vino en el menu"
		(Pregunta-Vino)
		(not (Pregunta-Vino-Completada))
		?e <- (Entrada)
		=>
		(if (pregunta-binaria "¿Se quiere incluir vino en el menu?")
        then
					(assert (Pregunta-Comensales-Vino))
					(modify ?e (vino TRUE))
        else (modify ?e (vino FALSE))
    )
		(assert (Pregunta-Vino-Completada))
)

(defrule recopilacion::pregunta-comensales-vino "Pregunta al cliente cuantos van a beber vino"
		(Pregunta-Comensales-Vino)
		(not (Pregunta-Comensales-Vino-Completada))
		?e <- (Entrada (numComensales ?numComensales))
		(Entrada (numComensalesNinos ?numComensalesNinos))
    =>
    (bind ?respuesta (pregunta-general "¿Cuantos beberan vino? (A)lgunos (M)itad Ma(y)oria (T)odos" a m y t))
		(if (eq ?respuesta a) ;;;25%
				then (modify ?e (numComensalesVino (* 0.25 (- ?numComensales ?numComensalesNinos))))
				else (if (eq ?respuesta m);;;50%
						then (modify ?e (numComensalesVino (* 0.5 (- ?numComensales ?numComensalesNinos))))
						else (if (eq ?respuesta y) ;;;75%
								then (modify ?e (numComensalesVino (* 0.75 (- ?numComensales ?numComensalesNinos))))
								else (modify ?e (numComensalesVino (- ?numComensales ?numComensalesNinos))) 
						)
				)
		)

		(assert (Pregunta-Comensales-Vino-Completada))
)

(defrule recopilacion::ingredProhibSiONo "regla para saber si tiene algun tipo de alergia o restriccion"
	(Pregunta-ingr)
	(nuevo_cliente)
	?h <- (Cliente ?DNI)
	?persona <-(object (is-a Cliente)(DNI ?DNI_A))
	(test (eq (str-compare  ?DNI ?DNI_A) 0))
	(not (Pregunta-ingr))
	=>
	(bind ?q (pregunta-general "Algun ingrediente y/o alimento que no deba ser incluido en los menus? [Si(S) No(N)]:  "))
	(switch ?q
		(case S then (assert(PreferenciasI S)))
		(case N then (assert(PreferenciasI N)))
	)
	(assert (Pregunta-ingr))
)

(defrule recopilacion::alimProhibidos "regla para saber que alimentos no quiere en los menus"
	(Pregunta-Alergias)
	(PreferenciasI S)
	(nuevo_cliente)
	;;(Restric)
	(not(FI))
	(not (Pregunta-Alergias))
	=>
	(printout t "Indique alergenos o alimentos que no desee incluir en los menus: " crlf)
	(printout t "1. Fruta " crlf)
	(printout t "2. Lactosa " crlf)
	(printout t "3. Marisco " crlf)
	(printout t "4. Pescado " crlf)
	(printout t crlf)
	(bind ?rest (pregunta-lista "Separe los numeros de los alimentos mediante un espacio en blanco (en caso de haber varios) : "))

	(progn$ (?it ?rest)	; Para cada uno de los elementos seleccionados
		(switch ?it
			(case 1 then   (assert(RestriccionIngrediente Fruta)))
			(case 2 then   (assert(RestriccionIngrediente Lactosa)))
			(case 3 then   (assert(RestriccionIngrediente Marisco)))
			(case 4 then   (assert(RestriccionIngrediente Pescado)))
        	)
     	)
	(assert (Pregunta-Alergias))
)

(defrule recopilacion::pregunta-tipo-alergiasF "Pregunta al cliente por el tipo de alergias"
	(RestriccionIngrediente Fruta)
	?e <- (Pregunta-Tipo-AlergiasF)
	(not (Pregunta-Tipo-AlergiasF-Completada))
	?alergias <- (Entrada)
	(Entrada (numGenteNormal ?numComensales))
	(Entrada (numAlergicosFruta ?numAlergicosFruta))
	=>
	(retract ?e)
	(assert (Pregunta-Tipo-AlergiasF))
	(bind ?lista (create$ Fruta Volver))
	(bind ?opcion (pregunta-lista ?lista))
	(if (= ?opcion (length$ ?lista))
		then (assert (Pregunta-Tipo-AlergiasF-Completada))
		else
			(if (= ?opcion 1)
				then
							(bind ?numComensales (+ ?numComensales ?numAlergicosFruta))
							(bind ?respuesta (pregunta-numerica-rango "Cuantas personas no van a tomar fruta?" 0 ?numComensales))
							(modify ?alergias (numAlergicosFruta ?respuesta) (numGenteNormal (- ?numComensales ?respuesta)))
			)
	)
)

(defrule recopilacion::pregunta-tipo-alergiasL "Pregunta al cliente por el tipo de alergias"
	(RestriccionIngrediente Lactosa)
	?e <- (Pregunta-Tipo-AlergiasL)
	(not (Pregunta-Tipo-AlergiasL-Completada))
	?alergias <- (Entrada)
	(Entrada (numGenteNormal ?numComensales))
	(Entrada (numAlergicosLactosa ?numAlergicosLactosa))
	=>
	(retract ?e)
	(assert (Pregunta-Tipo-AlergiasL))
	(bind ?lista (create$ Lactosa Volver))
	(bind ?opcion (pregunta-lista ?lista))
	(if (= ?opcion (length$ ?lista))
		then (assert (Pregunta-Tipo-AlergiasL-Completada))
		else
			(if (= ?opcion 1)
				then
							(bind ?numComensales (+ ?numComensales ?numAlergicosLactosa))
							(bind ?respuesta (pregunta-numerica-rango "Cuantas personas no van a tomar lactosa?" 0 ?numComensales))
							(modify ?alergias (numAlergicosLactosa ?respuesta) (numGenteNormal (- ?numComensales ?respuesta)))
			)
	)
)

(defrule recopilacion::pregunta-tipo-alergiasM "Pregunta al cliente por el tipo de alergias"
	(RestriccionIngrediente Marisco)
	?e <- (Pregunta-Tipo-AlergiasM)
	(not (Pregunta-Tipo-AlergiasM-Completada))
	?alergias <- (Entrada)
	(Entrada (numGenteNormal ?numComensales))
	(Entrada (numAlergicosMarisco ?numAlergicosMarisco))
	=>
	(retract ?e)
	(assert (Pregunta-Tipo-AlergiasM))
	(bind ?lista (create$ Marisco Volver))
	(bind ?opcion (pregunta-lista ?lista))
	(if (= ?opcion (length$ ?lista))
		then (assert (Pregunta-Tipo-AlergiasM-Completada))
		else
			(if (= ?opcion 1)
				then
							(bind ?numComensales (+ ?numComensales ?numAlergicosMarisco))
							(bind ?respuesta (pregunta-numerica-rango "Cuantas personas no van a tomar marisco?" 0 ?numComensales))
							(modify ?alergias (numAlergicosMarisco ?respuesta) (numGenteNormal (- ?numComensales ?respuesta)))
			)
	)
)

(defrule recopilacion::pregunta-tipo-alergiasP "Pregunta al cliente por el tipo de alergias"
	(RestriccionIngrediente Pescado)
	?e <- (Pregunta-Tipo-AlergiasP)
	(not (Pregunta-Tipo-AlergiasP-Completada))
	?alergias <- (Entrada)
	(Entrada (numGenteNormal ?numComensales))
	(Entrada (numAlergicosPescado ?numAlergicosPescado))
	=>
	(retract ?e)
	(assert (Pregunta-Tipo-AlergiasP))
	(bind ?lista (create$ Pescado Volver))
	(bind ?opcion (pregunta-lista ?lista))
	(if (= ?opcion (length$ ?lista))
		then (assert (Pregunta-Tipo-AlergiasP-Completada))
		else
			(if (= ?opcion 1)
				then
							(bind ?numComensales (+ ?numComensales ?numAlergicosPescado))
							(bind ?respuesta (pregunta-numerica-rango "Cuantas personas no van a tomar pescado?" 0 ?numComensales))
							(modify ?alergias (numAlergicosPescado ?respuesta) (numGenteNormal (- ?numComensales ?respuesta)))
			)
	)
)

(defrule recopilacion::entrada-completada "Regla que comprueba que todas las preguntas han sido respondidas"
	(Pregunta-tipoPlato-Comida)
	(Pregunta-temporadaEvento)
	(Pregunta-Numero-Comensales)
	(Pregunta-maxPrecio)
	(Pregunta-Ninos)
	(Preguntar-Alcohol)
	(or (not (Pregunta-Vino)) (and (Pregunta-Vino) (Pregunta-Vino-Completada)))
	(or (not (Pregunta-Comensales-Vino)) (and (Pregunta-Comensales-Vino) (Pregunta-Comensales-Vino-Completada)))
	(Pregunta-ingr)
	(Pregunta-Alergias)
	(or (not (Pregunta-Tipo-AlergiasF)) (and (Pregunta-Tipo-AlergiasF) (Pregunta-Tipo-AlergiaFs-Completada)))
	(or (not (Pregunta-Tipo-AlergiasL)) (and (Pregunta-Tipo-AlergiasL) (Pregunta-Tipo-AlergiasL-Completada)))
	(or (not (Pregunta-Tipo-AlergiasM)) (and (Pregunta-Tipo-AlergiasM) (Pregunta-Tipo-AlergiasM-Completada)))
	(or (not (Pregunta-Tipo-AlergiasP)) (and (Pregunta-Tipo-AlergiasP) (Pregunta-Tipo-AlergiasP-Completada)))
  =>
  (focus abstraccion)
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					ABSTRACCION				 		---------- 				
;;;-----------------------------------------------------------------------------------------------------------------------------------------


(defrule abstraccion::abstraer-presupuesto "Regla que nos permite abstraer del presupuesto propuesto por
	el usuario a unos valores abstractos"

	(not (ProblemaAbstracto))
  (Entrada (presupuestoMax ?presupuestoMax))
  =>
  (if  (< ?presupuestoMax 15)
      then (assert (ProblemaAbstracto (presupuesto Bajo)))
      else (if (< ?presupuestoMax 50)
          then (assert (ProblemaAbstracto (presupuesto Medio)))
          else (if (< ?presupuestoMax 80)
              then (assert (ProblemaAbstracto (presupuesto Alto)))
              else (assert (ProblemaAbstracto (presupuesto MuyAlto)))
          )
      )
  )
)

(defrule abstraccion::abstraer-comensales "Regla que nos permite abstraer el numero de comensales
	propuesto por el usuario a unos valores abstractos"

	(not (abstraccion-comensales))
	?e <- (ProblemaAbstracto)
	(Entrada (numComensales ?numComensales))
	=>
  (if (< ?numComensales 20)
      then (modify ?e (numComensales Bajo))
      else (if (< ?numComensales 80)
          then (modify ?e (numComensales Medio))
          else (if (< ?numComensales 150)
              then (modify ?e (numComensales Alto))
              else (modify ?e (numComensales MuyAlto))
          )
      )
  )
	(assert (abstraccion-comensales))
)


(defrule abstraccion::abstraccion-completada "Regla que comprueba que todas las preguntas han sido respondidas"
	(abstraccion-comensales)
	;;(abstraccion-temporada)
  =>
 	(focus solucionConcreta)
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					SOLUCION CONCRETA				 		---------- 				
;;;-----------------------------------------------------------------------------------------------------------------------------------------


(defrule solucionConcreta::calcular-puntuaciones "Regla que calcula las puntuaciones de los platos"
	(initial-fact)
	(ProblemaAbstracto (presupuesto ?presupuesto))
	(ProblemaAbstracto (numComensales ?numComensales))
	(ProblemaAbstracto (temporada ?temporada))
	(Entrada (tipoPlato ?tipoPlato))
	=>
	(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
		(send ?platoAbstracto calcula-puntuacion-presupuesto ?presupuesto)
		(send ?platoAbstracto calcula-puntuacion-temporada ?temporada)
		(send ?platoAbstracto calcula-puntuacion-tipoPlato ?tipoPlato)
	)

	(focus solucionConcreta)
)

(defrule solucionConcreta::imprimirResultado "Imprime por pantalla los diferentes menus generados
	dependiendo de las decisiones que toma el sbc"

	(not (final))
	(Entrada (numComensales ?numComensales))
	(Entrada (numAlergicosFruta ?numAlergicosFruta))
	(Entrada (numAlergicosLactosa ?numAlergicosLactosa))
	(Entrada (numAlergicosMarisco ?numAlergicosMarisco))
	(Entrada (numAlergicosPescado ?numAlergicosPescado))
	(Entrada (numComensalesNinos ?numComensalesNinos))
	(Entrada (vino ?siQuiereVino))
	(Entrada (ninos ?ninos))
	(Entrada (alcohol ?alcohol))
	(Entrada (numComensalesVino ?numComensalesVino))
	(ProblemaAbstracto (presupuesto ?categoria))
	=>
	(if (eq ?categoria MuyAlto) then
	  (bind ?categoria Alto)
	)

	(printout t crlf)
	(printout t crlf)
	(generar-menu ?categoria Bajo ?numComensales ?numAlergicosFruta ?numAlergicosLactosa
								?numAlergicosMarisco ?numAlergicosPescado ?numComensalesVino ?siQuiereVino ?alcohol ?numComensalesNinos)
	(printout t crlf)
	(printout t crlf)
	(generar-menu ?categoria Medio ?numComensales ?numAlergicosFruta ?numAlergicosLactosa
								?numAlergicosMarisco ?numAlergicosPescado ?numComensalesVino ?siQuiereVino ?alcohol ?numComensalesNinos)
	(printout t crlf)
	(printout t crlf)
	(generar-menu ?categoria Alto ?numComensales ?numAlergicosFruta ?numAlergicosLactosa
								?numAlergicosMarisco ?numAlergicosPescado ?numComensalesVino ?siQuiereVino ?alcohol ?numComensalesNinos)
	(assert (final))
)

;;----------------------------------------------------------------------



;;(defrule recopilacion::finPreguntasAbstraccionDatos "regla para pasar al modulo siguiente"
;;      (nuevo_cliente)
;;      => 
;;	  (printout t crlf)
;;	  (printout t "Modulos: "crlf)
;;	  (printout t "Restricciones y Preferencias almacenadas" crlf)
;;      (focus inferir_datos)     
;;)


;;;---------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE INFERENCIAS DE DATOS				---------- 		
;;;---------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de preguntas

(defmodule inferir_datos
    (import MAIN ?ALL)
    (import hacer_preguntas ?ALL)
    (export ?ALL)

)

(defrule insertaRestriccionesPreferencias "añadimos los hechos de preferencias y restricciones"
	(nuevo_cliente)
	(not (RestriccionTemporada))
	(not (RestriccionIngredientes))
	(not (RestriccionesMenu))
	(not (RestriccionPrecio))
	(not (PreferenciasPrecio))
	=>
	(assert(RestriccionTemporada))
	(assert(RestriccionIngredientes))
	(assert(RestriccionesMenu))
	(assert(RestriccionPrecio))
	(assert(PreferenciasPrecio))
)
	
;; DE MENU:

(defrule r_menu "regla para establecer el menu como una restriccion "
	(nuevo_cliente)
	(menu_asumido) 
	(not (menu_asumido_rp))
	?rm <- (RestriccionMenu)
	?restricc <-(object (is-a RestriccionMenu) (TipoR ?Tr))
	(test (eq (instance-name ?restricc) [restriccionMenu1]))
	=> 
	(modify ?rm (Menu ?Tr))
	(assert(menu_asumido_rp)) 
)

(defrule finInferenciaDatos "regla para pasar al modulo siguiente"
      (nuevo_estudiante)
      => 
	  (printout t "Abstraccion de datos hecha " crlf)
     (focus expediente)     
)


;;;---------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE FILTRADO			 		---------- 			
;;;---------------------------------------------------------------------------------------------------------------------------



;;(defrule descartandoPorTemporada 


;;)

;;(defrule descartandoPorIngredientesProhib 


;;)

;;(defrule descartandoPorPrecio


;;)



;;;---------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE PRIORIDAD	DE PREFERENCIAS	 		---------- 					MODULO DE PRIORIDAD	DE PREFERENCIAS		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se valoraran las solcuiones en funcion de las preferencias
;; explicitadas por el aluno y las inferidas del expediente para dar un valor cuantitativo a cada solucion

;;(defmodule valorar_preferencias
;;	(import MAIN ?ALL) 
;;	(import inferir_datos ?ALL)  
;;	;;(import evento ?ALL)
;;	(export ?ALL)
;;)





;;(defrule finvalorarpreferencias	"regla para pasar al modulo siguiente"
;;	(nuevo_estudiante)
;;	=> 
;;	(printout t "Refinamiento hecho.....mostrando solucion " crlf) 
;;	(focus recomendaciones) 
;;)

