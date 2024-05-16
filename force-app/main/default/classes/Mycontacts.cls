public with sharing class Mycontacts {

    public void dosave() {
        upsert con;
    }
 
 
    Contact con;
    public MyContacts(){
    ID i = apexpages.currentpage().getparameters().get('id');
    if(i == null){
    con = new Contact();
    }else{
       con=[select id,name from Contact where id=:i];
    }
    }
    public Contact getMYContacts() {
        return con;
    }
 
}