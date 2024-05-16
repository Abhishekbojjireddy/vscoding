public with sharing class Getaccountdetail {
    @AuraEnabled
    public static string getname(string AccountNumber){
        return[select Name from Account where AccountNumber = :AccountNumber].name;
    }
}