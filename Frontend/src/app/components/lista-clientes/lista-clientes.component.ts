import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { debounce, debounceTime } from 'rxjs';
import { ApiService } from 'src/app/services/api.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Facturas, HistorialFacturas } from 'src/app/models/Modelos';
import pdfMake from 'pdfmake/build/pdfMake';
import pdfFonts from 'pdfmake/build/vfs_fonts';
pdfMake.vfs = pdfFonts.pdfMake.vfs;

@Component({
  selector: 'app-lista-clientes',
  templateUrl: './lista-clientes.component.html',
  styleUrls: ['./lista-clientes.component.css']
})
export class ListaClientesComponent implements OnInit {
  c_facturas: Facturas = new Facturas();
  h_facturas: HistorialFacturas = new HistorialFacturas();
  u_facturas: Facturas = new Facturas();
  control = new FormControl();
  public clientes: Array<any> = []
  public facturas: Array<any> = []
  public historial: Array<any> = []
  constructor(
    private apiService: ApiService,
    public modal: NgbModal,
    public modal2: NgbModal
  ) { }

  ngOnInit(): void {
      this.ObserverChangeSearch();
      this.ObserverChangeSearch2();
      this.ObserverChangeSearch3();
  }

  //Clientes
  ObserverChangeSearch(){
    this.control.valueChanges
      .pipe(
        debounceTime(500)
      )
      .subscribe(query=> {
        console.log(query);
        this.apiService.getClientes(query).subscribe(
          (res:any) => {
            this.clientes = res;
          },
          (object) => {
            console.log(object)
          }
        )
      })
  }

  //Modals
    //Modal Prestamo
    onAddFacturas(facturas:Facturas):void{
      this.apiService.agregandoFacturas(facturas).subscribe(res=>{
        if(res){
          alert("Factura agregada")
          this.clear();
        } else{
          alert("Error")
        }
      })
    }

    onSetData(select: any){
      this.c_facturas.CLIENTE_ID = select.ID_CLIENTE;
      this.c_facturas.NOMBRE_APELLIDO = select.NOMBRE_APELLIDO;
      this.c_facturas.TELEFONO = select.TELEFONO;
      this.c_facturas.CEDULA = select.CEDULA;
    }

    clear(){
      this.c_facturas.MONTO_SOLICITADO = 0;
      this.c_facturas.TASA = 0;
      this.c_facturas.CUOTAS = 0;
      this.c_facturas.CUOTAS_MENSUALES = 0;
      this.c_facturas.CAPITAL = 0;
      this.c_facturas.INTERES = 0;
      this.c_facturas.CLIENTE_ID = 0;
      this.c_facturas.NOMBRE_APELLIDO = "";
      this.c_facturas.TELEFONO = "";
      this.c_facturas.CEDULA = "";
    }

    calculos(){
      this.c_facturas.CUOTAS_MENSUALES = (this.c_facturas.MONTO_SOLICITADO * this.c_facturas.TASA / this.c_facturas.CUOTAS);
      this.c_facturas.CAPITAL = (this.c_facturas.MONTO_SOLICITADO / this.c_facturas.CUOTAS);
      this.c_facturas.INTERES = (this.c_facturas.CUOTAS_MENSUALES - this.c_facturas.CAPITAL);
    }

    //Modal Perfil
    openFullscreen(content){
      this.modal.open(content, {fullscreen: true});
    }

    //Facturas
    ObserverChangeSearch2(){
      this.control.valueChanges
        .pipe(
          debounceTime(500)
        )
        .subscribe(query=>{
          console.log(query);
          this.apiService.getFacturaCedula(query).subscribe(
            (res:any) => {
              this.facturas = res;
            },
            (object) => {
              console.log(object)
            }
          )
        })
    }

    onSetData2(select: any){
      this.c_facturas.ID_FACTURAS = select.ID_FACTURAS;
      this.c_facturas.CLIENTE_ID = select.ID_CLIENTE;
      this.c_facturas.NOMBRE_APELLIDO = select.NOMBRE_APELLIDO;
      this.c_facturas.TELEFONO = select.TELEFONO;
      this.c_facturas.CEDULA = select.CEDULA;
      this.c_facturas.FECHA = select.FECHA;
    }

