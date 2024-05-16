public with sharing class ContactList {
    @AuraEnabled(cacheable=true)
    public static list<contact> showcontact(){
        return [select firstname,lastname,email,phone from contact];
    }

}