import { LightningElement,api ,track} from 'lwc';
 
export default class Lwc1 extends LightningElement {
 
@api  name;
@api age;
@api email;
@api Skillset;
 
constructor(){
     super();
     console.log('Constructor called');
    this.name='Abhishek Bojji';
    this.age=22;
    this.email='abhishek@gmail.com';
    this.Skillset='APEX,AURA,LWC';
 }

 counter = 0;


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
 
handleClick(e){
console.log(this.name +this.email +this.age +this.Skillset);
}
 
handleChange(e){
//ths is to capture change to the name or any field as there is no other 2 way binding
if (e.target.name == 'name'){
this.name = e.target.value;
     }
if (e.target.name == 'age'){
        this.age = e.target.value;
     }
if (e.target.name == 'email'){
this.email = e.target.value;
     }
if(e.target.name == 'Skillset'){
this.Skillset = e.target.value;
     }
}
 
}