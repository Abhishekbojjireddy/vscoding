@istest
private class RestConsume_Test {
    public static testmethod void testconsume(){
        
        Test.setmock(HttpCalloutMock.class, new RestConsume_Mock());
        RestConsume.consumeRest();
    }

}