import { LightningElement,api } from 'lwc';

export default class OnlyJs extends LightningElement {
@api testit(){
        console.log("Hello world shared js");
    }
}