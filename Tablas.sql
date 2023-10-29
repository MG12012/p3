Create table DimAirlines
(AerolineaKey int not null,
IdAerolinea int null,
Codigo varchar (100) null,
Descripcion varchar (100) null
constraint PK_DimAirlines primary key (AerolineaKey)
)
Create table DimDest
(DestinoKey int not null,
IdDestino int null,
Destino int null,
DestinoCiudadNombre varchar (100) null,
DestinoEstado varchar (100) null,
constraint PK_DimDest primary key (DestinoKey)
)

Create table DimFecha
(FechaKey int not null,
IdFecha int null,
Anio int null,
Quarterr int null, 
Mes int null,
DiaDelMes int null,
DiaDeSemana int null,
FechaVuelo datetime
constraint PK_DimFecha primary key (FechaKey)
)

Create table DimOrigin
(OrigenKey int not null,
IdOrigen int null,
Origen varchar (100) null,
OrigenCiudadNombre varchar (100) null,
OrigenEstado varchar (100) null
constraint PK_DimOrigin primary key (OrigenKey)
)

Create table FactFlight
(VueloKey int not null,
AerolineaKey int null,
DestinoKey int null,
FechaKey int null,
OrigenKey int null,
Cancelado varchar (100) null,
Desviado float null,
SalidaRetrasada varchar (100) null,
SeguridadRetrasada varchar (100) null,
LlegadaaRetraso varchar (100) null,
TransportistaRetraso float null,
ClimaRetraso int null,
NASRetraso varchar (100) null,
AeronaveRetraso varchar (100) null
constraint PK_FactFlight primary key (VueloKey)
)


