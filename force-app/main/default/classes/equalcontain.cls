public class equalcontain {
    public void values(){
        list<integer> name1=new list<integer>{1,2,6,7,8};
        list<integer> name2=new list<integer>{8,9,6,2,1};
            set<integer> value1 = new set<integer>{1,2,3,4,5};
            set<integer> value2 = new set<integer>{1,2,3,4,5};
		System.debug(name1.equals(name2));
         System.debug(name1.contains(5));
        system.debug(value1.equals(value2));
        system.debug(value1.contains(2));
    }

}