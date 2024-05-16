public class CollectionDemo {
    
    public void getNames() {
        
        List<String> name = new List<String>();
        List<String> name1 = new List<String>();
        name.add('kiran');
        name.add('kumar');
        name.add('reddy');
        name.add('kiran');
        name.add(1,'Reddy');
        name.set(1,'kiran123');
        
        name1.add('kiran');
        name1.add('kumar');
        name1.add('reddy');
        name1.add('kiran');
        name1.add(1,'Reddy');
        name1.set(1,'kiran123');
        name.addall(name1);
        System.debug(name);
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
        //for(String nm : name) {
            //System.debug(nm);
        }
    }