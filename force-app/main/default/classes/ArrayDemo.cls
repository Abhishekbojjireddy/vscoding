public class ArrayDemo {
    //Static
    public void getvalues() {
        String[] name = new String[] {'Abhishek','Bojjireddy'};
        System.debug(name[0] + ' ' + name[1]);
        
        //Dynamic
        String[] nm = new String[2];
        nm[0] = 'ala';
        nm[1] = 'Reddy';
        System.debug(nm[0] + ' ' +nm[1]);
        
    }

}