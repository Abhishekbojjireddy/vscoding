@isTest
Private class Demo_Test {

/*@testSetup static void doSetup() {
Account ac = new Account();
ac.name='Test Account';
insert ac;
}*/
public static testMethod void doTest() {
Demo1 d = new Demo1();
d.sayHello();
integer r =d.sum(10,10);
system.assertEquals(20,r,'Not as expected outcome');
Test.startTest();
account act=Demo_TestFactory.createaccount();
Account a = [Select id, name from account name where name =:act.name];
d.updateAccount(a);
Test.StopTest();
}
}