import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-sme',
  templateUrl: './sme.component.html',
  styleUrls: ['sme.component.css']
})
export class SmeComponent {
  constructor(private router: Router) {
  }

  private signOut() {
    this.router.navigate(['login']);
    }
  private  viewSmeQueizzs() {
    this.router.navigate(['smeviewquizzes']);
    }
   private  smeViewQueizzes() {
    this.router.navigate(['smeviewquizzes']);
    }

  private  smeAddQueiz() {
    this.router.navigate(['smeaddquiz']);
    }

  private  smeUpdateQueiz() {
    this.router.navigate(['smeupdatequiz']);
    }

  private  smeDeleteQueiz() {
    this.router.navigate(['smedeletequiz']);
    }
}
