create table cliente (
    id_cliente    INT IDENTITY(1,1),
    CodigoCliente varchar(100),
    NombreCliente varchar(100),
    TipoCliente varchar(100),
    DireccionCliente varchar(900),
    NumeroCliente varchar(100)
);

create table vendedor (
    id_vendedor    INT IDENTITY(1,1),
    CodVendedor varchar(100),
    NombreVendedor varchar(100),
    Vacacionista varchar(100)
);

create table tienda (
    id_tienda    INT IDENTITY(1,1),
    SodSuSursal varchar(100),
    NombreSucursal varchar(100),
    DireccionSucursal varchar(900),
    Region varchar(100),
    Departamento varchar(100)
);

create table producto (
    id_producto    INT IDENTITY(1,1),
    CodProducto varchar(100),
    NombreProducto varchar(100),
    MarcaProducto varchar(100),
    Categoria varchar(100)
);

create table proveedor(
    id_proveedor    INT IDENTITY(1,1),
    CodProveedor  varchar(100),
    NombreProveedor  varchar(100),
    DireccionProveedor  varchar(900),
    NumeroProveedor  varchar(100),
    WebProveedor  varchar(100)
);

create table venta(
    id_venta    INT IDENTITY(1,1),
    Fecha varchar(100),
    Unidades INT,
    PrecioUnitario varchar(100),
    id_cliente INT,
    id_vendedor INT,
    id_tienda INT,
    id_producto INT
);

create table compra(
    id_compra    INT IDENTITY(1,1),
    Fecha varchar(100),
    Unidades INT,
    CostoU varchar(100),
    id_proveedor INT,
    id_tienda INT,
    id_producto INT
);