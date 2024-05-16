@restresource(urlMapping='/invoices/*')
global class RestList {
    @httppost
    global static void createrecords(list<string> str){
        for(string s:str){
        Invoice__c ii=new Invoice__c();
        ii.Invoice_Description__c=s;
        insert ii;
        }
    }

}