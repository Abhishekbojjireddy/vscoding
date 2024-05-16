@RestResource(urlmapping='/MyExpose/*')
global class Expo {
    @HttpGet
    global static list<Merchandise__c>getall(){
    list<Merchandise__c> m = [select id , name from Merchandise__c];
    return m;
}
}