public class Batdat implements Database.batchable<sObject> {
    public Database.QueryLocator start(Database.batchablecontext bc){
        String query =' select id,name from Merchandise__c ';
        return Database.getQueryLocator(Query);
            }
    public void execute(Database.batchablecontext bc , list<Merchandise__c> ma){
        for(Merchandise__c mer : ma){
            mer.name = mer.name + 'updated'; 
        }
        update ma;
    }
     public void finish(Database.batchablecontext bc){
        
    }
    
}