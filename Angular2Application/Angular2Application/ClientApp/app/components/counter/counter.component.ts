import { Component } from '@angular/core';

@Component({
    selector: 'app-counter',
    template: require('./counter.component.html')
})
export class CounterComponent {
    public currentCount = 0;

    public incrementCounter() {
        this.currentCount++;
    }
}
