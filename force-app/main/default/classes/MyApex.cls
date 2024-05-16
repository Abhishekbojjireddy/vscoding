public class MyApex implements Database.Batchable<sObject>{
    public Database.queryLocator start(Database.BatchableContext bc)
    {
       string query = 'select id,name,Merchandise_Price__c from Merchandise__c';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, list<Merchandise__c>mer){
        for(Merchandise__c m:mer)
        {
           if(m.name.isAllUpperCase())
           
            m.Merchandise_Price__c = 100;
            }
        update mer;

}
    public void finish(Database.BatchableContext bc){
        
    }
}