public class MerchandiseBack {
    public static void insertMerchandisebkup(list<merchandise__c> mer){
        Merchandise_Arch__c ma ;
        List<Merchandise_Arch__c> maList = new List<Merchandise_Arch__c>();
        for(Merchandise__c m :mer) {
            ma = new Merchandise_Arch__c();
            ma.name = m.name;
            ma.Merchandise_Description__c = m.Merchandise_Description__c;
        	ma.Merchandise_Price__c = m.Merchandise_Price__c;
        	ma.Merchandise_Stock__c = m.Merchandise_Stock__c;

            maList.add(ma);
        }
        insert maList;
    }

}