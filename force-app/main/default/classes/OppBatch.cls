public class OppBatch implements Database.batchable<sObject> {
    public Database.QueryLocator start(Database.Batchablecontext bc){
        string query = 'Select id, Amount from Opportunity';
        return Database.getQueryLocator(Query);
    }
    public void execute(Database.Batchablecontext bc,list<Opportunity> op){
        for(Opportunity oper : op){
            oper.Amount = 10000;
        }
        update op;
        
    }
    public void finish(Database.BatchableContext bc){
        
    }

}