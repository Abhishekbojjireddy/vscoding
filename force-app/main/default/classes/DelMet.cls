@RestResource(urlMapping='/resdata/*')
global class DelMet {
    @httpdelete
    global static void deldata(){
        Restrequest req = RestContext.request;
        Restresponse res = RestContext.Response;
        String recordId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Merchandise__c mer = [Select id, name from Merchandise__c where id=:recordId];
        delete mer;
    }

}