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