@isTest
private class MyBatch_Test{
static testmethod void test(){
List<Account>accList = new List<Account>();
for(integer i=0;i<200;i++){
Account m = new Account(Name='Account'+i);
accList.add(m);
}
insert accList;

Test.startTest();
MyBatch c = new MyBatch();
Database.executeBatch(c);
Test.stopTest();

Account[] accUpdatedList =[Select Id,Name from Account];
System.assert(accUpdatedList[0].Name.Contains('updated!!!'));
}
}