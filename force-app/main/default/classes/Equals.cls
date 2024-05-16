public class Equals {
    public void values(){
        list<integer> list1 = new list<integer>{1,2,3,1,4};
        list<integer> list2 = new list<integer>{1,2,3,1,4};
            set<string> value1 = new set<string>{'Hero','Honda','Bullet','Hero','Bajaj'};
                set<string> value2 = new set<string>{'Hero','TVS','Bullet','Honda','insode'};
                    System.debug(list1.equals(list2));
        			System.debug(list1.contains(4));
        			System.debug(value1.equals(value2));
        			System.debug(value1.contains('Bull'));
    }
}