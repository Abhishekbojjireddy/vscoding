public class parenttocsoql {
    public void values(){
        list<Invoice__c> inv=[select id,name,(select id,name from Sell_Items__r) from Invoice__c];
            for(Invoice__c c : inv){
                system.debug('the invoice id is '+c.id + 'the invoice desc' +c.name + 'sellitem name' +c.Sell_Items__r);
            }
    }

}