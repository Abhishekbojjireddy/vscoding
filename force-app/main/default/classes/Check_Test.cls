@isTest
private class Check_Test {
    @testSetup
    static void createRec()
    {
         Account act = new Account(name='Test',Industry='Education');
         insert act;
    }
        @isTest
     static void testAccountTrigger()
     {   
         Account a = [select id, name , Ownership from Account where name='Test'];
         System.assert(a.Ownership.equals('Public'));
     }}