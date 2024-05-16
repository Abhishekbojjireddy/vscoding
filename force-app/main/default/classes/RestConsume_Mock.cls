@istest
global class RestConsume_Mock implements HttpCalloutMock {
    global HttpResponse respond(HttpRequest req){
        HttpResponse res=new HttpResponse();
        res.setheader('Content-Type','application/json;charset=UTF-8');
        res.setbody('{"name":"Zebra"}');
        res.setstatuscode(200);
        return res;
    }

}