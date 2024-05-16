public class Batchable implements Database.Batchable<sobject>{
    public Database.queryLocator start(Database.Batchablecontext Bc){
        string query = 'select id,name,Invoice_Closed_Date__c from Invoice__c';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.Batchablecontext Bc,List<Invoice__c> inv){
        
        for(Invoice__c i : inv){
            i.Invoice_Closed_Date__c = system.today();
        }
        update inv;
    }
    public void finish(Database.Batchablecontext Bc){
        
    }
}