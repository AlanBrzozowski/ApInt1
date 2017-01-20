import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { UniversalModule } from 'angular2-universal';

import { AppComponent } from './components/app/app.component'
import { ContactComponent } from './components/contact/contact.component'
import { CounterComponent } from './components/counter/counter.component';
import { FetchDataComponent } from './components/fetchdata/fetchdata.component';
import { FootComponent } from './components/foot/foot.component';
import { HomeComponent } from './components/home/home.component';
import { NavMenuComponent } from './components/navmenu/navmenu.component';
import { PlayerComponent } from './components/player/player.component';
import { StadiumComponent } from './components/stadium/stadium.component';

@NgModule({
    bootstrap: [ AppComponent ],
    declarations: [
        AppComponent,
        ContactComponent,
        CounterComponent,
        FetchDataComponent,
        FootComponent,
        HomeComponent,
        NavMenuComponent,
        PlayerComponent,
        StadiumComponent
    ],
    imports: [
        UniversalModule, // Must be first import. This automatically imports BrowserModule, HttpModule, and JsonpModule too.
        RouterModule.forRoot([
            { path: '', redirectTo: 'home', pathMatch: 'full' },
            { path: 'home', component: HomeComponent },
            { path: 'players', component: PlayerComponent },
            { path: 'stadiums', component: StadiumComponent },
            { path: 'contact', component: ContactComponent },
            { path: '**', redirectTo: 'home' }
        ])
    ]
})
export class AppModule {
}
