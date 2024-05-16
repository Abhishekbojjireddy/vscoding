public class childtopsoql {
    public void details(){
        list<Sell_Item__c> item=[select id,name,Invoice__r.name from Sell_Item__c];
        for(Sell_Item__c s:item){
            system.debug(s.id+s.name+s.Invoice__r.name);
        }
}
}