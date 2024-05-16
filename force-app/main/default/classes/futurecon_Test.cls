@istest
private class futurecon_Test {
    public static testmethod void testconsume(){
        
        Test.setmock(HttpCalloutMock.class, new futurecon_fake());
        futurecon.consumeRest();
    }

}