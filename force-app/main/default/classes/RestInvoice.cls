@RestResource(urlMapping='/myInvoice__c/*')
global class RestInvoice {
    @httpGet
    global static List<Invoice__c>getAllInvoice(){
        List<Invoice__c> inv = [select id,name from Invoice__c];
        return inv;
    }

}