export class Clientes{
    ID_CLIENTE: number = 0;
    NOMBRE_APELLIDO: string = "";
    TELEFONO: string = "";
    CEDULA: string = "";
}

export class Facturas{
    ID_FACTURAS: number = 0;
    MONTO_SOLICITADO: number = 0;
    TASA: number = 0;
    CUOTAS: number = 0;
    CUOTAS_MENSUALES: number = 0;
    CAPITAL: number = 0;
    INTERES: number = 0;
    PAGO_NUEVO: number = 0;
    PAGO_REALIZADO: number = 0;
    FECHA: Date = new Date();
    CLIENTE_ID: number = 0;
    NOMBRE_APELLIDO: string = "";
    TELEFONO: string = "";
    CEDULA: string = "";
}

export class HistorialFacturas{
    ID_HISTORIALFACTURA: number = 0;
    MONTO_SOLICITADO: number = 0;
    TASA: number = 0;
    CUOTAS: number = 0;
    CUOTAS_MENSUALES: number = 0;
    CAPITAL: number = 0;
    INTERES: number = 0;
    PAGO_NUEVO: number = 0;
    PAGO_REALIZADO: number = 0;
    FECHA: Date = new Date();
    FACTURA_ID: number = 0;
    CLIENTE_ID: number = 0;
    NOMBRE_APELLIDO: string = "";
    TELEFONO: string = "";
    CEDULA: string = "";
}