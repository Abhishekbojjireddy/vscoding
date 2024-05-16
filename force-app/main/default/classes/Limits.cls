public class Limits {
    public void limitspeed(integer a){
        try{
            if(a>80){
               throw new helloException();
            }
            else{
                System.debug('your at good speed');
        	}
        }catch(helloException he){
            System.debug('please reduce your speed');
        }
    }
}