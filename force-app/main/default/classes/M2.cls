public class M2 {
    /*
    1. Soql

select id, name from account

select id , name , account.name from contact

select id, name,merchandise__r.name from Sell_Item__c

select id, name, Merchandise__r.id,Merchandise__r.name from Sell_Item__c

select id, name,(select id,name from contacts) from account

select id, name,(select id,name from Sell_Items__r) from merchandise__c


///// 

select id, name from account offset 5

select id, name from account where name = 'b.tcrop'

select id, name from account limit 2

select id, name from account order by name

select id, name from account order by name desc

select count(id)from account

select max(Merchandise_Price__c)from Merchandise__c 

select fields (all) from account limit 200

select fields (standard) from account

select fields (custom) from account limit 200

select id,name from account where name like 'ch_t'

select id,name from account where name like '%t'


____________________________________________________________________________________________________________

2.Sosl

find {gene} in all fields

find {gene} returning account(id,name)

find {shirt} returning Sell_Item__c(id,name)

find {gene} returning Sell_Item__c,account

find {gene} returning Sell_Item__c(id,name),account(id,name)


///////

find {gene} in phone fields returning Account

find {gene} in sidebar fields returning Account

find {gene} in email fields returning Account

find {gene} in Name fields returning Account

find {ge*} (wildcard)

find {gen?}

______________________________________________________________________________________________________________

3. Expose

get:


@RestResource(urlMapping='/myAccount/*')
global class RestDemo {
    @httpGet
    global static List<Account>getAllAccount(){
        List<Account> act = [select id,name from account];
        return act;
    }

}


workbench:
/services/apexrest/myAccount

////////////

post:

@RestResource(urlMapping='/Buddy/*')
global class PostMet {
    @HttpPost
    global static id datpost(string mer){
        Merchandise__c m = new Merchandise__c();
        m.name = mer;
        insert m;
        return m.id;
    }

}

workbench:

{"mer":"Created from web services"}

////////////

Delete:

@RestResource(urlMapping='/resdata/*')
global class DelMet {
    @httpdelete
    global static void deldata(){
        Restrequest req = RestContext.request;
        Restresponse res = RestContext.Response;
        String recordId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Merchandise__c mer = [Select id, name from Merchandise__c where id=:recordId];
        delete mer;
    }

}

workbench:

/services/apexrest/myAccount/001IS000002qpo0YAA

_______________________________________________________________________________________________________________________

4.Batch Apex

/1/ Changing amount to 99 in opportunity

public class Amtbatch implements Database.Batchable<sobject> {
    
    public Database.querylocator start(Database.BatchableContext bc){
        string query='select id,Amount from Opportunity';
        return Database.getquerylocator(query);
    }
    
    public void execute(Database.BatchableContext bc, list<Opportunity> li){
        for(Opportunity o : li){
            o.Amount=99;
        }
        update li;
    }
    
    public void finish(Database.BatchableContext bc){
        
    }

}


Amtbatch ap = new Amtbatch();
Database.executebatch(ap);


test class:

@isTest
private class Amtbatch_Test {  
    @testSetup
    public static void testData(){
        list<Opportunity> opplist = new list<Opportunity>();
        for(integer i=0;i<100;i++){
            Opportunity op = new Opportunity();
            op.name='Demo opportunity'+i;
            op.StageName='Prospecting';
            op.CloseDate=system.today();
            opplist.add(op);
        }
        insert opplist;
        }
    
        public static testMethod void test(){
        Test.startTest();
        Amtbatch opp = new amtbatch();
        Database.executeBatch(opp);
        Test.StopTest();         
        list<Opportunity> lis=[select id,name,amount from Opportunity];
        system.assert(lis[0].amount==99);
        
    }
}

/////////////////

2.Account records update 

public class MyBatch implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query = 'select id,name from account';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, list<Account>act){
        for(Account a:act){
            a.name = a.name+'updated!!!';
        }
        update act;
    }
    public void finish(Database.BatchableContext bc){
}

}

Mybatch my = new Mybatch();
Database.executeBatch(my);


testclass :

@isTest
private class MyBatch_Test{
static testmethod void test(){
List<Account>accList = new List<Account>();
for(integer i=0;i<200;i++){
Account m = new Account(Name='Account'+i);
accList.add(m);
}
insert accList;

Test.startTest();
MyBatch c = new MyBatch();
Database.executeBatch(c);
Test.stopTest();

Account[] accUpdatedList =[Select Id,Name from Account];
System.assert(accUpdatedList[0].Name.Contains('updated!!!'));
}
}


///////////////

/3/ Mererchandise price to 99 for all records

public class MyApex implements Database.Batchable<sObject>{
    public Database.queryLocator start(Database.BatchableContext bc)
    {
       string query = 'select id,name from Merchandise__c';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, list<Merchandise__c>mer){
        for(Merchandise__c m:mer)
        {
            m.Merchandise_Price__c = 99;
}
        update mer;

}
    public void finish(Database.BatchableContext bc){
        
    }
}

MyApex my = new MyApex();                                     
Database.executeBatch(my);

Testclass:

@isTest
private class Myapex1_test {   
    @testSetup
    public static void testData(){
        list<Merchandise__c> opplist = new list<Merchandise__c>();
        for(integer i=0;i<100;i++){
            Merchandise__c op = new Merchandise__c();
            op.name='Demo merch'+i;
            opplist.add(op);
        }
        insert opplist;
        }
    
        public static testMethod void test(){
        Test.startTest();
        MyApex opp = new MyApex();
        Database.executeBatch(opp);
        Test.StopTest();         
        list<Merchandise__c> lis=[select id,name,Merchandise_Price__c from Merchandise__c];
        system.assert(lis[0].Merchandise_Price__c==99);
        
    }
}


///////////

/4/ Invoice closed date to that date


public class Batchable implements Database.Batchable<sobject>{
    public Database.queryLocator start(Database.Batchablecontext Bc){
        string query = 'select id,name,Invoice_Closed_Date__c from Invoice__c';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.Batchablecontext Bc,List<Invoice__c> inv){
        
        for(Invoice__c i : inv){
            i.Invoice_Closed_Date__c = system.today();
        }
        update inv;
    }
    public void finish(Database.Batchablecontext Bc){
        
    }
}


Batchable Be = new Batchable();                                     
Database.executeBatch(Be);

testclass :

@istest
private class Batchable_Test {
        public static testmethod void dotest(){
        list<Invoice__c> inv=new list<Invoice__c>();
        for(integer i=0;i<200;i++){
            Invoice__c inn= new Invoice__c();
            inn.Invoice_Description__c='For Testing'+i;
            inv.add(inn);
        }
        insert inv;
        
        Test.StartTest();
        Batchable b= new Batchable();
        Database.executeBatch(b);
        Test.StopTest();
        
        Invoice__c iv=[select id,Invoice_Closed_Date__c from Invoice__c where Invoice_Description__c='For Testing0' ];
        System.assert(iv.Invoice_Closed_Date__c==system.today());
    }
}


________________________________________________________________________________________________________________________________________

4.Triggers

/1/ if account.industry = education , ownership is public

trigger valcheck on Account (before insert ) {
if(trigger.isbefore && trigger.isinsert){
Check.value(trigger.new);
}

}



public class Check {
    public static void value(list<account> ae){
        for (account a : ae){  
            if(a.industry.equals('Education'))
        {
            a.ownership='public';
        
        }
        }
    }
}


@isTest
private class Check_Test {
    @testSetup
    static void createRec()
    {
         Account act = new Account(name='Test',Industry='Education');
         insert act;
    }
        @isTest
     static void testAccountTrigger()
     {   
         Account a = [select id, name , Ownership from Account where name='Test'];
         System.assert(a.Ownership.equals('Public'));
     }}


/2/ Archieve

trigger Mercholdmap on Merchandise__c (before insert,after insert,before update,before delete ,after delete,after undelete) {
  if(trigger.isdelete && trigger.isafter){
  Mercholdmap.insertMerchandisebkup(Trigger.oldmap);
  }
  }


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


Testclass:

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


/3/ do not allow user to delte contact if it belong to account

trigger excep on Contact (before delete) {
if(trigger.isdelete && trigger.isbefore ){
Delcon.cal(Trigger.old);
}
}


public class Delcon {
    public static void cal(List<Contact> cl){
        contact c=cl[0];
        if(c.AccountId != null)
            throw new perException();
         
    }

}

Testclass :

@isTest
private class Delcon_Test{
   @testSetup
    static void createRec()
    {   Account act = new Account(name='LTIM');
        id i = act.Id;
        Contact act1 = new Contact(LastName='Roy');
        Contact act2 = new Contact(LastName='Maiti',AccountId= i); insert act1; insert act2;
    }
   @isTest 
  static void checkDel()
  {
      Contact withAct=[Select id,name from Contact where LastName='Roy'];
      Contact withoutAct =[Select id,name from Contact where LastName='Maiti'];
      list<contact> li = new list<contact>{withAct,withoutAct};
      delete li;
      System.assert(li.size()!=0);  
  }
}   



5.Test generic


public class Demo1{
public void sayHello(){
System.debug('Hello Apex..');
}
}


@isTest
Private class Demo_Test {
public static testMethod void doTest() {
Demo1 d = new Demo1();
d.sayHello();
}
}


//////////



With 2 methods test classes 

public class Demo1{
public void sayHello(){
System.debug('Hello Apex..');
}
public Integer sum(integer a,integer b){
Integer res = a+b;
return res;
}
}



@isTest
Private class Demo_Test {
public static testMethod void doTest() {
Demo1 d = new Demo1();
d.sayHello();
integer r =d.sum(10,10);
system.assertEquals(20,r,'Notand expected outcome');
}
}


---------------------------------------------------

using assert wual as if the for example sum = 10*10 is done t will show error for that message

public class Demo1{
public void sayHello(){
System.debug('Hello Apex..');
}
@Testvisible
private Integer sum(integer a,integer b){
Integer res = a+b;
return res;
}
}


@isTest
Private class Demo_Test {
public static testMethod void doTest() {
Demo1 d = new Demo1();
d.sayHello();
integer r =d.sum(10,10);
system.assertEquals(20,r,'Not as expected outcome');
}
}




----------------------------------------------------------
creating own account data in testclass for testing

@isTest
Private class Demo_Test {

@testSetup static void doSetup() {
Account ac = new Account();
ac.name='Test Account';
insert ac;
}
public static testMethod void doTest() {
Demo1 d = new Demo1();
d.sayHello();
integer r =d.sum(10,10);
system.assertEquals(20,r,'Not as expected outcome');
Account a = [Select id, name from account name where name ='Test Account'];
d.updateAccount(a);
}
}




*/
}