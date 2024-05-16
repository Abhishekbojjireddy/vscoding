@istest
private class Mercholdmap_Test {

    public static testmethod void test2(){
        list<merchandise__c> mer = new list<merchandise__c>();
        for(integer i=0;i<100;i++){
            merchandise__c m= new merchandise__c();
			m.name='test mer name'+i;
            m.Merchandise_Description__c='desc for test class'+i;
            m.Merchandise_Stock__c=150;
            m.Merchandise_Price__c=10;
            mer.add(m);
           
        }
       insert mer;
        
       list<merchandise__c> archievs =[select id from merchandise__c limit 100];
       delete archievs;
         }
}