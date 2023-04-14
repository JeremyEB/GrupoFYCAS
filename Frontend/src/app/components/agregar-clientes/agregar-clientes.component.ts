import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { debounceTime } from 'rxjs';
import { Clientes, Facturas } from 'src/app/models/Modelos';
import { ApiService } from 'src/app/services/api.service';

@Component({
  selector: 'app-agregar-clientes',
  templateUrl: './agregar-clientes.component.html',
  styleUrls: ['./agregar-clientes.component.css']
})
export class AgregarClientesComponent implements OnInit {
  c_clientes: Clientes = new Clientes();
  u_facturas: Facturas = new Facturas();
  dataTable: any = [];
  control = new  FormControl();
  public clientes: Array<any> = []

  constructor( 
    private apiService: ApiService
  ) { }

  ngOnInit(): void {
    this.ObserverChangeSearch();
  }

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

  onAddClientes(clientes:Clientes):void{
    this.apiService.agregandoClientes(clientes).subscribe(res=>{
      if(res){
        alert("Cliente agregado");
        this.clear();
      } else {
        alert("Error")
      }
    })
  }

  onUpdateClientes(clientes:Clientes):void{
    this.apiService.actualizandoClientes(clientes.ID_CLIENTE,clientes).subscribe(res=>{
      if(res){
        alert("Cliente actualizado");
        this.clear();
      } else{
        alert("Error")
      }
    }
    )
  }

    onSetData(select:any){
      this.c_clientes.ID_CLIENTE = select.ID_CLIENTE;
      this.c_clientes.NOMBRE_APELLIDO = select.NOMBRE_APELLIDO;
      this.c_clientes.TELEFONO = select.TELEFONO;
      this.c_clientes.CEDULA = select.CEDULA;
    }

    clear(){
      this.c_clientes.NOMBRE_APELLIDO = "";
      this.c_clientes.TELEFONO = "";
      this.c_clientes.CEDULA = "";
    }
}
