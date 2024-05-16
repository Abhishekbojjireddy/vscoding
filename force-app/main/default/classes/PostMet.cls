@RestResource(urlMapping='/Buddy/*')
global class PostMet {
    @HttpPost
    global static id datpost(string mer){
        Merchandise__c m = new Merchandise__c();
        m.name = mer;
        insert m;
        return m.id;
    }

}