import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AgregarClientesComponent } from './components/agregar-clientes/agregar-clientes.component';
import { ClientesVencidosComponent } from './components/clientes-vencidos/clientes-vencidos.component';
import { HomeComponent } from './components/home/home.component';
import { ListaClientesComponent } from './components/lista-clientes/lista-clientes.component';
import { LoginComponent } from './components/login/login.component';

const routes: Routes = [
  { path: '', redirectTo: '/login', pathMatch: 'full'},
  { path: 'login', component: LoginComponent },
  { path: 'home', component: HomeComponent },
  { path: 'agregarCliente', component: AgregarClientesComponent },
  { path: 'clientesVencidos', component: ClientesVencidosComponent },
  { path: 'listaClientes', component: ListaClientesComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
