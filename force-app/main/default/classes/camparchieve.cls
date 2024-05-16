public class camparchieve {
    public static void cambackup(list<Campaign> c){
        Campaign_Archieve__c ca;
        		List<Campaign_Archieve__c> caList = new List<Campaign_Archieve__c>();
        for (Campaign n: c) {
            ca = new Campaign_Archieve__c();
            ca.name = n.name;
            caList.add(ca);
            
        }
        insert caList;
    }

}