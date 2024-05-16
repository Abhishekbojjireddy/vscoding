public class Hashing {
    public void getNames() {
        
        set<String> name = new set<String>();
        
        name.add('kiran');
        name.add('kumar');
        name.add('reddy');
        name.add('kiran');
        name.add('Reddy');
        System.debug('Names are ' + name);
       
        //System.debug(name);
        //clear
        //name.clear();
        //Remove index
        //System.debug(name.remove(3));
        //is empty()
        //System.debug(name.isEmpty());
        // size method
        //System.debug(name.size());
        //1st way to get the value
        //System.debug('Names are ' + name);
        //2nd way to get the value
        //System.debug(name.get(1));
        //3rd way to get value
        for(String nm : name) {
            System.debug(nm);
        }
    }


}