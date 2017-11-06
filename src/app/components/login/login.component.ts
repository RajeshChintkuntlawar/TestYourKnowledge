import { Component, OnInit } from '@angular/core';
import {Http, Headers} from '@angular/http';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
private username;
private password;
private headers;

public ngOnInit() {
}

constructor(private http: Http) {
}

public loginSubmit() {
 this.headers = new Headers();
 this.headers.append('Content-Type', 'application/x-www-form-urlencoded');
 this.http.post('http://localhost:8081/test-your-knowledge/login'
  , `username=${this.username}&password=${this.password}`, {headers: this.headers})
  .subscribe(res => {
  }, err => console.log(err));
}

}
