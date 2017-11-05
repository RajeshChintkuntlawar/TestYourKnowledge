import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-smedeletequiz',
  templateUrl: './smedeletequiz.component.html'
})
export class SmeDeleteQuizComponent {
  constructor(private router: Router) {
  }
  private  smeAddQueiz() {
    this.router.navigate(['smeaddquiz']);
    }

  private  smeUpdateQueiz() {
    this.router.navigate(['smeupdatequiz']);
    }

  private signOut() {
    this.router.navigate(['login']);
    }

  private  smeLanding() {
    this.router.navigate(['sme']);
    }
}
