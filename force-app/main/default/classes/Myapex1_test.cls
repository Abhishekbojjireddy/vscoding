@isTest
private class Myapex1_test {   
    @testSetup
    public static void testData(){
        list<Merchandise__c> opplist = new list<Merchandise__c>();
        for(integer i=0;i<100;i++){
            Merchandise__c op = new Merchandise__c();
            op.name='Demo merch'+i;
            opplist.add(op);
        }
        insert opplist;
        }
    
        public static testMethod void test(){
        Test.startTest();
        MyApex opp = new MyApex();
        Database.executeBatch(opp);
        Test.StopTest();         
        list<Merchandise__c> lis=[select id,name,Merchandise_Price__c from Merchandise__c];
        system.assert(lis[0].Merchandise_Price__c==99);
        
    }
}