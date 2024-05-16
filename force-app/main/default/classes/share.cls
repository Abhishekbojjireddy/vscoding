public class share {
    public static void sharch(list<Sell_Item__c> si){
        sell_item_archieve__c sa;
        list<sell_item_archieve__c> salist = new list<sell_item_archieve__c>();
        for(Sell_Item__c n : si){
            sa = new sell_item_archieve__c();
            sa.Name = n.Name ;
            salist.add(sa);
        }
        insert salist;
    }

}