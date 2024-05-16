public class mercapupdate implements Database.Batchable<sObject> {
    public Database.QueryLocator start (Database.BatchableContext bc){
        String s = 'Caps';
        String query = 'select id, name , Merchandise_Price__c from Merchandise__c where name=:s';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc , list<Merchandise__c> mer){
        for(Merchandise__c m : mer){
            m.Merchandise_Price__c = 100;
        }
        update mer;
    }
    public void finish(Database.BatchableContext bc){
        
    }
    

}