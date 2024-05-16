public class Keyval {
    public void mapping(){
        map<integer,string> values = new map<integer,string>();
        values.put(1,'Axe');
        values.put(2,'ball');
        values.put(3,'Cat');
        values.put(4,'Dog');
        values.put(5,'Egg');
        for(String val: values.values()){
            System.debug(val);
        }
        for(integer val: values.keyset()){
            string s=values.get(val);
            System.debug(val+' '+s);
        
        }
    }
}