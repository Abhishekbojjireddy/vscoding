public with sharing class MyAccount {

    public pageReference dosave(){
        upsert act;
        //return new Pagereference('/apex/mySuccesspage');
        return new pagereference('https://www.google.com?q=legend of salesforce');
       }
       Account act;
       public MyAccount() {
       
       id i=apexpages.currentpage().getparameters().get('id');
       
       if(i == null){
       act = new Account();
       }else {
       act=[select id,name from account where id=:i];
       }
       
       }
       public Account getMyAccount(){
       return act;
       }
       }