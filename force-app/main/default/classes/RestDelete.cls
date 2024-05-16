@RestResource(urlMapping='/myInvoices/*')
global class RestDelete {
    @httpDelete
    global static void deleteinvoice(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String recordId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Invoice__c act =[select id from  Invoice__c where id =:recordId];
        delete act;
    }

}