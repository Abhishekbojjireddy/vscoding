public class mapkey {
    public void val () {
        map<integer,string> li = new map<integer,string> ();
        li.put(1,'a');
        li.put(2,'b');
        
        for(integer i : li.keyset()){
            string s= li.get(i);
            system.debug(s);
        }
        for(string d : li.values()){
            system.debug(d);
        }
        
    }

}