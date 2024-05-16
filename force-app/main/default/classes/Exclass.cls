public class Exclass {
   public void getDivide(integer a , integer b) {
      try {
          
          try{
              
          }catch(ListException le){
           
              
          }
      integer res = a/b ;
          System.debug(res);
          Demo d=new Demo();
          System.debug('Value of d =' +d);
          d.sayHello();
          
          List<String>name = new List<String>();
          name.add('Arun');
          System.debug(name.get(1));
          
       }catch(MathException me) {
        System.debug('please dont divide by zero. ');          
       }catch(NullPointerException ne){
           System.debug('please dont call a method with null');
       }catch(Exception e){
           System.debug('Server is busy please wait');
       }
       finally {
           try{
              
          }catch(ListException le){
              
          }
           System.debug('I will get executed in either of the case if there is exception is there or not');
       }
    }

}