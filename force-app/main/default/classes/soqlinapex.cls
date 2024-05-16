public class soqlinapex {
    public void all(){
        list<account> act=[select id,name from account];
        for(account a : act){
            system.debug(a.id + a.name);
            
        }
    }

}