    //Monto a Pagar
    onSetData3(select: any){
      //Creando historial
      this.h_facturas.FACTURA_ID = select.ID_FACTURAS;
      this.h_facturas.CLIENTE_ID = select.CLIENTE_ID;
      this.h_facturas.NOMBRE_APELLIDO = select.NOMBRE_APELLIDO;
      this.h_facturas.TELEFONO = select.TELEFONO;
      this.h_facturas.CEDULA = select.CEDULA;
      this.h_facturas.MONTO_SOLICITADO = select.MONTO_SOLICITADO;
      this.h_facturas.TASA = select.TASA;
      this.h_facturas.CUOTAS = select.CUOTAS;
      this.h_facturas.CUOTAS_MENSUALES = select.CUOTAS_MENSUALES;
      this.h_facturas.CAPITAL = select.CAPITAL;
      this.h_facturas.INTERES = select.INTERES;
      this.h_facturas.FECHA = select.FECHA;
      //Actualizando factura
      this.u_facturas.ID_FACTURAS = this.h_facturas.FACTURA_ID;
      this.u_facturas.CLIENTE_ID = this.h_facturas.CLIENTE_ID;
      this.u_facturas.NOMBRE_APELLIDO = this.h_facturas.NOMBRE_APELLIDO;
      this.u_facturas.TELEFONO = this.h_facturas.TELEFONO;
      this.u_facturas.CEDULA = this.h_facturas.CEDULA;
      this.u_facturas.MONTO_SOLICITADO = this.h_facturas.MONTO_SOLICITADO;
      this.u_facturas.TASA = this.h_facturas.TASA;
      this.u_facturas.CUOTAS = this.h_facturas.CUOTAS;
      this.u_facturas.CUOTAS_MENSUALES = this.h_facturas.CUOTAS_MENSUALES;
      this.u_facturas.CAPITAL = this.h_facturas.CAPITAL;
      this.u_facturas.INTERES = this.h_facturas.INTERES;
      this.u_facturas.FECHA = this.h_facturas.FECHA;
    }

    onAddHistorial(h_facturas:HistorialFacturas):void{
      this.apiService.agregandoHistorialFactura(h_facturas).subscribe(res=>{
        if(res){
          alert("Factura agregada")
          this.clear();
        } else{
          alert("Error")
        }
      });
    }

    onUpdateFactura(u_facturas:Facturas):void{
      this.apiService.actualizandoFacturas(u_facturas.ID_FACTURAS,u_facturas).subscribe(res=>{
        if(res){
          alert("Actualizando Facturas");
        } else {
          alert("Error")
        }
      })
    }

    calcularMontoPagar(){
      this.h_facturas.MONTO_SOLICITADO = (this.h_facturas.MONTO_SOLICITADO - this.h_facturas.PAGO_REALIZADO);
      this.u_facturas.MONTO_SOLICITADO = (this.u_facturas.MONTO_SOLICITADO - this.u_facturas.PAGO_REALIZADO);
    }

    ObserverChangeSearch3(){
      this.control.valueChanges
        .pipe(
          debounceTime(500)
        )
        .subscribe(query=>{
          console.log(query);
          this.apiService.getHistorialFacturasCedula(query).subscribe(
            (res:any) => {
              this.historial = res;
            },
            (object) => {
              console.log(object)
            }
          )
        })
    }

  //Imprimir
    createPdf(){
    const pdfDefinition: any = {
      content:[
        {
          stack:[
            'Factura',
            {text:'No_Factura:' + this.c_facturas.ID_FACTURAS, style:'bodytext'},
            {text:'-----------------------------------------------------------------------------------------------------------------------------',style:'bodytext2'},
            {text:'Fecha: '+ this.c_facturas.FECHA, style:'bodytext'}
          ],
          style: 'header'
        },
        {
          stack:[
            'Grupo FYCAS S.R.L.',
            {text: '\n'},
            {text:'-----------------------------------------------------------------------------------------------------------------------------', style:'bodytext2'},
            {text:'Nombre'+'\n'},
            {text: '\n'},
            {text:'Sr/a.: '+this.c_facturas.NOMBRE_APELLIDO}
          ]
        },
      ],
      styles:{
        header:{
          fontSize:16,
          bold:true,
          alignment:'center',
          margin:[0,10,0,30],
        },
        subheader: {
          fontSize:14,
          aligment:'right',
          margin:[0,10,0,10]
        },
        body:{
          fontSize:12,
          margin:[0,10,0,10]
        },
        bodytext:{
          alignment:'right',
          fontSize:12
        },
        bodytext2:{
          alignment:'right',
          fontSize:12,
          bold:true
        }
      }
    } 
    const pdf = pdfMake.createPdf(pdfDefinition);
    pdf.open();
  }

}
