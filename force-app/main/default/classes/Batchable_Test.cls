@istest
private class Batchable_Test {
        public static testmethod void dotest(){
        list<Invoice__c> inv=new list<Invoice__c>();
        for(integer i=0;i<200;i++){
            Invoice__c inn= new Invoice__c();
            inn.Invoice_Description__c='For Testing'+i;
            inv.add(inn);
        }
        insert inv;
        
        Test.StartTest();
        Batchable b= new Batchable();
        Database.executeBatch(b);
        Test.StopTest();
        
        Invoice__c iv=[select id,Invoice_Closed_Date__c from Invoice__c where Invoice_Description__c='For Testing0' ];
        System.assert(iv.Invoice_Closed_Date__c==system.today());
    }
}