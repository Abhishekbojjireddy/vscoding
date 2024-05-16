import { LightningElement , api } from 'lwc';

export default class Lwc1 extends LightningElement {
    @api name;
    @api age;
    @api email;
    @api Skillset;

    constructor(){
        super();
        this.name = 'Abhishek';
        this.age = '22';
        this.email = 'abhishekbojjireddy@gmail.com';
        this.Skillset = 'LWC , AURA';
    
    }
}