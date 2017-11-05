import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-smeaddquiz',
  templateUrl: './smeaddquiz.component.html'
})
export class SmeAddQuizComponent {
  constructor(private router: Router) {
  }
  private signOut() {
    this.router.navigate(['login']);
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

}
