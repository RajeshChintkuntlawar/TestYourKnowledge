import { Routes } from '@angular/router';

// Components
import {LoginComponent} from './components/login/login.component';
import {RegistrationComponent} from './components/registration/registration.component';
import {SmeComponent} from './components/sme/sme.component';
import {SmeViewQuizzesComponent} from './components/smeviewquizzes/smeviewquizzes.component';
import {SmeAddQuizComponent} from './components/smeaddquiz/smeaddquiz.component';
import {SmeUpdateQuizComponent} from './components/smeupdatequiz/smeupdatequiz.component';
import {SmeDeleteQuizComponent} from './components/smedeletequiz/smedeletequiz.component';
import {UserComponent} from './components/user/user.component';
import {UserTakeQuizComponent} from './components/usertakequiz/usertakequiz.component';
import {HomeComponent} from './components/home/home.component';

export const appRoutes: Routes = [{
    path: '',
    component: HomeComponent
}, {
    path: 'login',
    component: LoginComponent
}, {
  path: 'registration',
  component: RegistrationComponent
}, {
    path: 'sme',
    component: SmeComponent,
    children: [
        {
            path: 'smeviewquizzes',
            component: SmeViewQuizzesComponent
        }, {
          path: 'smeaddquiz',
          component: SmeAddQuizComponent
        }, {
          path: 'smeupdatequiz',
          component: SmeUpdateQuizComponent
        }, {
          path: 'smedeletequiz',
          component: SmeDeleteQuizComponent
        }
    ]
}, {
    path: 'user',
    component: UserComponent,
    children: [
      {
          path: 'usertakequiz',
          component: UserTakeQuizComponent
      }]
}];
