@istest
private class RestDemo_Test {
    
    @testsetup
    static void mysetup(){
        Account act = new Account(name='test');
      
        insert act;
    }
    @istest
    static void myget(){
        List<account> lstact = Restdemo.getAllAccount();
        system.assertequals('test',lstact[0].name,'Not there');
    }
    @istest static void mypost(){
        ID myid = Restdemo.insertAccount('Arun');
        List<account> actid = [select id from account where id=:myid];
        system.assertEquals(myid,actid[0].id,'Gone Wrong');
        
    }
    @istest static void deleteAccount(){
        list<account> listacc = [select id from account];
        Restrequest req = new Restrequest();
        req.requesturi='/services/apexrest/myAccount/'+listacc[0].id;
        restcontext.request=req;
        String res = Restdemo.deleteAccount();
        system.assertEquals('deleted',res,'All went wrong');
    }

}