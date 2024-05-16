@isTest
private class MyApex_Test{
static testmethod void test(){
List<Merchandise__c>merList = new List<Merchandise__c>();
for(integer i=0;i<200;i++){
Merchandise__c m = new Merchandise__c(Name='Merchandise__c'+i);
merList.add(m);
}
insert merList;

Test.startTest();
MyApex c = new MyApex();
Database.executeBatch(c);
Test.stopTest();
}
}