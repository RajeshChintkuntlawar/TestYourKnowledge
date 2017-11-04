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
    this.router.navigate(['sme/smeviewquizzes']);
    }
   private  smeViewQueizzes() {
    this.router.navigate(['sme/smeviewquizzes']);
    }

  private  smeAddQueiz() {
    this.router.navigate(['sme/smeaddquiz']);
    }

  private  smeUpdateQueiz() {
    this.router.navigate(['sme/smeupdatequiz']);
    }

  private  smeDeleteQueiz() {
    this.router.navigate(['sme/smedeletequiz']);
    }
}
