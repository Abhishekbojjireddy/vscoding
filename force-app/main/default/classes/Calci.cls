public class Calci {
    integer a = 10;
    integer b = 20;
    integer res;
    
    public void doAdd(){
        res = a+b;
        System.debug('add = ' + res);
    }
    
    public void doSub () {
        res = a-b;
        System.debug('Sub = '+ res);
    }
    
    public void doMul () {
        res = a*b;
        System.debug('Mul = '+ res);
    }
    
    public void doDiv () {
        res = a/b;
        System.debug('Div = '+ res);
    }
        
}