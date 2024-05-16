@istest
private class cal_test{
public static testmethod void add(){
cal s = new cal();
integer a = s.sum(10,20);
system.assertEquals(30,a,'Error');
}
}