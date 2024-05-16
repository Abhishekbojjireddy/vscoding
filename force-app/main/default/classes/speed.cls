public class speed {
    public void speedlimit(integer a){
        try{
            if(a>100){
                throw new AbhishekException();
            }
            else{
                System.debug('You are at good speed');
            }
        }catch(AbhishekException ar){
            System.debug('PLease reduce your speed...');
        }
    }

}