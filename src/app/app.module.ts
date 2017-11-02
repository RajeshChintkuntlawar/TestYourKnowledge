import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule } from '@angular/http';
import { UIRouterModule } from '@uirouter/angular';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';
import { FormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';

import {AppComponent} from './app.component';
import {LoginComponent} from './components/login/login.component';
import {NavComponent} from './components/nav/nav.component';
import {RegistrationComponent} from './components/registration/registration.component';
import {SmeComponent} from './components/sme/sme.component';
import {SmeViewQuizzesComponent} from './components/smeviewquizzes/smeviewquizzes.component';
import {SmeAddQuizComponent} from './components/smeaddquiz/smeaddquiz.component';
import {SmeUpdateQuizComponent} from './components/smeupdatequiz/smeupdatequiz.component';
import {SmeDeleteQuizComponent} from './components/smedeletequiz/smedeletequiz.component';
import {UserComponent} from './components/user/user.component';
import {UserTakeQuizComponent} from './components/usertakequiz/usertakequiz.component';
import { appRoutes } from './routes';
import {HomeComponent} from './components/home/home.component';

@NgModule({
  imports: [
    BrowserModule,
    HttpModule,
    NgbModule.forRoot(),
    RouterModule.forRoot(appRoutes),
    FormsModule,
  ],
  declarations: [
    AppComponent,
    NavComponent,
    LoginComponent,
    RegistrationComponent,
    SmeComponent,
    SmeViewQuizzesComponent,
    SmeAddQuizComponent,
    SmeUpdateQuizComponent,
    SmeDeleteQuizComponent,
    UserComponent,
    UserTakeQuizComponent,
    HomeComponent,
   ],
  providers: [

   ],
  bootstrap: [AppComponent]
})
export class AppModule { }
