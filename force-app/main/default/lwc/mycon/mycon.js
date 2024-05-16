import { LightningElement ,wire } from 'lwc';
import { hiapex } from 'c/corejs';
import showcontact from '@salesforce/apex/ContactList.showcontact';
export default class Mycon extends LightningElement {
@wire(showcontact)
contacts;

showButton;
 
handleClick() {
        this.showButton = false;
 
    }
handleClicktoggle(){
        this.showButton = true;
        hiapex();
        
    }
}