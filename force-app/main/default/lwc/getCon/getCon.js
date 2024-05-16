import { LightningElement,api, wire} from 'lwc';
import showcontact from '@salesforce/apex/ContactList.showcontact';
export default class getCon extends LightningElement {
    @wire(showcontact)
     cont;
     
  
}