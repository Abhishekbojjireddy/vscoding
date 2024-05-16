public class Overloading {
    public void sum(integer a,integer b)
    {
        integer re = a+b ;
    	System.debug('Result is ' +re);
    }
    
    public void sum(integer a,integer b,integer c)
    {
        integer re = a+b+c ;
        System.debug('Result is ' +re);
    }
}