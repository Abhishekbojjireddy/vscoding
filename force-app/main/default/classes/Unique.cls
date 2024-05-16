public class Unique {
    public void fruits(){
        list<string> lists = new list<string>{'apple','mango','guava','apple','papaya'};
        set<string> value = new set<string>(lists);
        list<string> list3 = new list<string>(value);
        System.debug('Unique fruits are ..'+ list3);
    }

}