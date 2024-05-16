public with sharing class Getcontactdetail {
    @AuraEnabled
    public static string getname(String email){
        return[select lastname from contact where Email = :email].lastname;
    }
}