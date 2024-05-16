@RestResource(urlMapping='/myInvoice/*')
global class RestPost {
    @httpPost
    global static Id insertInvoice(String nm) {
        Invoice__c a = new Invoice__C();
        a.Invoice_Description__c = nm;
        insert a;
        return a.id;
    }

}