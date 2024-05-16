public class Mercholdmap {
    public static void insertMerchandisebkup(map<id,merchandise__c> mer){
        Merchandise_Arch__c ma ;
        List<Merchandise_Arch__c> maList = new List<Merchandise_Arch__c>();
        set<id> li = mer.keyset(); 
        for(id i : li)
        {  merchandise__c loopvar = mer.get(i);
            ma= new Merchandise_Arch__c();
            ma.name = loopvar.name;
            ma.Merchandise_Description__c =loopvar.Merchandise_Description__c;
        	ma.Merchandise_Price__c =loopvar.Merchandise_Price__c;
        	ma.Merchandise_Stock__c =loopvar.Merchandise_Stock__c;

            maList.add(ma);
        } 
        insert maList;
    }

}