public class ContArchieve {
    public static void usearch(list<contact> c){
        Contact_Archieve__c ca;
        list<Contact_Archieve__c> calist= new list<Contact_Archieve__c> ();
        for(contact n : c){
            ca = new Contact_Archieve__c();
            ca.name = n.LastName ;
          calist.add(ca);
        }
    insert calist;
    
}

}