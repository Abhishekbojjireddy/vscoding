@istest
public class Calculation_Test {
	public static testmethod void test(){
    
		Calculation c = new Calculation();
    
		integer a = c.sum(10,20);
		integer b = c.sub(40,30);
        	
			system.assertEquals(30,a,'Error');
			system.assertEquals(10,b,'Is Error');
		}
}