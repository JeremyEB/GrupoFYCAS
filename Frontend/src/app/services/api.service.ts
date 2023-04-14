import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Clientes, Facturas, HistorialFacturas } from '../models/Modelos';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(
    private http: HttpClient
  ) { }

  //URL's
    /*Clientes */
    urlVerClientesTodos: string = "http://127.0.0.1:8000/GrupoFycas/clientes_list"
    urlVerClientesDetalles: string = "http://127.0.0.1:8000/GrupoFycas/clientes_detalles/"
    urlAgregarCliente: string = "http://127.0.0.1:8000/GrupoFycas/creando_clientes";
    urlActualizarClientes: string = "http://127.0.0.1:8000/GrupoFycas/actualizando_clientes/"
    /*Facturas */
    urlVerFacturasTodas: string = "http://127.0.0.1:8000/GrupoFycas/facturas_list"
    urlVerFacturasDetalles: string = "http://127.0.0.1:8000/GrupoFycas/facturas_detalles/"
    urlVerFacturasDetallesCedula: string = "http://127.0.0.1:8000/GrupoFycas/facturas_detalles_cedula/" 
    urlAgregarFactura: string = "http://127.0.0.1:8000/GrupoFycas/creando_facturas"
    urlActualizarFacturas: string = "http://127.0.0.1:8000/GrupoFycas/actualizando_facturas/"
    /*Historial Facturas */
    urlVerHistorialFacturasTodas: string = "http://127.0.0.1:8000/GrupoFycas/facturas_list"
    urlVerHistorialFacturasDetalles: string = "http://127.0.0.1:8000/GrupoFycas/historialFacturas_detalles/"
    urlVerHistorialFacturasDetallesCedula: string = "http://127.0.0.1:8000/GrupoFycas/historialFacturas_detalles_cedula/"
    urlAgregarHistorialFactura: string = "http://127.0.0.1:8000/GrupoFycas/creando_historialFactura"
    urlActualizarHistorialFactura: string = "http://127.0.0.1:8000/GrupoFycas/actualizando_historialFactura/"

  //Funciones
    /*Clientes */
    getAllClientes(){
      return this.http.get(this.urlVerClientesTodos);
    }

    getClientes(clientes:Clientes){
      return this.http.get(this.urlVerClientesDetalles+`${clientes}`)
    }

    agregandoClientes(clientes:Clientes):Observable<Clientes>{
      return this.http.post<Clientes>(this.urlAgregarCliente, clientes);
    }

    actualizandoClientes(ID_CLIENTE:number, clientes:Clientes):Observable<Clientes>{
      return this.http.put<Clientes>(this.urlActualizarClientes + `${ID_CLIENTE}`, clientes)
    }

    /*Facturas*/
    getAllFacturas(){
      return this.http.get(this.urlVerFacturasTodas);
    }

    getFacturas(facturas:Facturas){
      return this.http.get(this.urlVerFacturasDetalles+`${facturas}`);
    }

    getFacturaCedula(facturas:Facturas){
      return this.http.get(this.urlVerFacturasDetallesCedula+`${facturas}`);
    }

    agregandoFacturas(facturas:Facturas):Observable<Facturas>{
      return this.http.post<Facturas>(this.urlAgregarFactura, facturas);
    }

    actualizandoFacturas(ID_FACTURAS:number, h_facturas:Facturas):Observable<Facturas>{
      return this.http.put<Facturas>(this.urlActualizarFacturas + `${ID_FACTURAS}`, h_facturas);
    }

    /*Historial Factura */

    getAllHistorialFactura(){
      return this.http.get(this.urlVerHistorialFacturasTodas);
    }

    getHistorialFacturas(h_facturas:HistorialFacturas){
      return this.http.get(this.urlVerHistorialFacturasDetalles+`${h_facturas}`);
    }

    getHistorialFacturasCedula(h_facturas:HistorialFacturas){
      return this.http.get(this.urlVerHistorialFacturasDetallesCedula+`${h_facturas}`);
    }

    agregandoHistorialFactura(h_facturas:HistorialFacturas):Observable<HistorialFacturas>{
      return this.http.post<HistorialFacturas>(this.urlAgregarHistorialFactura, h_facturas);
    }
}
