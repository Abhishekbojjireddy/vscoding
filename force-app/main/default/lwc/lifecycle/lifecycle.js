import { LightningElement } from 'lwc';

export default class Lifecycle extends LightningElement {
    counter = 0;

    constructor() {
        super();
        console.log('Constructor called');
    }

    connectedCallback() {
        console.log('Connected to DOM');
    }
 
 renderedCallback() {
        console.log('Component rendered');
    }

    disconnectedCallback() {
        console.log('Disconnected from DOM');
    }

    increment() {
        this.counter++;
    }
}