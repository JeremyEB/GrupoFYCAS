import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  constructor(
    private router: Router
  ) { }

  ngOnInit(): void {
      
  }

  agregarCliente(){
    this.router.navigate(['/agregarCliente'])
  }

  listaClientes(){
    this.router.navigate(['/listaClientes'])
  }

  clientesVencidos(){
    this.router.navigate(['/clientesVencidos'])
  }

}
