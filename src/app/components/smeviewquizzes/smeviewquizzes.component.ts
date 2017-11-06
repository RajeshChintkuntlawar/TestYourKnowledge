import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-smeviewquizzes',
  templateUrl: './smeviewquizzes.component.html',
  styleUrls: ['smeviewquizzes.component.css']
})
export class SmeViewQuizzesComponent {
  constructor(private router: Router) {
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

  private  smeLanding() {
    this.router.navigate(['sme']);
    }
  private signOut() {
    this.router.navigate(['login']);
    }
}
