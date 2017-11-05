import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-smeupdatequiz',
  templateUrl: './smeupdatequiz.component.html'
})
export class SmeUpdateQuizComponent {
  constructor(private router: Router) {
  }
  private  smeAddQueiz() {
    this.router.navigate(['smeaddquiz']);
    }

  private signOut() {
    this.router.navigate(['login']);
    }

  private  smeDeleteQueiz() {
    this.router.navigate(['smedeletequiz']);
    }

  private  smeLanding() {
    this.router.navigate(['sme']);
    }

}
