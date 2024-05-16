public class Throwex {
    public void salary(integer a,integer b){
        try{
            integer res=a/b;
            System.debug('This shows no mathException...  '+ res);
            demo d;
            d.sayhello();
            system.debug(d);
            list<integer> values = new list<integer>{1,2,3};
            System.debug(values.get(1));
        }catch(MathException m){
            System.debug('Its MAthException');
        }catch(NullPointerException n){
            System.debug('Its nullpointerException');
        }catch(Exception e){
              System.debug('Its Exception');  
         }
    }

}